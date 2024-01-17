// app/javascript/components/Dashboard.jsx

import React from 'react';

const Dashboard = () => {
    return (
        <div>
            <h1>Soy el inicio</h1>
            <div className="card">
                <div className="card-body">
                    <h2 className="card-title">Widget 1</h2>
                    {/* Contenido del primer widget */}
                </div>
            </div>

            <div className="card">
                <div className="card-body">
                    <h2 className="card-title">Widget 2</h2>
                    {/* Contenido del segundo widget */}
                </div>
            </div>
            {/* Puedes agregar más componentes según sea necesario */}
        </div>
    );
};

export default Dashboard;


