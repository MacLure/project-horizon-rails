import React, { Component } from 'react';
import {Link} from "react-router-dom";
import CohortCard from './CohortCard';
import CohortDetails from './CohortDetails';
import NewCohortForm from './NewCohortForm';
import NewStudentForm from './NewStudentForm';
import Footer from './Footer';
import NavBar from './NavBar'


class AdminDashboard extends Component {
  state = {
    admins: [],
    cohorts: [],
    students: []
  }

    componentDidMount() {
    fetch('https://project-horizon-rails.herokuapp.com/api/admin/dashboard')
      .then(response=>response.json())
      .then(response=> { this.setState({
        admins: response.admins,
        cohorts: response.cohorts,
        students: response.students,
      });
    })
    }
    //POST REQUEST FOR NEW COHORTS
    // handleSubmit(event){
    //   event.preventDefault();
    //   IS THIS THE RIGHT ADDRESS??
    //   fetch('https://project-horizon-rails.herokuapp.com/admin', {
    //    method: 'post',
    //    headers: {'Content-Type':'application/json'},
    //    body: {
    //    THESE ARE UNDEFINED
    //     "start_date": this.startDate.value,
    //     "end_date": this.endDate.value,
    //     "name": this.name.value,
    //     "course_type": this.courseType.value
    //    }
    //   });
    //  };

  render() {
    const admins = this.state.admins
    return (
      <div>
        <NavBar/>
        <h1>Dashboard</h1>
        <NewCohortForm />
        <NewStudentForm />
        <div>
          {this.state.cohorts.map(cohort => (
            <CohortCard key={cohort.id} data={cohort} />
           ))}
        </div>
        <CohortDetails cohort={this.state.cohorts} students={this.state.students} admins={this.state.admins} />
        <br/>
        <Footer/>
      </div>
    );
  }
}

export default AdminDashboard;
