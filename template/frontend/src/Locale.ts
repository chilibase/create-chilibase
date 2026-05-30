import {addLocale as primeAddLocale, locale} from "primereact/api";
import {addLocale} from "@chilibase/frontend/locale";
// using json-loader module we import sk.json file into variable skJsonObject
// sk.json was downloaded from project https://github.com/primefaces/primelocale (PrimeLocale repository)
// v sk.json som zmenil preklad polozky "emptyMessage", nesedel s realitou
import skJsonObject from "./locale/sk.json";
import cbSkJsonObject from "./locale/cb-sk.json";

export function setLocale() {
    // tu staci ak zbehne tento kod (aj keby bol "napriamo") ale zbehol by len vtedy ak by bol Locale.ts niekde importnuty,
    // tak radsej som spravil metodu aby sme vzdy museli Locale.ts importovat

    // add sk locale into PrimeReact locale (global variable "locales" declared in file Locale.js)
    // remark: not used unless locale('sk') is called
    primeAddLocale('sk', skJsonObject.sk);
    addLocale('sk', cbSkJsonObject.sk);

    // set current used locale (default is en)
    const localeUsed = locale('en').locale;
    console.log(`Using locale ${localeUsed}`);
}
