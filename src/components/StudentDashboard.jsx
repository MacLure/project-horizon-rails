import React, { Component } from 'react';
import {Link} from "react-router-dom";


class StudentDashboard extends Component {
  state = {  }
  render() { 
    return (
      <div>
        <p>Student Dashboard</p>
        <Link to="/admin">Admin Dashboard</Link><br/>
        <Link to="/">Signup / Login</Link>
        </div>

    );
  }
}
 
export default StudentDashboard;