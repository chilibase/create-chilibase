// in order to preserve the order of css files in vite build we put css imports as first before importing react components
// (otherwise is App.css before index.css in the build)

// PrimeReact / PrimeFlex / PrimeIcons global styles
import 'primereact/resources/themes/saga-blue/theme.css';
import 'primereact/resources/primereact.min.css';
import 'primeicons/primeicons.css';
import 'primeflex/primeflex.css';

// Your own global styles (if any)
import './index.css';

import './App.css';

import ReactDOM from "react-dom/client";
import {XUtils} from "@chilibase/frontend/XUtils";
import {setLocale} from "./Locale";
import {Utils} from "./Utils.tsx";
import {AppRouterProvider} from "./AppRouterProvider.tsx";
import {XApp} from "@chilibase/frontend/auth";

XUtils.initLib(Utils.getEnvVarValue);

setLocale();

const container = document.getElementById("root");
if (container !== null) {
    const root = ReactDOM.createRoot(container);
    root.render(<XApp><AppRouterProvider/></XApp>);
}
else {
    console.log('element with id="root" not found');
}
