// for simplicity, instead of json file x-sk.json
import {LocaleOptions} from "@chilibase/backend/locale";

export const localeSk: {"sk": LocaleOptions} =
{
  "sk": {
    "pessimisticLockFailedLockPresent": "Zamknutie záznamu zlyhalo - (pravdepodobne) užívateľ {lockUser} prevzal zámok (od {lockDate}) a práve edituje záznam. Musíte žiaľ zrušiť editáciu a editovať záznam odznova (keď bude uvolnený).",
    "pessimisticLockFailedLockFinished": "Zamknutie záznamu zlyhalo -  niekto prevzal zámok a uložil záznam. Záznam bol naposledy modifikovaný užívateľom {modifUser} dňa {modifDate}. Musíte žiaľ zrušiť editáciu a editovať záznam odznova (keď bude uvolnený)."
  }
};
