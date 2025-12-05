import {createBrowserRouter, RouterProvider} from "react-router";
import {AppMainLayout} from "./AppMainLayout.tsx";
import {XUserBrowse} from "@chilibase/frontend/XUserBrowse";
import {XChangePasswordForm} from "@chilibase/frontend/XChangePasswordForm";
import {XUtils} from "@chilibase/frontend/XUtils";
import {XEnvVar, XViteAuth} from "@chilibase/frontend/XEnvVars";

export const AppRouterProvider = () => {
    const router = createBrowserRouter([
        {
            // no path on this parent route, just the component
            Component: AppMainLayout,
            children: [
                {path: "/", element: <div/>},
                // >> add project specific items here <<
                //{path: "/brands", Component: BrandBrowse},
                //{path: "/cars", Component: CarBrowse},
                //{path: "/clients", Component: ClientBrowse},
                //{path: "/car-reservations", Component: CarReservationBrowse},
                {path: "/users", Component: XUserBrowse},
                ...(XUtils.getEnvVarValue(XEnvVar.VITE_AUTH) === XViteAuth.LOCAL ? [{path: "/change-password", Component: XChangePasswordForm}] : [])
            ]
        }
    ]);

    return <RouterProvider router={router}/>;
}