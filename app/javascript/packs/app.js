// Run this example by adding <%= javascript_pack_tag 'hello_react' %> to the head of your layout file,
// like app/views/layouts/application.html.erb. All it does is render <div>Hello React</div> at the bottom
// of the page.

import React from 'react'
import ReactDOM from 'react-dom'
import Layout from "./components/layout/layout";
import {BrowserRouter} from "react-router-dom";

const App = () => (
    <BrowserRouter basename="/dashboard">
        <Layout />
    </BrowserRouter>
);


document.addEventListener('DOMContentLoaded', () => {
    ReactDOM.render(
        <App />,
        document.getElementById('app')
    )
});
