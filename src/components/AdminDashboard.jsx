import React, { Component } from 'react';
import {Link} from "react-router-dom";


class AdminDashboard extends Component {
  state = {  }
  render() { 
    return (
      <div>
      <p>Admin Dashboard</p>
      <Link to="/student">Student Dashboard</Link><br/>
      <Link to="/">Signup / Login</Link>
      </div>
    );
  }
}
 
export default AdminDashboard;