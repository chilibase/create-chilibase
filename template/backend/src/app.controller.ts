import {
    Body,
    Controller,
    Get,
    Post
} from '@nestjs/common';
import {AppService} from './app.service.js';
import {Public} from "@chilibase/backend/public";
import {XLazyDataTableService} from "@chilibase/backend/services";
import {SaveRowParam} from "@chilibase/backend/services";
import {XLibService} from "@chilibase/backend/x-lib.service";
import {FindParam, FindResult} from "@chilibase/backend/serverApi";

@Controller()
export class AppController {
    constructor(private readonly appService: AppService,
                private readonly xLazyDataTableService: XLazyDataTableService,
                private readonly xLibService: XLibService
                ) {
    }

    @Public()
    @Get()
    getHello(): string {
        return this.appService.getHello();
    }

    //@Public()
    @Post('lazyDataTableFindRowsTest')
    async lazyDataTableFindRowsTest(@Body() body: FindParam): Promise<FindResult> {
        const findResult: FindResult = await this.xLazyDataTableService.findRows(body);
        // test - types of attributes, those TypeORM uses by reading object from DB
        for (const row of findResult.rowList) {
            //if (body.entity === "<entity name>") {
                for (const [key, value] of Object.entries(row)) {
                    console.log(`${key}: typeof = ${typeof value}, constructor name = ${value?.constructor?.name}, value = ${value}`);
                }
            //}
        }
        return findResult;
    }

    //@Public()
    @Post('saveRowTest')
    saveRow(@Body() body: SaveRowParam): Promise<any> {
        return this.xLibService.saveRow(body);
    }
}
