import React from "react";

const EmployeeList = ({ employees }) => (
    <div className="row">
        {employees.length > 0 ? (
            employees.map((employee) => (
                <div className="col-md-4 mb-4" key={employee.id}>
                    <div className="card shadow-lg">
                        <div className="card-body">
                            <h5 className="card-title h4">{employee.name}</h5>
                            <p className="card-text">Phone: {employee.phone}</p>
                            <p className="card-text"><strong>Workdays:</strong> {employee.workdays.join(", ")}</p>
                        </div>
                    </div>
                </div>
            ))
        ) : (
            <p className="h5">No employees found for the selected day.</p>
        )}
    </div>
);

export default EmployeeList;