import {XUtils} from "@chilibase/frontend/utils";
import {Outlet} from "react-router";
import {MenuItem, MenuBar} from "@chilibase/frontend/app-layout";
import {XEnvVar, ViteAuth} from "@chilibase/frontend/env-vars";
import {useAuthSession} from "@chilibase/frontend/auth";

export const AppMainLayout = () => {

    const {session} = useAuthSession();

    // const navigate = useNavigate();
    //
    // // helper
    // const createMenuItem = (label: string, to: string): MenuItem => {
    //     return {template: <NavLink to={to} className="p-menuitem-link">{label}</NavLink>};
    //     // works also solution with navigate, but recommended is NavLink (by React Router)
    //     //return {label: label, command: () => {navigate(to);}};
    // }

    const items = [
        {
            label:'Application',
            items:[
                // >> add project specific menu items here <<
                //{template: <MenuItem label='Brands' to='/brands'/>},
                //{template: <MenuItem label='Cars' to='/cars'/>},
                //{template: <MenuItem label='Clients' to='/clients'/>},
                //{template: <MenuItem label='Car reservations' to='/car-reservations'/>}
            ]
        },
        // {
        //     label:'Runtime edit',
        //     items:[
        //         {label:'Brand - runtime edit', command: () => {openForm(<DynamicBrowse entity="Brand"/>);}},
        //         {label:'Car - runtime edit', command: () => {openForm(<DynamicBrowse entity="Car"/>);}}
        //     ]
        // },
        {
            label:'Administration',
            items:[
                {template: <MenuItem label='Users' to='/users'/>},
                //{label:'Browses', command: () => {openForm(<BrowseMetaBrowse/>);}}
                ...(XUtils.getEnvVarValue(XEnvVar.VITE_AUTH) === ViteAuth.LOCAL ? [{template: <MenuItem label='Change password' to='/change-password'/>}] : [])
            ]
        },
        {
            label:'Log off',
            icon:'pi pi-fw pi-power-off',
            command: session!.logout
        }
    ];

    return (
        <div>
            <MenuBar model={items}/>
            <div className="App-form">
                <Outlet/>
            </div>
        </div>
    );
}
