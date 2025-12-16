import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module.js';
import {XExceptionFilter} from "@chilibase/backend/x-exception.filter";
import {XUtils} from "@chilibase/backend/XUtils";
import {XEnvVar, XProtocol} from "@chilibase/backend/XEnvVars";
import {readFileSync} from "fs";
import {HttpsOptions} from "@nestjs/common/interfaces/external/https-options.interface.js";
import {DynamicModule, NestApplicationOptions} from "@nestjs/common";
import {ConfigModule} from "@nestjs/config";
import {NestExpressApplication} from "@nestjs/platform-express";

async function bootstrap() {
  // creating configModule must be as first because module loads variables from file .env
  // isGlobal:true enables environment variables in every module
  const configModule: DynamicModule = await ConfigModule.forRoot({isGlobal: true});

  const protocol: string = XUtils.getEnvVarValue(XEnvVar.X_PROTOCOL);
  let options: NestApplicationOptions | undefined = undefined;
  // for backend requests we use the same ssl certificate like for frontend request (first GET request)
  if (protocol === XProtocol.HTTPS) {
    const domain: string = XUtils.getEnvVarValue(XEnvVar.X_DOMAIN);
    const httpsOptions: HttpsOptions = {
      key: readFileSync(`/etc/node/ssl/live/${domain}/privkey.pem`),
      cert: readFileSync(`/etc/node/ssl/live/${domain}/fullchain.pem`)
    };
    options = {httpsOptions: httpsOptions};
  }
  const app = await NestFactory.create<NestExpressApplication>(AppModule.forRoot(configModule), options);
  // cross origin policy - for production applies (HTTPS on):
  // frontend app is requested from "https://<X_DOMAIN>" (default port for https 443 is used)
  // ajax requests use url "https://<X_DOMAIN>/backend/<service>" (go to nginx and then are forwarded to nodejs (docker service backend:8082), also default port 443 is used)
  // -> no need to add header for cross origin, both calls have the same origin "https://<X_DOMAIN>" (http/https, domain, port)

  // for localhost:
  // frontend app request goes to url http://localhost:5173/
  // ajax requests go to url http://localhost:8081/, so the url is different from the origin url (ports are different)
  // -> different url must be allowed by adding header ‘Access-Control-Allow-Origin’ into http response of the frontend app request,
  // otherwise this error occurs: CORS header ‘Access-Control-Allow-Origin’ missing
  if (protocol === XProtocol.HTTP) {
    app.enableCors(); // adds header ‘Access-Control-Allow-Origin’ with value * (disabling CORS security)
    // more secure option:
    //app.enableCors({origin: "http://localhost:8081/"});
  }
  app.useGlobalFilters(new XExceptionFilter());

  const port: string = XUtils.getEnvVarValue(XEnvVar.X_PORT);
  await app.listen(port);
}
bootstrap();
