import React, { Fragment } from 'react';
import { Toolbar } from '@material-ui/core';
import AppBar from '@material-ui/core/AppBar';
import classStyles from './styles';
import Divider from '@material-ui/core/Divider';
import Home from "./components/home"
import Spacer from "../spacer";
import Login from "./components/login"
import Register from "./components/register"
import Logout from "./components/logout"
import {useSelector} from "react-redux"
import Role from "./components/role"
import Tags from "./components/tags"

export const Navbar = () => {
    const classes = classStyles();
    const app = useSelector(state => state.app);
    const { role, loggedIn } = app;

        return(
            <Fragment>
                <AppBar position="fixed" className={classes.appbar}>
                <Toolbar className={classes.toolbar} variant="dense">
                <Fragment>
                    <Home/>
                    <Spacer/>
                    {loggedIn===false ? 
                        <Fragment>
                            <Register/>
                            <Login/>
                        </Fragment>
                        :
                        <Fragment>
                            {role === "admin" ? <Tags/> : null}
                            {role === "admin" ? <Role/> : null}
                            <Logout/>
                        </Fragment>
                    }
                </Fragment>
                </Toolbar>
                </AppBar>
                <Toolbar variant="dense" className={classes.toolbar2}/>
                <Divider/>
            </Fragment>
        )
}

  export default Navbar;
