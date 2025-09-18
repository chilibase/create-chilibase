import {Injectable} from '@nestjs/common';
import {DataSource} from "typeorm";
import {XLibService} from "@chilibase/backend/x-lib.service";
import {XEntityMetadataService, XFileService} from "@chilibase/backend/services";
import {UtilsCommon} from "common/UtilsCommon.js";

@Injectable()
export class AppService {
    constructor(
        private dataSource: DataSource,
        private readonly xLibService: XLibService,
        private readonly xFileService: XFileService,
        private readonly xEntityMetadataService: XEntityMetadataService
    ) {
    }

    getHello(): string {
        return 'car-demo-backend works 888! ' + UtilsCommon.test();
    }
}
