import {createBrowserRouter, RouterProvider} from "react-router";
import {AppMainLayout} from "./AppMainLayout.tsx";
import {ChangePasswordForm, ParameterBrowse, UserBrowse} from "@chilibase/frontend/administration";
import {XUtils} from "@chilibase/frontend/utils";
import {XEnvVar, ViteAuth} from "@chilibase/frontend/env-vars";

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
                {path: "/users", Component: UserBrowse},
                {path: "/parameters", Component: ParameterBrowse},
                ...(XUtils.getEnvVarValue(XEnvVar.VITE_AUTH) === ViteAuth.LOCAL ? [{path: "/change-password", Component: ChangePasswordForm}] : [])
            ]
        }
    ]);

    return <RouterProvider router={router}/>;
}