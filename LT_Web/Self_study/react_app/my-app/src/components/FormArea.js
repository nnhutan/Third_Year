import { Fab, Paper, TextField } from '@material-ui/core'
import React, { useState } from 'react'
import AddIcon from '@material-ui/icons/Add';

function FormArea({ addNote }) {
    const [note, setNote] = useState({
        title: '',
        content: ''
    })

    function changeHandler(event) {
        const { name, value } = event.target
        setNote(prevValues => {
            return {
                ...prevValues,
                [name]: value
            }
        })
    }

    function clickHandler() {
        addNote(note)
        setNote({
            title: '',
            content: ''
        })
    }

    return (
        <Paper style={{ margin: "10px 10%", padding: "25px 50px" }}>
            <form action="">
                <TextField onChange={changeHandler} name='title' value={note.title} label="Title" fullWidth autoComplete="off" />
                <TextField onChange={changeHandler} name='content' value={note.content} label="Content" multiline rows={4} fullWidth autoComplete="off" />
            </form>
            <Fab onClick={clickHandler} style={{ marginTop: "20px" }} ><AddIcon /></Fab>
        </Paper >
    )
}

export default FormArea
