import {createBrowserRouter, RouterProvider} from "react-router";
import {AppMainLayout} from "./AppMainLayout.tsx";
import {XUserBrowse} from "@chilibase/frontend/XUserBrowse";

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
                {path: "/users", Component: XUserBrowse}
            ]
        }
    ]);

    return <RouterProvider router={router}/>;
}