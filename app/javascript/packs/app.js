import React from 'react'
import ReactDOM from 'react-dom'
import Layout from "./components/layout/layout";
import {BrowserRouter} from "react-router-dom";

const App = () => (
    <BrowserRouter basename="/dashboard">
        <Layout />
    </BrowserRouter>
);


document.addEventListener('DOMContentLoaded', () =>
    ReactDOM.render(
        <App/>,
        document.getElementById('app')
    ));
