import {XUtils} from "@chilibase/backend/utils";
import {localeSk} from "./locale/x-sk.js";
import {localeEn} from "@chilibase/backend/locale";

export function setLocale() {
    // here we use simple way, set the language you need
    // TODO - nestjs supports packages i18n and @nestjs/i18n, use these packages
    //XUtils.setLocaleOptions(localeSk.sk);
    XUtils.setLocaleOptions(localeEn.en); // use english for messages used on backend
}
