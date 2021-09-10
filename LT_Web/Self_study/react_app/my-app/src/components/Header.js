import React from 'react'
import Paper from '@material-ui/core/Paper';

function Header() {
    return (

        <Paper style={{ padding: "5px", display: "flex" }} square elevation={3}>
            <img src="https://www.shareicon.net/data/256x256/2016/07/08/117367_logo_512x512.png" alt="logo" style={{ width: "50px" }} />
            <h1 style={{ fontFamily: "cursive", fontWeight: "100" }}>React App</h1>
        </Paper>
    )
}

export default Header
