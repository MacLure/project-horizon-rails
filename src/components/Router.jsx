import React from 'react';
import { BrowserRouter, Route, Switch } from 'react-router-dom';
import AdminDashboard from './AdminDashboard';
import StudentDashboard from './StudentDashboard';
import Login from './Login';
import Signup from './Signup';
import NotFound from './NotFound';
import Articles from './Articles';
import Contacts from './Contacts';
import JobBoard from './JobBoard';
import Settings from './Settings';

const Router = () => {
  return (
    <BrowserRouter>
      <Switch>
      <Route path='/' exact component={ Login } />
        <Route path='/signup' exact component={ Signup } />
        <Route path='/login' exact component={ Login } />
        <Route path='/admin' component={ AdminDashboard } />
        <Route path='/student' component={ StudentDashboard } />
        <Route path="/articles" component={ Articles } />
        <Route path="/contacts" component={ Contacts } />
        <Route path="/jobs" component={ JobBoard } />
        <Route path="/settings" component={ Settings } />

        <Route component={ NotFound } />


      </Switch>
    </BrowserRouter>
   );
}

export default Router;
