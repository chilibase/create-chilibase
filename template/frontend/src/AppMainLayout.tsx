import {XUtils} from "@chilibase/frontend/XUtils";
import {Outlet} from "react-router";
import {MenuItem, XMenubar} from "@chilibase/frontend/app-layout";

export const AppMainLayout = () => {

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
        //         {label:'Brand - runtime edit', command: () => {openForm(<XEditBrowse entity="Brand"/>);}},
        //         {label:'Car - runtime edit', command: () => {openForm(<XEditBrowse entity="Car"/>);}}
        //     ]
        // },
        {
            label:'Administration',
            items:[
                {template: <MenuItem label='Users' to='/users'/>}
                //{label:'Browses', command: () => {openForm(<XBrowseMetaBrowse/>);}}
                //{label:'Change password', command: () => {openForm(<XChangePasswordForm setXToken={props.setXToken}/>);}}
            ]
        },
        {
            label:'Log off',
            icon:'pi pi-fw pi-power-off',
            command: XUtils.getXToken()!.logout
        }
    ];

    return (
        <div>
            <XMenubar model={items}/>
            <div className="App-form">
                <Outlet/>
            </div>
        </div>
    );
}
