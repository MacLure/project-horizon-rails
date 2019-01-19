import React from 'react';
import { BrowserRouter, Route, Switch } from 'react-router-dom'
import AdminDashboard from './AdminDashboard'
import StudentDashboard from './StudentDashboard'
import SignupLogin from './SignupLogin'
import NotFound from './NotFound'


const Router = () => {
  return ( 
    <BrowserRouter>
      <Switch>
        <Route path='/' exact component={ SignupLogin } />
        <Route path='/admin' component={ AdminDashboard } />
        <Route path='/student' component={ StudentDashboard } />

        <Route component={ NotFound } />


      </Switch>
    </BrowserRouter>
   );
}
 
export default Router;