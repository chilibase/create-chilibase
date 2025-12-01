INSERT INTO x_user (username, name, enabled, admin, "version") VALUES ('michalrakus@gmail.com', 'Michal Rakus', true, true, 0);

INSERT INTO brand (id, brand) VALUES (16, 'Fiat*');
INSERT INTO brand (id, brand) VALUES (17, 'VW*');
INSERT INTO brand (id, brand) VALUES (18, 'Renault*');
INSERT INTO brand (id, brand) VALUES (19, 'BMW*');
INSERT INTO brand (id, brand) VALUES (20, 'Mercedes*');
INSERT INTO brand (id, brand) VALUES (21, 'Jaguar*');
INSERT INTO brand (id, brand) VALUES (22, 'AHonda*');
INSERT INTO brand (id, brand) VALUES (23, 'Volvo*');
INSERT INTO brand (id, brand) VALUES (24, 'Audi*');

INSERT INTO country (id, code, name) VALUES (1, 'SK', 'Slovakia');
INSERT INTO country (id, code, name) VALUES (2, 'CZ', 'Czech republic');
INSERT INTO country (id, code, name) VALUES (3, 'D', 'Germany');
INSERT INTO country (id, code, name) VALUES (4, 'F', 'France');
INSERT INTO country (id, code, name) VALUES (5, 'GB', 'Great Britain');
INSERT INTO country (id, code, name) VALUES (6, 'PL', 'Poland');
INSERT INTO country (id, code, name) VALUES (7, 'H', 'Hungary');
INSERT INTO country (id, code, name) VALUES (8, 'AT', 'Austria');
INSERT INTO country (id, code, name) VALUES (9, 'CH', 'Switzerland');
INSERT INTO country (id, code, name) VALUES (10, 'I', 'Italy');
INSERT INTO country (id, code, name) VALUES (11, 'RO', 'Romania');
INSERT INTO country (id, code, name) VALUES (12, 'P', 'Portugal');
INSERT INTO country (id, code, name) VALUES (13, 'V', 'Vatican');
INSERT INTO country (id, code, name) VALUES (14, 'TR', 'Turkey');

INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (4, 'ee8a89d8', 'Fiat', '1987', 'Maroon', 16, 100000.00, null, '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (5, '09a06548', 'VW', '1965', 'Red', 19, 123.11, '2015-03-10', '2015-03-22 01:00:00', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (6, '642b3edc', 'Renault', '1968', null, 18, 123.66, '2015-04-20', '2015-05-20 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (7, 'eae758fa', 'BMW', '1999', 'Yellow', 19, 444.77, '2015-05-23', '2015-06-22 20:40:45', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (8, '19ec7580', 'Renault', '1981', 'Black', 17, 2665768.88, null, '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (9, '39980f30', 'VW', '1986', 'Red', 17, 3.00, '2015-02-15', null, 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (10, 'ec9cc4e4', 'Fiat', '1981', 'Brown', 16, 3332211.10, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (11, '05c47246', 'Mercedes', '2007', 'Blue', 20, null, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (12, 'a9cb87aa', 'Fiat', '1962', 'Green', 16, 3998653.32, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (13, '1241c403', 'Jaguar', '1964', 'Yellow', 21, 4331874.43, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (14, '13f853a7', 'Honda', '2006', 'White', 22, 4665095.54, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (15, '447d9ed9', 'JaguarWW', '2005', 'Orange', 21, 4998316.65, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (16, '78fa052e', 'Jaguar', '1990', 'Orange', 21, 5331537.76, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (17, '23ba7e86', 'Honda', '1975', 'Yellow', 22, 5664758.87, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (18, '9bacb32d', 'Volvo', '1968', 'Brown', 23, 5997979.98, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (19, '8b77772a', 'Mercedes', '1991', 'Blue', 20, 6331201.09, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (20, '62094d91', 'Mercedes', '1962', 'Green', 20, 6664422.20, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (21, 'dc7003f4', 'Jaguar', '1976', 'Maroon', 21, 6997643.31, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (22, '08607aef', 'Mercedes', '1987', 'Maroon', 20, 7330864.42, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (23, '45eee33a', 'BMW', '1980', 'Silver', 19, 7664085.53, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (24, 'f199ec5c', 'Jaguar', '1961', 'Green', 21, 7997306.64, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (25, 'b34cd9e8', 'VW', '1993', 'Silver', 17, 8330527.75, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (26, '5dd8766e', 'Honda', '1998', 'Orange', 22, 8663748.86, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (27, 'df50ce22', 'Mercedes', '1964', 'White', 20, 8996969.97, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (28, '54b20b02', 'Renault', '1967', 'Brownddd', 18, 9330191.08, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (29, 'ecb3e9e1', 'Honda', '2003', 'Silver', 22, 9663412.19, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (30, '750d731d', 'Renault', '1962', 'Blue', 18, 9996633.30, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (31, 'bec38cf4', 'Renault', '1960', 'Blue', 18, 10329854.41, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (32, 'b7752002', 'Jaguar', '1964', 'Black', 21, 10663075.52, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (33, '315fe9c4', 'Fiat', '1985', 'Red', 16, 10996296.63, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (34, 'be65f786', 'Mercedes', '1963', 'Orange', 20, 11329517.74, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (35, '786a7d57', 'Mercedes', '2003', 'Black', 20, 11662738.85, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (36, 'a3aee412', 'Volvo', '2003', 'Maroon', 23, 11995959.96, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (37, '749e6bdd', 'Audi', '1995', 'Brown', 24, 12329181.07, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (38, '8cc40f50', 'BMW', '1961', 'Brown', 19, 12662402.18, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (39, '5de63a6f', 'Renault', '1961', 'White', 18, 12995623.29, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (40, 'bdae1e20', 'Jaguar', '2008', 'Blue', 21, 13328844.40, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (41, '290cc891', 'VW', '1992', 'Brown', 17, 13662065.51, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (42, '007e1014', 'Renault', '1966', 'Black', 18, 13995286.62, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (43, '429c502d', 'Honda', '1995', 'Silver', 22, 14328507.73, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (44, 'c336f9b6', 'Honda', '1991', 'Maroon', 22, 14661728.84, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (45, '2ddaf8d5', 'Volvo', '1982', 'Blue', 23, 14994949.95, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (46, 'c09c4b15', 'VW', '1991', 'Blue', 17, 15328171.06, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (47, '4609844c', 'Honda', '1972', 'Black', 22, 15661392.17, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (48, '8db7df27', 'Audi', '1982', 'Blue', 24, 15994613.28, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (49, 'dcc58086', 'Audi', '2001', 'Brown', 24, 16327834.39, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (50, 'a6783ba3', 'Honda', '2004', 'Yellow', 22, 16661055.50, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (51, 'f1274cbe', 'Fiat', '1995', 'Silver', 16, 16994276.61, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (52, '0858a5d4', 'Renault', '1992', 'Green', 18, 17327497.72, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (53, 'c2d42bb6', 'Volvo', '1972', 'Green', 23, 17660718.83, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (54, '5535cd5a', 'Renault', '1980', 'Silver', 18, 17993939.94, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (55, 'e3313e1e', 'Honda', '2009', 'Orange', 22, 18327161.05, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (56, 'f4dea691', 'BMW', '2002', 'Brown', 19, 18660382.16, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (57, 'ec15a449', 'Honda', '1990', 'Yellow', 22, 18993603.27, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (58, '80b74a0e', 'BMW', '1979', 'Yellow', 19, 19326824.38, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (59, '513fe268', 'Honda', '1987', 'White', 22, 19660045.49, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (60, '6934c8f8', 'Renault', '1989', 'Red', 18, 19993266.60, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (61, '6a4c3ad0', 'Honda', '1994', 'Yellow', 22, 20326487.71, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (62, 'e0acd7b5', 'Mercedes', '1965', 'Red', 20, 20659708.82, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (63, '2f31ac35', 'Jaguar', '1991', 'Brown', 21, 20992929.93, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (64, '36104237', 'VW', '1992', 'Silver', 17, 21326151.04, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (65, '5be099b4', 'BMW', '1991', 'Yellow', 19, 21659372.15, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (66, 'e2f55f31', 'BMW', '1967', 'Silver', 19, 21992593.26, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (67, '11274338', 'Mercedes', '1999', 'Blue', 20, 22325814.37, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (68, 'f710e177', 'Fiat', '2007', 'White', 16, 22659035.48, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (69, 'd8375b4b', 'Volvo', '1977', 'Blue', 23, 22992256.59, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (70, 'a27ddfe3', 'VW', '1978', 'Blue', 17, 23325477.70, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (71, 'd8848162', 'BMW', '2008', 'Black', 19, 23658698.81, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (72, 'e9cb3677', 'BMW', '2004', 'Black', 19, 23991919.92, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (73, 'c9dc321d', 'BMW', '1989', 'Red', 19, 24325141.03, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (74, '4c75c610', 'Volvo', '1972', 'Yellow', 23, 24658362.14, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (75, '1c90c93d', 'Audi', '2004', 'Silver', 24, 24991583.25, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (76, '5ccc9f7f', 'Jaguar', '1961', 'Red', 21, 25324804.36, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (77, '94498bc0', 'Fiat', '1965', 'Silver', 16, 25658025.47, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (78, '1d1a21f3', 'Honda', '1985', 'Red', 22, 25991246.58, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (79, 'ea463ad3', 'BMW', '1992', 'Blue', 19, 26324467.69, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (80, 'af3b744b', 'Audi', '1998', 'Green', 24, 26657688.80, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (81, '6ef9dbf3', 'Fiat', '1962', 'Orange', 16, 26990909.91, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (82, 'c24bdeb2', 'Honda', '1991', 'Red', 22, 27324131.02, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (83, 'bebd5a96', 'Jaguar', '1989', 'Black', 21, 27657352.13, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (84, 'eede8f1e', 'Jaguar', '1977', 'Brown', 21, 27990573.24, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (85, '9d11b02d', 'BMW', '1971', 'Yellow', 19, 28323794.35, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (86, '1d4223a1', 'Mercedes', '1975', 'Brown', 20, 28657015.46, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (87, '4d118346', 'Mercedes', '1985', 'Brown', 20, 28990236.57, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (88, 'cce76f06', 'Honda', '1980', 'Maroon', 22, 29323457.68, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (89, '2af398ed', 'Renault', '1970', 'Yellow', 18, 29656678.79, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (90, 'c0ddab4c', 'Audi', '2003', 'Silver', 24, 29989899.90, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (91, 'a27ea639', 'Mercedes', '1968', 'Yellow', 20, 30323121.01, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (92, 'e6441f09', 'Jaguar', '1982', 'Green', 21, 30656342.12, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (93, 'c4c59d58', 'Fiat', '2005', 'Orange', 16, 30989563.23, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (94, '9d31fc0a', 'Mercedes', '1974', 'Brown', 20, 31322784.34, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (95, 'b0ffce2d', 'Volvo', '1966', 'Yellow', 23, 31656005.45, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (96, 'ca7e52e3', 'Honda', '1971', 'Orange', 22, 31989226.56, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (97, 'ba045e1e', 'Jaguar', '1968', 'White', 21, 32322447.67, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (98, 'fd579989', 'BMW', '1975', 'Black', 19, 32655668.78, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (99, '084850a3', 'Audi', '1990', 'Red', 24, 32988889.89, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (100, '56b36f0e', 'Mercedes', '2008', 'Orange', 20, 33322111.00, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (101, 'e39245ab', 'BMW', '1969', 'White', 19, 33655332.11, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (102, '41ab14a1', 'Jaguar', '1987', 'Silver', 21, 33988553.22, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (103, '7ec4c1c0', 'Jaguar', '1980', 'Black', 21, 34321774.33, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (104, 'bf1c14aa', 'Audi', '1984', 'Yellow', 24, 34654995.44, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (105, 'adeff567', 'Volvo', '2000', 'Brown', 23, 34988216.55, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (106, '61e5e07d', 'Mercedes', '1978', 'Orange', 20, 35321437.66, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (107, '7555e46a', 'Audi', '1966', 'Blue', 24, 35654658.77, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (108, '95babbd1', 'Honda', '1998', 'Black', 22, 35987879.88, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (109, 'ff6885f7', 'Audi', '1996', 'White', 24, 36321100.99, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (110, '5b5a0031', 'Audi', '1968', 'Brown', 24, 36654322.10, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (111, 'de63c575', 'Mercedes', '1989', 'Yellow', 20, 36987543.21, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (112, 'd2d2e8d4', 'Fiat', '1985', 'Green', 16, 37320764.32, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (113, 'edcab1f7', 'VW', '1979', 'Silver', 17, 37653985.43, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (114, '6bf3bfbc', 'Audi', '1968', 'Green', 24, 37987206.54, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (115, 'de2a7b08', 'Honda', '2007', 'Blue', 22, 38320427.65, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (116, '717b8282', 'BMW', '1999', 'Yellow', 19, 38653648.76, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (117, '790e7f03', 'Volvo', '1983', 'White', 23, 38986869.87, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (118, '03234e20', 'Mercedes', '1962', 'Orange', 20, 39320090.98, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (119, '8eefb223', 'Jaguar', '1983', 'Silver', 21, 39653312.09, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (120, '5e524acd', 'Jaguar', '1994', 'Maroon', 21, 39986533.20, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (121, '26b1aff9', 'BMW', '1965', 'Black', 19, 40319754.31, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (122, 'c007a623', 'Renault', '1968', 'Maroon', 18, 40652975.42, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (123, '76733e83', 'Honda', '1991', 'White', 22, 40986196.53, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (124, 'ef3c14f7', 'Fiat', '1987', 'Brown', 16, 41319417.64, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (125, '2b4ca005', 'Honda', '2009', 'Silver', 22, 41652638.75, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (126, '8191dbb6', 'BMW', '2005', 'Black', 19, 41985859.86, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (127, 'f6b3bd94', 'Renault', '1967', 'Yellow', 18, 42319080.97, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (128, 'abb19f41', 'Volvo', '1975', 'Blue', 23, 42652302.08, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (129, '7470c95f', 'Renault', '1996', 'Black', 18, 42985523.19, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (130, '5f1b57a3', 'Volvo', '1986', 'Red', 23, 43318744.30, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (131, 'ed47a74b', 'BMW', '2007', 'Brown', 19, 43651965.41, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (132, 'ed6030f7', 'Honda', '1990', 'Red', 22, 43985186.52, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (133, '944c71dc', 'Mercedes', '1991', 'Silver', 20, 44318407.63, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (134, 'c7d838a5', 'VW', '1980', 'Yellow', 17, 44651628.74, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (135, '712db898', 'Audi', '1965', 'Red', 24, 44984849.85, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (136, '99acc06f', 'BMW', '1995', 'Silver', 19, 45318070.96, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (137, '6c68ffa5', 'Jaguar', '1999', 'Green', 21, 45651292.07, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (138, 'dca5f739', 'Jaguar', '2002', 'Blue', 21, 45984513.18, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (139, '16da6dcb', 'Jaguar', '2006', 'Blue', 21, 46317734.29, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (140, 'fe9ca30c', 'Fiat', '1967', 'Maroon', 16, 46650955.40, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (141, 'f0193ac7', 'Mercedes', '1979', 'Orange', 20, 46984176.51, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (142, '63893922', 'Renault', '1991', 'Brown', 18, 47317397.62, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (143, '145f5551', 'Jaguar', '1993', 'Brown', 21, 47650618.73, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (144, '24714317', 'Mercedes', '1971', 'White', 20, 47983839.84, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (145, '1a9c6e4e', 'Jaguar', '1997', 'Yellow', 21, 48317060.95, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (146, 'c9b7ef72', 'Fiat', '1992', 'Maroon', 16, 48650282.06, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (147, 'b1b6c375', 'Fiat', '1963', 'Silver', 16, 48983503.17, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (148, '7254a003', 'Audi', '1982', 'White', 24, 49316724.28, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (149, '6f0de80f', 'Renault', '1987', 'Blue', 18, 49649945.39, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (150, 'e3048f87', 'Fiat', '1989', 'Blue', 16, 49983166.50, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (151, '361e435a', 'BMW', '1973', 'Green', 19, 50316387.61, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (152, '59e6a9f3', 'BMW', '1964', 'Maroon', 19, 50649608.72, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (153, 'b791fe05', 'Mercedes', '1993', 'Yellow', 20, 50982829.83, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (154, '68b0dd88', 'BMW', '2002', 'Green', 19, 51316050.94, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (155, '5b439d1f', 'BMW', '1964', 'Maroon', 19, 51649272.05, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (156, '9a7ac9e3', 'Renault', '1988', 'White', 18, 51982493.16, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (157, 'd214751d', 'Honda', '1997', 'White', 22, 52315714.27, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (158, '72229390', 'Mercedes', '1996', 'White', 20, 52648935.38, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (159, 'b5fbbeee', 'VW', '1999', 'Brown', 17, 52982156.49, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (160, '8972b543', 'Audi', '1973', 'Black', 24, 53315377.60, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (161, '7bc21024', 'Renault', '1980', 'Yellow', 18, 53648598.71, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (162, '5d661964', 'Renault', '2005', 'Silver', 18, 53981819.82, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (163, 'a6ccc2d8', 'Honda', '1994', 'Blue', 22, 54315040.93, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (164, 'c1f15f28', 'Volvo', '1999', 'Black', 23, 54648262.04, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (165, '161512ce', 'VW', '1962', 'Black', 17, 54981483.15, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (166, '16e0b448', 'Fiat', '1990', 'Green', 16, 55314704.26, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (167, 'f0734442', 'Audi', '1966', 'Orange', 24, 55647925.37, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (168, '5e233279', 'Audi', '1964', 'Green', 24, 55981146.48, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (169, '1de720b2', 'Renault', '2003', 'Orange', 18, 56314367.59, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (170, '46efaeb2', 'Jaguar', '1993', 'Green', 21, 56647588.70, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (171, '88f2354c', 'Jaguar', '2006', 'Black', 21, 56980809.81, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (172, '04819fd6', 'Mercedes', '1983', 'White', 20, 57314030.92, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (173, '401771c8', 'Volvo', '1962', 'Silver', 23, 57647252.03, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (174, '8600877b', 'VW', '1996', 'Black', 17, 57980473.14, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (175, '946bd645', 'Honda', '1991', 'Red', 22, 58313694.25, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (176, 'ad078e69', 'Fiat', '1991', 'Brown', 16, 58646915.36, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (177, '93138901', 'Mercedes', '1961', 'Silver', 20, 58980136.47, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (178, 'f365dfa4', 'Mercedes', '1980', 'Black', 20, 59313357.58, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (179, '22647161', 'Audi', '2007', 'Blue', 24, 59646578.69, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (180, '92d1ee27', 'Jaguar', '1977', 'Silver', 21, 59979799.80, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (181, '137c2b3a', 'Honda', '1970', 'Blue', 22, 60313020.91, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (182, 'b05b5235', 'BMW', '1967', 'Yellow', 19, 60646242.02, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (183, '1afbf400', 'Audi', '1966', 'Maroon', 24, 60979463.13, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (184, '8530ae50', 'BMW', '1979', 'Brown', 19, 61312684.24, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (185, 'c9a487a3', 'Volvo', '1981', 'Silver', 23, 61645905.35, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (186, '5cb0bed6', 'Honda', '1962', 'Orange', 22, 61979126.46, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (187, 'cf7d0b45', 'Fiat', '1997', 'Green', 16, 62312347.57, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (188, 'bc762dd0', 'Jaguar', '2000', 'Yellow', 21, 62645568.68, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (189, '97207a61', 'VW', '1976', 'Blue', 17, 62978789.79, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (190, '17680899', 'Mercedes', '2006', 'Silver', 20, 63312010.90, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (191, 'd8a98d30', 'Renault', '1990', 'Green', 18, 63645232.01, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (192, 'ff01ead0', 'Audi', '1962', 'Blue', 24, 63978453.12, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (193, '38b30a61', 'Fiat', '1977', 'White', 16, 64311674.23, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (194, '9a6793c1', 'Renault', '1983', 'Red', 18, 64644895.34, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (195, 'b1f27273', 'Mercedes', '2007', 'Brown', 20, 64978116.45, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (196, '0fa8c1aa', 'Jaguar', '1982', 'Blue', 21, 65311337.56, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (197, 'a7520f42', 'Volvo', '2008', 'Maroon', 23, 65644558.67, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (198, '494eba81', 'BMW', '1966', 'Silver', 19, 65977779.78, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (199, '683535b8', 'Renault', '2003', 'White', 18, 66311000.89, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (200, '62e5d216', 'Audi', '1962', 'Orange', 24, 66644222.00, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (201, '16a65b56', 'Jaguar', '2009', 'Blue', 21, 66977443.11, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (202, 'd00250a3', 'BMW', '1978', 'Blue', 19, 67310664.22, '2015-02-15', '2015-04-16 15:40:23', 0);
INSERT INTO car (id, vin, brand_string, year, color, brand_id, price, car_date, car_datetime, version) VALUES (203, 'f3c3909d', 'Renault', '2003', 'Green', 18, 67643885.33, '2015-02-15', '2015-04-16 15:40:23', 0);

INSERT INTO ride (id, km, car_id, country_id, city_from, city_to, fuel_price, ride_date, ride_datetime) VALUES (1, 500, 4, 1, 'Bratislava', 'Kosice', 3.11, '2015-03-15', '2015-05-16 03:03:00');
INSERT INTO ride (id, km, car_id, country_id, city_from, city_to, fuel_price, ride_date, ride_datetime) VALUES (2, 400, 4, 8, 'Vienna', 'Linz', 6.22, '2015-03-15', '2015-05-16 03:03:00');
INSERT INTO ride (id, km, car_id, country_id, city_from, city_to, fuel_price, ride_date, ride_datetime) VALUES (3, 200, 4, 2, 'Praha', 'Brno', 9.33, '2015-03-25', '2015-05-16 03:03:00');
INSERT INTO ride (id, km, car_id, country_id, city_from, city_to, fuel_price, ride_date, ride_datetime) VALUES (4, 100, 4, 1, 'Sered', 'Trnava', 12.44, '2015-03-15', '2015-05-16 03:03:00');
INSERT INTO ride (id, km, car_id, country_id, city_from, city_to, fuel_price, ride_date, ride_datetime) VALUES (9, 80, 4, 1, 'Michalovce', 'Kosice', 27.99, '2015-03-15', null);
INSERT INTO ride (id, km, car_id, country_id, city_from, city_to, fuel_price, ride_date, ride_datetime) VALUES (101, 1000, 5, 2, 'Paris', 'London', 1.01, '2014-03-10', '2015-05-16 03:03:00');
INSERT INTO ride (id, km, car_id, country_id, city_from, city_to, fuel_price, ride_date, ride_datetime) VALUES (102, 600, 5, 3, 'Madrid', 'Barcelona', null, '2015-03-19', '2015-05-16 03:03:03');
INSERT INTO ride (id, km, car_id, country_id, city_from, city_to, fuel_price, ride_date, ride_datetime) VALUES (105, null, 5, 1, 'Roma', 'Napoli', 3.03, '2015-03-15', '2015-05-16 03:03:00');
INSERT INTO ride (id, km, car_id, country_id, city_from, city_to, fuel_price, ride_date, ride_datetime) VALUES (106, 1000, 5, 5, 'Kyjev', 'Moskau', 4.04, '2015-03-15', '2015-05-16 03:03:00');

INSERT INTO client (name, birth_date, contact, address, version) VALUES
('Raymond Brown', '1990-10-18', '555-6509', '72052 King Coves, Marshfurt, AR 64312' ,0),
('Barbara Mack', '1934-09-25', '555-5840', '8834 William Trafficway, Port Kimberlyland, IN 49638' ,0),
('Martin Hoffman', '1998-04-27', '555-2735', '71498 Mark Shore, Port Reginald, ID 29836' ,0),
('Kristine Phillips', '1999-08-17', '555-2503', '09992 Zamora Springs, North Katrinachester, ID 04085' ,0),
('John Jackson', '1981-06-19', '555-5980', '163 Frost Plaza, Williamsland, IN 89154' ,0),
('Tracy Cox', '1961-12-11', '555-7107', '529 Keller Brook Apt. 381, North Charleschester, NH 39825' ,0),
('Christopher Wilson', '1992-08-09', '555-7533', '402 Martin Highway Apt. 357, Lake Christopherborough, TX 57119' ,0),
('Raymond Brown', '1998-01-20', '555-2772', '99162 Jason Gateway, Juanton, NE 85539' ,0),
('Erika Butler', '1935-12-26', '555-9815', '7842 Jill Lodge Apt. 068, Quinnbury, NM 38256' ,0),
('Gina Hernandez', '1940-01-31', '555-2372', '7175 Diana River, Justinbury, RI 26021' ,0),
('Gregory Smith', '2003-05-04', '555-4019', '23709 Rose Unions, Scottmouth, KY 91965' ,0),
('Tracey Christensen', '2004-06-01', '555-9353', '29793 Christina Row Apt. 207, Jonesmouth, OH 97854' ,0),
('Patricia Lee', '1981-11-07', '555-6803', '6545 Rollins Island, North James, VA 49965' ,0),
('Brian Johnson', '1976-03-12', '555-6020', '8894 Holly Road Suite 136, South Lauren, MO 03494' ,0),
('Tommy Pena', '1957-08-31', '555-8671', '0818 Wood Expressway Suite 825, East Michelleburgh, PA 01867' ,0),
('Rodney Freeman', '1960-11-13', '555-7009', '850 Adam Terrace Suite 898, New Jamesville, SD 18701' ,0),
('John Woods', '2000-04-06', '555-8922', '8130 John Terrace Apt. 757, Irwinside, FL 81189' ,0),
('Vanessa Olsen', '1997-07-10', '555-1612', 'USNS Johnston, FPO AP 61370' ,0),
('Miguel Delgado', '1972-03-10', '555-2484', '0398 Dustin Manor Suite 255, Lake Kristen, PA 80688' ,0),
('Jennifer Nguyen', '1941-04-01', '555-5460', '51895 Sanders Forest Apt. 433, Warrenside, ID 75104' ,0),
('Michelle Perry', '1979-08-16', '555-1281', '603 Morgan Park Suite 371, Kevinfurt, MT 78974' ,0),
('April Gay', '1976-03-25', '555-7494', '111 Salas Crest Suite 989, Debraville, OR 74115' ,0),
('Kevin Griffith', '1980-05-21', '555-9322', '6929 Coleman Forge, New Kellytown, AK 60841' ,0),
('William Ramsey', '1981-03-03', '555-5739', '42629 Moore Ford, Amandaton, VT 00691' ,0),
('Emily Henry', '1997-10-31', '555-9359', '46110 Hughes Parkway Suite 942, Shannonfort, SD 46046' ,0),
('Kevin Mcfarland', '1951-03-11', '555-2501', '262 Mccarty Gardens Suite 951, West Darryl, WV 77088' ,0),
('Keith Taylor', '1952-06-15', '555-7112', '61121 Stephanie Squares, East Jaredport, AL 63863' ,0),
('Thomas Wade', '1959-07-12', '555-7861', '9896 Barton Harbors Apt. 935, West Melanie, TX 48173' ,0),
('Michael Butler', '2004-12-28', '555-1895', '158 Lopez Plaza Apt. 402, Port Tonyamouth, IL 25723' ,0),
('Angel Greene', '2007-01-28', '555-4226', '881 Kelly Ridges, South Adrianburgh, WA 18839' ,0),
('David Robertson', '1967-06-08', '555-2230', '0956 Larry Isle Apt. 778, New Austin, HI 09107' ,0),
('Tamara Oliver', '1937-05-23', '555-4266', '64448 Julie Plaza Suite 658, Briantown, AK 57169' ,0),
('Joshua Robertson', '2002-12-14', '555-7748', '183 Baker Harbors, East Nicole, OR 69805' ,0),
('Joseph Khan', '1992-04-13', '555-1968', '5485 Rodgers Plaza, Jacobville, TN 21212' ,0),
('Mary Forbes', '1969-09-09', '555-3832', '67115 James Via, Robertton, MA 82660' ,0),
('Leslie Jennings', '1994-06-07', '555-2129', '86971 Emily Row, North Joshua, AR 56651' ,0),
('Scott Buchanan', '1964-11-17', '555-5941', '83944 Martin Knolls, Juliaside, ME 40725' ,0),
('Craig Reeves', '1945-12-05', '555-1611', '7046 Garcia Glens, West Sandy, MA 30510' ,0),
('Audrey Long', '1978-02-07', '555-8232', '8246 Joseph Trace, Dianamouth, FL 87581' ,0),
('Randy Alvarez', '1975-02-01', '555-8339', '1720 Carl Streets Apt. 085, Williamsburgh, AL 16676' ,0),
('Erica Cruz', '1937-06-16', '555-7068', '98876 Derek Run, East Williamfurt, WA 39524' ,0),
('Jonathan Smith', '1958-05-19', '555-2919', '758 Morris Brooks Suite 762, East Margaret, GA 37832' ,0),
('Roger Coleman', '2006-09-28', '555-5687', '25493 Scott Locks Suite 224, West John, UT 60502' ,0),
('Matthew Miller', '1978-02-18', '555-2437', '33591 Smith Plains Apt. 709, Sandraton, UT 01540' ,0),
('Justin Jones', '1955-09-10', '555-6620', '124 Hunter Grove, Johnhaven, MO 54165' ,0),
('Tony Small', '2006-03-10', '555-5617', '196 Lawson Ranch Apt. 971, Heatherburgh, MI 62363' ,0),
('Ashley Smith', '1961-10-01', '555-3288', '60142 Jason Via, Youngland, IL 62618' ,0),
('Eric Rojas', '1991-12-29', '555-9418', '31349 Laura Lights Suite 296, East Frederickmouth, MN 10260' ,0),
('Sharon Sweeney', '1964-01-08', '555-6779', '2637 Mercado Bridge, West Austin, UT 49370' ,0),
('Jason Golden', '1993-05-05', '555-9737', '353 Woodward Manors, West Lindseychester, SC 92005' ,0),
('Donna Chavez', '1981-07-17', '555-6461', '9034 Michaela Turnpike Suite 174, North Dawn, MT 28230' ,0),
('John Henderson', '1956-01-15', '555-8431', '63246 Kyle Burg, East Christine, DC 02245' ,0),
('Alex Gomez', '1969-05-07', '555-3561', '862 Shannon Center, Lake Karen, OH 49432' ,0),
('Robert Davis', '1976-06-11', '555-5217', '99433 Brown Via Suite 691, Salasside, OH 27532' ,0),
('Jaime Brooks', '1943-05-27', '555-6653', '7563 Becker Burgs Apt. 956, South Jennifer, MN 33849' ,0),
('Cheryl Branch', '1967-11-21', '555-1993', '5612 James Roads Apt. 505, Brownmouth, NE 64803' ,0),
('Stephanie Torres', '1957-11-09', '555-6243', '30223 Tiffany Streets Apt. 891, Port Cherylfurt, SC 27973' ,0),
('Julia Payne MD', '2003-12-29', '555-9448', '5601 John Glen, West Joshua, KY 33326' ,0),
('Lauren Young', '1955-07-28', '555-3471', '76047 Lori Valleys, Dawnfurt, WV 82886' ,0),
('Tammy Jackson', '1981-06-15', '555-8169', '48086 Morrison Summit, West Jaredtown, VT 74563' ,0),
('Kristi Mason', '2001-08-01', '555-5485', '37621 Donald Lodge Apt. 283, Coffeyport, NV 61499' ,0),
('Jessica Solomon', '1951-02-26', '555-6069', '83907 Julie Crossing Apt. 528, Johnside, KS 46785' ,0),
('Daniel Hughes', '1935-07-14', '555-9336', 'USNV Butler, FPO AP 72600' ,0),
('Kirsten Ryan', '1992-11-30', '555-5479', '498 Alexis Walk, East Monicaland, KY 85958' ,0),
('Jacob Anderson', '1984-12-24', '555-3942', '453 Allen Shoals Suite 358, Brianside, AZ 56672' ,0),
('Jeffrey Davis', '2002-11-03', '555-3956', '25182 Lisa Parkway, New Paul, DC 15074' ,0),
('Brent Lowe', '1952-12-17', '555-3822', '4958 Stewart Port, Francoshire, DC 46822' ,0),
('Zachary Cook', '1993-06-18', '555-2577', '43150 Tony Brooks, South Lauren, KS 30355' ,0),
('Mr. William Hunter', '1974-12-01', '555-3195', '127 Burnett Bridge, Lake Alexisview, WV 33187' ,0),
('Donald Duncan', '1980-01-04', '555-8162', '487 Michael Motorway, South Ruben, GA 62463' ,0),
('Alex Ramirez', '1971-10-15', '555-7713', '2830 Jeffrey Dam, Skinnerview, OK 14473' ,0),
('Isabella Brown', '1961-05-07', '555-2554', '49927 Allison Gardens Suite 892, East Trevor, AL 84622' ,0),
('David Hill', '1944-01-28', '555-2656', '51219 Christopher Court, North Shawn, MA 54059' ,0),
('Charles Johnson', '1997-07-02', '555-7407', '03347 Keith Forges Apt. 774, Georgebury, OK 68465' ,0),
('Christopher Foster', '1964-11-02', '555-2707', '680 Robin Islands, Smithview, SC 66632' ,0),
('Jay Pena', '1975-02-04', '555-7820', '1916 Griffin Parks, Taylorhaven, TX 92432' ,0),
('Cindy Gutierrez', '1977-10-12', '555-2021', 'USS Branch, FPO AP 47810' ,0),
('Alexander Reyes', '1947-07-25', '555-4297', '060 Cody Lane Apt. 893, East Robertton, MI 13203' ,0),
('Felicia Frey', '1950-02-06', '555-5629', '011 Vanessa Keys, Lake Mary, ND 53644' ,0),
('Dr. Susan Lee MD', '1951-07-04', '555-3334', '510 Chavez Knolls, Danielberg, NJ 89461' ,0),
('Amanda Gardner', '1973-07-07', '555-9467', '267 Rowe Via, Wrightburgh, MD 56764' ,0),
('Kayla Mann', '1976-02-05', '555-2056', '5052 Lori Rapids, Port Brianshire, OR 86927' ,0),
('Marcus Matthews', '1941-02-13', '555-9312', '2009 Megan Port Apt. 164, Lake Benjamin, KS 86851' ,0),
('Victoria Wheeler DDS', '1996-03-02', '555-7397', '01197 Jeffrey Motorway, Ruizfurt, NJ 49305' ,0),
('Denise Rangel', '1985-09-06', '555-8166', '8372 Andrea Well, Lisatown, CA 04398' ,0),
('Joanna Patterson', '1981-03-05', '555-2983', '7246 Ward View, Port Barbara, NJ 36042' ,0),
('Amanda Rojas', '1961-06-24', '555-6747', '107 Brandy Mountain Suite 978, Burnsstad, WI 65201' ,0),
('Rachel Holt', '1981-11-26', '555-1813', '0318 Arroyo Alley, New William, NM 04736' ,0),
('Mark Williams', '1944-07-27', '555-5151', '53273 Harrison Vista, Port Evan, MD 78954' ,0),
('Jessica Lane DVM', '1999-10-15', '555-1944', '5472 Gary Creek, South Patriciamouth, CA 91120' ,0),
('Matthew Perez', '1958-06-05', '555-3457', '8484 Phillips Ports Suite 030, Port Timothyborough, DE 69221' ,0),
('Nicholas Gutierrez', '1957-12-29', '555-3984', '6956 Reyes Highway Suite 992, Port Aaron, FL 40224' ,0),
('Brian Jackson', '1997-12-31', '555-1401', '836 Nicholas Row Suite 469, New Benjamin, VA 09772' ,0),
('Jessica Olsen', '1964-07-13', '555-3906', '52257 Johnson Corners, Serranomouth, MS 49958' ,0),
('Michelle Marshall', '1994-09-11', '555-7071', '9308 Kelly Forges, Garzamouth, CA 11632' ,0),
('James Larsen', '1991-04-27', '555-4480', '9341 Klein Oval, Hannahborough, NM 86157' ,0),
('Cathy Roberts', '1978-04-08', '555-5804', '1708 Zachary Track, Buckleytown, NE 39593' ,0),
('Charles Cabrera', '1936-08-14', '555-6084', '11155 Victor Fort Suite 276, Michaelhaven, LA 61573' ,0),
('Monica Copeland', '1943-09-30', '555-3519', '168 Armstrong Groves, Lake Madison, IN 69570' ,0),
('Tiffany West', '1968-10-06', '555-6446', '66079 Douglas Mountain, Christinamouth, IL 83244' ,0),
('Cody Campbell', '1935-03-18', '555-8367', '214 Vincent Station, Kaneville, SD 08026' ,0),
('Lindsay Hansen', '1997-04-20', '555-6247', '058 Tara Branch, West Matthewtown, CT 58467' ,0),
('Brian Melton', '1966-03-16', '555-9775', '51129 Theresa Lake Apt. 359, Kellytown, TN 97689' ,0),
('Anna Mercado', '1978-02-07', '555-8765', '87129 Arnold Drive Apt. 879, Johnfurt, LA 15509' ,0),
('Zachary Jordan', '1956-03-02', '555-4769', 'USNV Stone, FPO AE 00860' ,0),
('Robert Thomas', '1998-06-29', '555-1943', '7193 Braun Mall Apt. 851, West Randallton, NM 40771' ,0),
('Tiffany Cox', '1959-10-30', '555-5879', '19896 Adams Hollow, Lake Kevinborough, AK 12250' ,0),
('Glenn Moore', '1967-06-01', '555-9875', '120 Richard Stravenue, West Erin, AR 58701' ,0),
('Jennifer Huffman', '2001-01-31', '555-1635', '809 Bennett Turnpike Suite 836, Vanessaburgh, NC 32765' ,0),
('Michael Stephenson', '1937-01-14', '555-1563', '5496 Christopher Island Suite 669, Merrittshire, ME 54165' ,0),
('Marvin Flores', '1951-08-05', '555-3830', '6904 Leslie Trafficway Suite 227, Alfredport, IN 45445' ,0),
('Bruce Mason', '1981-06-08', '555-8716', '46594 Michelle Stream, West Jennyside, VT 13644' ,0),
('Tanya Juarez', '1971-11-15', '555-5481', 'PSC 5418, Box 4574, APO AE 85197' ,0),
('Angela Harris', '1945-10-29', '555-2140', '3976 Miller Shore Apt. 230, Port Michelle, OR 47829' ,0),
('Erin Petersen', '1952-12-12', '555-4440', '760 Hannah Island, Lake Jamesfort, RI 39756' ,0),
('Pamela Sanders', '1985-08-02', '555-8511', '9679 Jared Dale, Lake Sharon, PA 56388' ,0),
('Michael Nelson', '1950-01-29', '555-5322', '3883 Thomas Oval Apt. 752, North Stanley, ID 50776' ,0),
('Mitchell Schmitt', '1991-09-14', '555-5711', '45864 Robinson Park, Samanthaberg, OK 55399' ,0),
('Melanie Schroeder', '1947-07-05', '555-1223', 'Unit 8391 Box 3416, DPO AP 33394' ,0),
('Melissa Bryant', '1991-05-24', '555-3645', '2636 Helen Mills, Lake Jamesborough, SC 69873' ,0),
('Julie Brown', '1975-03-16', '555-3578', '45020 Stephanie Rest, Larsonland, CT 49487' ,0),
('Cody Ramirez', '1990-05-23', '555-9148', '0304 Swanson Street, Ashleyberg, CO 92753' ,0),
('Donna Jackson', '1967-07-30', '555-9133', '8032 Jesse Prairie Suite 514, Virginiamouth, AZ 67369' ,0),
('Jonathan Hall', '1998-10-17', '555-3664', '93032 Paul Hill, Hernandezborough, NJ 82879' ,0),
('Thomas Turner', '1997-11-26', '555-9304', '59948 Nicole Lodge Apt. 171, New Savannah, AR 29885' ,0),
('Shirley Logan', '1959-09-21', '555-8202', '3609 Heidi Street, South Sandra, LA 47377' ,0),
('Veronica Boyd', '1953-11-07', '555-8794', '4434 Thomas Village Apt. 298, South Jaredmouth, MN 63931' ,0),
('John Jensen', '1989-01-16', '555-7170', '291 Price Neck Suite 374, South Joel, DE 13778' ,0),
('Patrick Glenn', '1982-04-25', '555-5772', '123 Catherine Cove Apt. 599, South Tracy, DC 08387' ,0),
('Shannon Freeman', '2001-09-11', '555-1231', '611 Shawn Key, East Michellebury, CO 23262' ,0),
('Andrea Morgan', '1982-06-20', '555-2522', '9871 Kimberly Mall Apt. 936, New William, MN 84018' ,0),
('Erin Garcia', '1987-07-13', '555-9779', '3468 Tammy Vista Apt. 527, Nathanshire, NH 09858' ,0),
('Lisa Armstrong', '1971-09-11', '555-7626', '069 Ware Underpass, North Diana, ME 90575' ,0),
('Kim Bryant', '2002-12-06', '555-3362', '77969 Smith Loop, Taylorbury, WY 97489' ,0),
('Nina Wilson', '1943-06-16', '555-4044', '59374 Curtis Throughway Apt. 044, Kylieburgh, MA 37191' ,0),
('Shari Mejia', '1969-07-16', '555-3328', '67365 Gordon Mission, Powersbury, AZ 22577' ,0),
('Charles Vega', '1987-10-04', '555-2952', '6185 Stanley Radial Apt. 098, West Jonathan, NY 53616' ,0),
('Michael Thomas', '1996-04-15', '555-8137', '1905 Wood Estate, Cameronbury, NC 12407' ,0),
('Stephanie Vance', '1972-06-13', '555-5277', '06550 Rodriguez Valley Apt. 299, Port Gregory, NM 29064' ,0),
('Julie Ortiz', '1959-01-13', '555-7766', '822 Meyer Track, North Charlesburgh, OH 94364' ,0),
('Robert Moran', '2006-10-12', '555-9120', '93362 Mark Union, Jacobfort, KY 60370' ,0),
('Hannah Cook', '1976-11-22', '555-5646', 'PSC 0408, Box 8165, APO AA 42255' ,0),
('William Brown', '1976-11-24', '555-6105', '78656 Martin Rapid Apt. 652, Lake Erik, CA 16427' ,0),
('Jasmine Williams DDS', '1940-06-22', '555-3269', '086 Wright Mountains Suite 971, North Edwardton, CA 03604' ,0),
('Tammy Olson', '1996-11-16', '555-5227', '05498 Allen Parkway, West David, NE 35948' ,0),
('Elizabeth Banks', '2000-11-10', '555-1024', '385 Flynn Locks Apt. 592, Nicholasberg, AZ 68758' ,0),
('David Welch', '1995-05-04', '555-6092', '355 Evans Islands Suite 558, Patriciafort, OR 82929' ,0),
('Jeff Campbell', '2003-10-09', '555-5136', '0266 Timothy Via Apt. 516, Richardsonchester, NE 94199' ,0),
('Melissa Dawson', '1947-01-07', '555-1437', '22265 Laura Stravenue, East Stacy, NH 65771' ,0),
('Mathew Huffman', '2001-09-22', '555-8056', '170 Thompson Cliffs, Turnerfurt, VT 72230' ,0),
('Scott Moreno', '1971-02-21', '555-7800', '2605 Valencia Extension, Lake Anthony, SD 19546' ,0),
('Melanie Ellis', '1978-10-11', '555-8253', '98131 James Ridges Apt. 945, East Thomashaven, MT 48658' ,0),
('Michelle Waller', '1957-09-15', '555-3908', '5047 Douglas Vista Apt. 067, New Melaniebury, AL 98430' ,0),
('Nicole Frey', '1991-11-23', '555-6013', '7341 Ryan Walk Suite 863, Rogershire, TX 11097' ,0),
('Virginia Rich', '1978-01-06', '555-6885', '638 Nancy Grove, Barnesshire, NV 90242' ,0),
('Larry Molina', '1962-06-10', '555-5513', '526 Nicole Crossing Suite 222, Lake Curtiston, OH 19756' ,0),
('Emily Thompson', '1951-03-19', '555-4783', '025 Maynard Falls Apt. 859, Samuelborough, VT 41344' ,0),
('Amanda Gonzalez', '2001-08-07', '555-2812', '0072 Robert Fork Suite 946, South Mackenzie, NE 95849' ,0),
('Deanna Hampton', '1961-04-25', '555-9108', '827 Ruiz Springs Suite 413, Reevesview, DC 10611' ,0),
('Jennifer Mitchell', '1967-01-25', '555-1677', '0020 Matthew Mission, Rodriguezview, WI 74754' ,0),
('Luis Washington', '1960-11-29', '555-5836', '2792 Sarah Extensions, Port Evanshire, DC 42732' ,0),
('Kristen Ellison', '1963-08-10', '555-7780', '5434 Kathleen Springs, Taramouth, NC 72863' ,0),
('Marilyn Hanson', '2002-02-10', '555-8046', 'PSC 5933, Box 4537, APO AE 55234' ,0),
('Lisa Ellis', '2003-04-14', '555-4739', '83028 Pearson Alley Apt. 471, Griffinmouth, IN 90514' ,0),
('Valerie Escobar MD', '1955-01-30', '555-8550', '866 Lauren Branch, Port Hayleyview, WY 81021' ,0),
('Kimberly Wilson', '1979-05-05', '555-1970', '545 Campbell Causeway, Anneport, IA 22309' ,0),
('Michael Frank', '1995-09-28', '555-9397', '47540 Barbara Inlet, South Timothy, CA 73336' ,0),
('Brenda Smith', '1936-06-19', '555-7895', '28132 Manuel Pass Apt. 158, North Stephaniefort, SC 18389' ,0),
('Bethany Steele', '1953-01-19', '555-7217', '5225 Leroy Mountain Suite 097, Riveraton, CT 49599' ,0),
('David Owens', '2000-02-02', '555-9366', '9932 Jonathan Cape Apt. 455, Jonesfort, MA 24379' ,0),
('William Hunter', '1958-05-09', '555-5525', '66641 Jennifer Camp Apt. 766, Lake Johnland, WY 64215' ,0),
('James Young', '1982-07-01', '555-8137', 'PSC 9281, Box 9012, APO AE 94848' ,0),
('Daniel Allison', '1988-10-01', '555-6590', '45813 Conway Tunnel, Jeffreyshire, WY 67686' ,0),
('Cory Anderson', '1949-01-27', '555-4129', 'Unit 2863 Box 6647, DPO AE 89571' ,0),
('Linda Roach', '1992-12-11', '555-5950', '240 Washington Glen Suite 618, Catherineside, WI 03380' ,0),
('Brandon Brown', '1985-08-02', '555-7649', '3144 Garza Extensions, East Tonyfurt, LA 88576' ,0),
('Thomas Hughes', '1992-05-21', '555-2403', 'USNV Nunez, FPO AE 63538' ,0),
('Monica Webb', '1955-03-04', '555-1338', '3086 Mark Circle, Jamesport, WY 52574' ,0),
('Melinda Beck', '1934-08-05', '555-2949', '2570 Moore Plaza, East Traceymouth, ID 13211' ,0),
('Brenda Dorsey', '1951-12-10', '555-3458', 'PSC 7187, Box 0743, APO AP 59846' ,0),
('Clayton Ali', '1980-03-07', '555-5545', '1623 Robert Plains Apt. 867, South Robertchester, ID 26300' ,0),
('Corey Wilson', '1992-09-21', '555-4441', '073 Stefanie Island Apt. 844, South Tiffanyport, NJ 88476' ,0),
('Amanda Phillips', '1994-12-05', '555-7633', 'PSC 1633, Box 1465, APO AP 19022' ,0),
('Michael Franco', '1978-05-03', '555-5135', '5279 Rodney Junctions Apt. 658, New Christopher, AK 91622' ,0),
('Omar Ramirez', '1986-04-08', '555-5072', '55150 Reynolds Trail Apt. 665, South Jeremyview, DE 84699' ,0),
('Steve Whitehead', '1956-07-10', '555-9410', '91755 Holly Stravenue Apt. 792, Theodorefurt, ME 84195' ,0),
('Joseph Hernandez', '1935-07-26', '555-8613', '5258 Matthew Inlet, Lake David, WI 23477' ,0),
('William White', '2005-11-07', '555-3543', '033 Banks Station Apt. 734, Port Angelica, IL 28121' ,0),
('Jade Peck', '1981-12-13', '555-4845', '6351 Jeffery Crossroad, Dawnside, RI 59759' ,0),
('Alexandra Collins', '1985-09-19', '555-9981', '130 Mathews Flat, East Lindashire, OH 86547' ,0),
('Justin Pitts', '1957-03-20', '555-6349', '106 Kristen Parks Apt. 877, West Andrea, ND 86375' ,0),
('Eric Santana', '1974-02-24', '555-3411', '3531 Corey Way Apt. 894, Bakertown, MI 13472' ,0),
('Evelyn Ward', '2005-07-10', '555-8901', '236 Silva Mews Apt. 704, Deborahstad, DE 48394' ,0),
('Kari Allen', '1951-10-04', '555-6333', '703 Wells Gardens, East Kevinchester, CT 42039' ,0),
('Mary Carpenter', '1943-08-15', '555-2960', 'Unit 5293 Box 8193, DPO AP 17069' ,0),
('Samantha Davis', '1956-11-01', '555-6715', '492 Luke Crossing, Susanhaven, WV 77199' ,0),
('Michael Holloway', '1934-03-29', '555-7647', '477 Anna Wells Suite 987, Steeleview, AK 26648' ,0),
('Brenda Wilkinson', '1967-02-16', '555-6687', '088 Campbell Branch Suite 384, Gomezport, AL 17696' ,0),
('Laura Wilson DVM', '2001-07-03', '555-8394', '8341 Angela Vista Apt. 419, Gibbsstad, CT 12203' ,0),
('Sarah Schaefer', '1967-10-26', '555-2733', '6944 Reyes Ford Apt. 896, Tanyachester, WA 17442' ,0),
('James Gonzales', '1990-08-18', '555-8890', '52045 Smith Route Suite 787, Juliamouth, PA 88041' ,0),
('Anna Weaver', '2004-12-03', '555-7406', 'PSC 1528, Box 6105, APO AP 90545' ,0),
('Adrian Good', '2002-01-03', '555-8401', '013 Beth Isle, North Crystal, FL 21290' ,0),
('Shane Wilkerson', '1946-11-12', '555-2066', '47579 Christina Heights, Kaitlynfort, WA 41776' ,0),
('Raymond Cook', '1972-12-31', '555-3920', '86104 Catherine Vista, Weisshaven, WY 12286' ,0),
('Katherine Perez', '1979-04-28', '555-2079', '20057 Weiss Mission, Port Charles, NE 76356' ,0),
('Rachel Morris', '1957-08-01', '555-2667', '4237 Kristen Glen, Davisland, AK 50676' ,0),
('Michael Rogers', '1982-12-28', '555-7204', '373 Garrett Radial Apt. 849, New Aaron, NY 38017' ,0),
('Karen Kidd', '1990-04-25', '555-1703', '09435 Paula Trail, Garrettchester, MS 32460' ,0),
('Bradley Walton', '2002-11-10', '555-3227', '71061 Steven Garden, East Julie, WV 54983' ,0),
('Christopher Anderson', '1986-07-31', '555-4806', '2861 Grant Tunnel Suite 458, Jonestown, CT 66137' ,0),
('Juan Zhang', '1988-05-22', '555-2045', '34121 Jessica Square, Rebeccastad, CA 99457' ,0),
('Dr. Alexa Gaines MD', '1980-10-03', '555-5465', '831 Anthony Wells Suite 637, Port Brianna, MS 68931' ,0),
('Yesenia Cunningham', '1935-01-12', '555-5977', '87695 Grimes Island, Mcneilfort, NV 89746' ,0),
('Valerie White', '1955-07-25', '555-1484', '37787 Atkins Ports Apt. 597, West Ann, MI 67984' ,0),
('Jennifer Harris', '2006-07-16', '555-7342', '316 Darrell Plaza Suite 215, Port Matthewburgh, ME 61968' ,0),
('Patrick Lawrence', '2000-11-01', '555-6093', '8875 Ellen Meadows Apt. 998, Allenberg, CT 90328' ,0),
('Janice Turner', '1947-04-16', '555-8049', '6174 Amy Mission Apt. 776, North Kellie, IL 07699' ,0),
('Ebony Sharp', '1986-12-21', '555-1988', '666 Thomas Hollow, Richardsland, CT 57248' ,0),
('Stephen Smith', '1989-03-01', '555-1346', '33171 Christina Oval, East Kevin, MA 64026' ,0),
('Adam Braun II', '1962-04-08', '555-4118', 'Unit 7323 Box 9841, DPO AE 87368' ,0),
('Justin Howard', '1996-02-08', '555-4949', 'Unit 3906 Box 1498, DPO AE 91769' ,0),
('Timothy Romero', '1982-11-28', '555-5763', '991 King Corners Apt. 210, Bellmouth, OK 06410' ,0),
('Susan Chen', '1990-11-13', '555-1802', '55317 Michelle Cliff Apt. 027, New Peterport, HI 61811' ,0),
('Andre Wilson', '1950-05-18', '555-6695', '078 Ellis Plains Suite 072, North Jackborough, WY 52675' ,0),
('Antonio Patton', '1953-02-07', '555-1646', '255 Sandra Shoals, New Johnland, NM 86622' ,0),
('Ashley Cooper', '1991-02-02', '555-7369', '734 Johnny Loop, South Brianbury, WV 68301' ,0),
('Courtney Glenn', '1957-05-29', '555-9559', '19044 Stacey Manors Suite 922, Perezville, MN 09553' ,0),
('Angel Thomas', '1949-01-08', '555-5698', '22348 Brian Station Suite 982, Lake Amychester, NY 88894' ,0),
('Brian Schultz', '1989-07-21', '555-8407', '812 Jesse Street Suite 144, Bradleytown, OK 93128' ,0),
('Danielle Conrad', '1985-10-19', '555-8433', 'PSC 8043, Box 1045, APO AA 73165' ,0),
('Alexander Reeves', '1981-07-23', '555-1572', '71376 Williams Glens Apt. 380, Lake Biancaburgh, CA 64386' ,0),
('Ronald Anderson', '1997-04-17', '555-7802', 'USNS Valenzuela, FPO AE 71542' ,0),
('Whitney Black', '1940-08-14', '555-2481', 'USNV Daniel, FPO AP 93440' ,0),
('Michelle Vincent', '1949-10-06', '555-3751', '2099 Shelton Cove, Jenkinsfort, IA 78416' ,0),
('Richard Davis', '1947-07-02', '555-7506', '799 Farrell Knolls, South Justin, ND 75023' ,0),
('Mitchell Copeland', '1983-03-04', '555-3906', '791 Rose Plains Suite 764, East Julieville, SD 69939' ,0),
('Stacey Allen', '1964-11-14', '555-7832', '2840 Brett Plain, North Bruceberg, ME 77047' ,0),
('Todd Gray', '1979-09-29', '555-8910', '1941 Glover Stream, Fisherview, WI 64632' ,0),
('Michael Lopez', '1952-02-26', '555-2682', 'PSC 2065, Box 5451, APO AA 80690' ,0),
('Randall Nelson', '1988-03-16', '555-2434', '825 Aaron Garden, South Brendafort, MI 41900' ,0),
('Amber Cook', '1944-05-31', '555-2593', '8160 Miranda Center Suite 836, Gainesside, SC 70018' ,0),
('Daniel Parsons', '2000-01-15', '555-5140', '7103 Jessica Parks, Lake Kevinport, MO 20891' ,0),
('Dr. Richard Baker', '1957-06-18', '555-8192', '501 Rebecca Landing, Port Traceyberg, MT 95974' ,0),
('Meghan Williams', '1936-05-12', '555-2606', '68722 Christina Squares Suite 922, Lindseychester, MI 69381' ,0),
('Anita Miller', '1964-12-02', '555-4108', '81003 Kimberly Heights Apt. 194, East Kimberly, NV 42454' ,0),
('Susan Figueroa', '2003-07-27', '555-6287', '4934 Roy Village Suite 215, West Kimberlymouth, KS 65347' ,0),
('Ryan Young', '1938-05-18', '555-6842', '39118 Lydia Shoals, Port Joshua, VT 04136' ,0),
('Michael Phillips', '1942-10-26', '555-1230', '9193 Matthew Parkway, Sarahchester, MS 42165' ,0),
('Joshua Zimmerman', '1964-07-16', '555-4304', '2529 Brianna Trafficway Apt. 012, Port Carrie, IA 54867' ,0),
('Lindsey Nelson', '1977-09-12', '555-3175', 'USNS Miller, FPO AP 47616' ,0),
('Brandy Miller', '1949-11-19', '555-5888', '286 Tyler Track Suite 228, North Taylorstad, VT 13147' ,0),
('Nathan Clay', '1951-10-03', '555-5471', '4899 Jon Mills Apt. 888, Davidshire, OH 95730' ,0),
('Amanda Hawkins', '1953-04-02', '555-4923', '52306 Deborah Hill, Fernandezborough, RI 35551' ,0),
('Michelle Williams', '1984-05-13', '555-9994', '6939 White Crossroad Suite 207, Heatherview, FL 95459' ,0),
('Denise Lewis', '1990-05-09', '555-7512', '91542 Davis Drive Suite 677, New Joel, OR 39230' ,0),
('Jeffrey Daniels', '1991-04-27', '555-6439', '00057 Coleman Crossroad Suite 327, Port Melissaville, CO 52241' ,0),
('Isabella Hill', '1950-09-21', '555-5651', '99322 Fields Isle, Conleychester, HI 15191' ,0),
('Elizabeth Morrison', '1977-07-21', '555-1445', '70505 Williams Villages Apt. 527, East Angie, RI 46564' ,0),
('Cindy Larson', '1981-08-29', '555-5899', '52252 Megan Club Apt. 544, Laurenhaven, PA 99107' ,0),
('Kimberly Andrews', '1941-10-22', '555-9403', '61844 Timothy Park, South Christinemouth, OR 19418' ,0),
('Maria Goodwin', '1983-11-12', '555-9213', '5409 Zachary Mission, Newtontown, NE 06799' ,0),
('Jill Sullivan', '1965-10-18', '555-9924', '9764 Adam Port Apt. 162, Martinmouth, OR 36947' ,0),
('Terrence Copeland', '1986-08-14', '555-3254', '68507 Wright Plain Suite 998, West Elizabethfort, MD 15534' ,0),
('Sandra Freeman', '1943-03-22', '555-2736', '5057 Austin Gardens, Hinesmouth, SD 02075' ,0),
('Miss Renee White', '1943-01-22', '555-9286', 'Unit 0416 Box 6155, DPO AE 86218' ,0),
('Tammy King', '1983-02-23', '555-7563', '3680 Cook Drive, Ortizville, IL 78939' ,0),
('Shawn Smith', '1943-08-21', '555-9144', '4205 Nicholas Junction, New Rebecca, NM 60089' ,0),
('Corey Gilbert', '1942-10-17', '555-2454', '18742 Beverly Mall Apt. 805, Davistown, HI 92851' ,0),
('Elizabeth Rodriguez', '1969-01-13', '555-2138', 'Unit 2446 Box 5966, DPO AP 99468' ,0),
('Pamela Rodriguez', '1965-07-17', '555-5107', '1907 Gallagher Locks, Haroldmouth, OH 46220' ,0),
('Travis Snyder', '2003-04-27', '555-1650', '7619 Justin Lake, Lake Heatherberg, WY 83433' ,0),
('Daniel Sutton', '1994-02-19', '555-2615', '87229 Matthew Radial, Veronicatown, RI 30985' ,0),
('Kathryn Washington', '1976-10-03', '555-5627', '390 Rodriguez Brook Suite 815, New Donna, ID 62909' ,0),
('Johnathan Scott', '1937-04-21', '555-2678', '634 Steve Tunnel Suite 681, Danabury, MI 16724' ,0),
('Amy Brown', '2003-10-02', '555-9962', '30803 Jennifer Harbors, Davistown, WV 72997' ,0),
('Hunter Jensen', '1960-01-26', '555-9773', '12020 Brett Brook, Peterstown, VA 17175' ,0),
('Jessica Wagner', '1966-01-05', '555-8342', 'USS Martin, FPO AE 04136' ,0),
('Tina Soto', '1943-05-30', '555-1409', '71789 Betty Station, Boothfort, AZ 06247' ,0),
('Michelle Thompson', '1956-01-29', '555-1859', '5604 Hawkins Harbor Apt. 718, North Jason, CA 88482' ,0),
('Hunter Williams', '2003-12-14', '555-3662', '419 Miller Track, Lake Brittanymouth, TX 77512' ,0),
('James Burgess', '1936-02-29', '555-6682', '696 Garrett Branch Apt. 084, Boydfort, WV 54422' ,0),
('Jennifer Vega', '1971-01-06', '555-7068', '9563 Robert Dam Suite 416, Buchananshire, UT 64403' ,0),
('Ashley Banks', '1943-10-01', '555-5579', '273 Stephens Courts, North Victor, CA 30486' ,0),
('Laura Black', '1957-10-06', '555-1622', '304 Ray Field, Garciachester, MD 62678' ,0),
('Johnny Franklin', '1960-09-30', '555-8037', '6429 Robert Manors Apt. 056, Hallport, WV 15191' ,0),
('Henry Deleon', '1935-05-09', '555-3409', '9406 Smith Forges Apt. 193, Deckerborough, GA 26600' ,0),
('Joshua Underwood', '1968-11-14', '555-4805', '134 Francis Land, Christinaton, IN 87359' ,0),
('Melissa Costa', '1984-08-09', '555-9400', '233 Dunn Square Suite 778, East Vanessahaven, OR 92546' ,0),
('Danny Kelly', '1958-10-25', '555-5809', '99612 Brian Harbors, Boylestad, WA 59423' ,0),
('Kristin Fisher', '1936-11-13', '555-4617', '57106 Torres Valleys, East Theresa, GA 42520' ,0),
('Megan Webster', '1994-01-20', '555-6866', '913 Sarah Burg, Millerburgh, WI 10295' ,0),
('William Donovan', '1994-04-29', '555-3901', '052 Lewis View Apt. 085, Baldwinchester, IL 65385' ,0),
('William Harris', '1958-01-23', '555-6727', '917 Moore Court Suite 016, Roberthaven, HI 65863' ,0),
('Shelley Green', '1979-11-19', '555-8350', '39826 Kristina Rapids, East Melindatown, WI 71337' ,0),
('Paul Pearson', '1954-02-08', '555-8831', 'PSC 9580, Box 3277, APO AA 42219' ,0),
('Dawn Barber', '2000-12-19', '555-5564', '72579 Cardenas Lake, West Tracymouth, AR 02651' ,0),
('Kelly Villegas', '1970-01-10', '555-8309', '8837 Danielle Place, Melindamouth, ND 76689' ,0),
('Carl Mclaughlin', '1975-05-09', '555-5452', '15438 Suzanne Village Suite 821, East Caseyland, OH 63549' ,0),
('Becky Nelson', '1961-07-13', '555-1342', '06759 Craig Crest Apt. 634, Houstonberg, NJ 58649' ,0);

SELECT setval('car_demo.brand_id_seq', COALESCE((SELECT MAX(id)+1 FROM car_demo.brand), 1), false);
SELECT setval('car_demo.country_id_seq', COALESCE((SELECT MAX(id)+1 FROM car_demo.country), 1), false);
SELECT setval('car_demo.car_id_seq', COALESCE((SELECT MAX(id)+1 FROM car_demo.car), 1), false);
SELECT setval('car_demo.ride_id_seq', COALESCE((SELECT MAX(id)+1 FROM car_demo.ride), 1), false);
SELECT setval('car_demo.client_id_seq', COALESCE((SELECT MAX(id)+1 FROM car_demo.client), 1), false);
