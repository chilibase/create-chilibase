import {
    Body,
    Controller,
    Get,
    Post
} from '@nestjs/common';
import {AppService} from './app.service.js';
import {Public} from "@chilibase/backend/auth";
import {LazyDataTableService} from "@chilibase/backend/persistence";
import {SaveRowParam} from "@chilibase/backend/persistence";
import {PersistenceService} from "@chilibase/backend/persistence";
import {FindParam, FindResult} from "@chilibase/backend/common";

@Controller()
export class AppController {
    constructor(private readonly appService: AppService,
                private readonly lazyDataTableService: LazyDataTableService,
                private readonly persistenceService: PersistenceService
    ) {
    }

    @Public()
    @Get()
    getHello(): string {
        return this.appService.getHello();
    }

    //@Public()
    @Post('lazy-data-table-find-rows-test')
    async lazyDataTableFindRowsTest(@Body() body: FindParam): Promise<FindResult> {
        const findResult: FindResult = await this.lazyDataTableService.findRows(body);
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
    @Post('save-row-test')
    saveRow(@Body() body: SaveRowParam): Promise<any> {
        return this.persistenceService.saveRow(body);
    }
}
