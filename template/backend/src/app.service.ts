import {Injectable} from '@nestjs/common';
import {UtilsCommon} from "./common/UtilsCommon.js";

@Injectable()
export class AppService {
    constructor(
    ) {
    }

    getHello(): string {
        return '{{projectName}}-backend works! ' + UtilsCommon.test();
    }
}
