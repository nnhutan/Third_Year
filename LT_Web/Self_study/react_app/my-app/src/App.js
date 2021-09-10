import React, { useState } from "react";
import Footer from "./components/Footer";
import FormArea from "./components/FormArea";
import Header from "./components/Header";
import Note from "./components/Note";


function App() {
    const [notes, setNotes] = useState([])
    function addNote(note) {
        setNotes(prevNodes => {
            return [
                ...prevNodes,
                note
            ]
        })
    }

    function delNote(key) {
        setNotes(prevNodes => {
            return prevNodes.filter((note, index) => key !== index)
        })
    }
    return (
        <>
            <Header />
            <FormArea addNote={addNote} />
            {notes.map((note, index) => (<Note delNote={delNote} title={note.title} content={note.content} key={index} id={index} />))}
            <Footer />
        </>
    )
}

export default App