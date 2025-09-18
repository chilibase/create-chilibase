import {DynamicModule, Module} from '@nestjs/common';
import {AppController} from './app.controller.js';
import {AppService} from './app.service.js';
import {XLibModule} from '@chilibase/backend/x-lib.module';
import {TypeOrmModule, TypeOrmModuleOptions} from "@nestjs/typeorm";
import {XBrowseMeta} from "@chilibase/backend/x-browse-meta.entity";
import {XColumnMeta} from "@chilibase/backend/x-column-meta.entity";
import {MulterModule} from "@nestjs/platform-express";
import {EntityClassOrSchema} from "@nestjs/typeorm/dist/interfaces/entity-class-or-schema.type.js";
import {AuthModule} from "@chilibase/backend/auth.module";
import {APP_GUARD} from "@nestjs/core";
import {JwtAuthGuard} from "@chilibase/backend/jwt-auth.guard";
import {XAuth, XEnvVar} from "@chilibase/backend/XEnvVars";
import {XUtils} from "@chilibase/backend/XUtils";
import {XAdvancedConsoleLogger} from "@chilibase/backend/XAdvancedConsoleLogger";
import {XFile} from "@chilibase/backend/x-file.entity";
import {XOptimisticLockingSubscriber} from "@chilibase/backend/XOptimisticLockingSubscriber";
import {XEnumEnum} from "@chilibase/backend/x-enum-enum.entity";
import {XEnum} from "@chilibase/backend/x-enum.entity";
import {XParam} from "@chilibase/backend/x-param.entity";
import {PostSubscriber} from "./PostSubscriber.js";
import {XUser} from "@chilibase/backend/x-user.entity";
import {Brand} from "./model/brand.entity.js";
import {Country} from "./model/country.entity.js";
import {Car} from "./model/car.entity.js";
import {Ride} from "./model/ride.entity.js";
import {CarReservation} from "./model/car-reservation.entity.js";
import {Client} from "./model/client.entity.js";
import {ConnectionOptions, parse} from "pg-connection-string";

const entities: EntityClassOrSchema[] = [XBrowseMeta, XColumnMeta, XFile, XUser, XEnumEnum, XEnum, XParam,
  Brand, Country, Car, Ride, Client, CarReservation
];

// since this method uses environment variables, must be called after the initialization of module ConfigModule
function createTypeOrmModuleOptions(entities: EntityClassOrSchema[]): TypeOrmModuleOptions {

  const dbConfig: ConnectionOptions = parse(XUtils.getEnvVarValue(XEnvVar.X_DATABASE_URL));
  const schema: string | undefined = dbConfig['schema'] as string;
  if (!schema) {
    throw `schema is missing in value of env var X_DATABASE_URL: ${XUtils.getEnvVarValue(XEnvVar.X_DATABASE_URL)}`;
  }

  const typeOrmModuleOptions: TypeOrmModuleOptions = {
    type: "postgres",
    host: dbConfig.host,
    port: parseInt(dbConfig.port, 10),
    username: dbConfig.user,
    password: dbConfig.password,
    database: dbConfig.database,
    schema: schema,
    entities: entities,
    subscribers: [XOptimisticLockingSubscriber, PostSubscriber],
    synchronize: false,
    // logging: true was replaced with custom logger - the param of type Buffer is logged smart
    //logging: true,
    logger: new XAdvancedConsoleLogger(XUtils.getEnvVarValueBoolean(XEnvVar.X_LOG_SQL))
  };
  XUtils.setSchema(schema);
  return typeOrmModuleOptions;
}

@Module({})
export class AppModule {
  // we use the method forRoot() + DynamicModule in order to enable using if by adding authentification modules
  static forRoot(configModule: DynamicModule): DynamicModule {

    const appModuleMetadata: DynamicModule = {
      imports: [
        configModule,
        TypeOrmModule.forRoot(createTypeOrmModuleOptions(entities)), // can be moved to XLibModule?
        TypeOrmModule.forFeature(entities), // is needed to enable inject TypeORM entity Repository
        XLibModule.forRoot(),
        MulterModule.register(/*{dest: 'uploads/'}*/) // global settings for processing files, for now we set this in the controller's methods
      ],
      controllers: [AppController],
      providers: [
        AppService
      ],
      exports: [TypeOrmModule], // according to doc, is needed to access DB from all modules, but works also without this export
      module: AppModule
    };
    // add authentification modules if the authentification is not off
    if (XUtils.getEnvVarValue(XEnvVar.X_AUTH) !== XAuth.OFF) {
      appModuleMetadata.imports.push(AuthModule);
      appModuleMetadata.providers.push(
          {
            provide: APP_GUARD,
            useClass: JwtAuthGuard
            //useClass: MsEntraIdAuthGuard // temporary for testing
          }
          //MsEntraIdStrategy // temporary for testing
      );
    }
    return appModuleMetadata;
  }
}
