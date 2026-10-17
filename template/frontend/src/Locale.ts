import {addLocale as primeAddLocale, locale} from "primereact/api";
import {addLocale} from "@chilibase/frontend/locale";
// using json-loader module we import sk.json file into variable skJsonObject
// sk.json was downloaded from project https://github.com/primefaces/primelocale (PrimeLocale repository)
// in sk.json I changed the translation of the "emptyMessage" item, it didn't match reality
import skJsonObject from "./locale/sk.json";
import xSkJsonObject from "./locale/x-sk.json";

export function setLocale() {
    // here it is enough if this code runs (even if it were "directly") but it would run only if Locale.ts were imported somewhere,
    // so I rather made a method so that we always have to import Locale.ts

    // add sk locale into PrimeReact locale (global variable "locales" declared in file Locale.js)
    // remark: not used unless locale('sk') is called
    primeAddLocale('sk', skJsonObject.sk);
    addLocale('sk', xSkJsonObject.sk);

    // set current used locale (default is en)
    const localeUsed = locale('en').locale;
    console.log(`Using locale ${localeUsed}`);
}
