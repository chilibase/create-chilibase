import { beforeEach, describe, expect, it } from "@jest/globals";
import { Test, TestingModule } from '@nestjs/testing';
import { DataSource } from "typeorm";
import { LazyDataTableService, PersistenceService } from "@chilibase/backend/persistence";
import { FileService } from "@chilibase/backend/files";
import { AppController } from './app.controller.js';
import { AppService } from './app.service.js';

describe('AppController', () => {
  let appController: AppController;

  beforeEach(async () => {
    const app: TestingModule = await Test.createTestingModule({
      controllers: [AppController],
      providers: [
        AppService,
        {provide: DataSource, useValue: {}},
        {provide: LazyDataTableService, useValue: {}},
        {provide: PersistenceService, useValue: {}},
        {provide: FileService, useValue: {}},
      ],
    }).compile();

    appController = app.get<AppController>(AppController);
  });

  describe('root', () => {
    it('should return the backend greeting', () => {
      expect(appController.getHello()).toBe('{{projectName}}-backend works!');
    });
  });
});
