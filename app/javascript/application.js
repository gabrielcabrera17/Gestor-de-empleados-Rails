// app/javascript/packs/application.js
// app/javascript/packs/application.js

import 'bootstrap/dist/css/bootstrap.min.css';
import "@hotwired/turbo-rails";
import "controllers";
import "popper";
import "bootstrap";

import React from 'react';
import ReactDOM from 'react-dom';
import Dashboard from '../components/Dashboard';

document.addEventListener('DOMContentLoaded', () => {
    ReactDOM.render(
        <Dashboard />, // Corregir aquí
        document.getElementById('root')
    );
});




