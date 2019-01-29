import {reducer} from './reducers/adminAuthenticationReducer'
export const onAdminLogin = (email,password) => {
  return new Promise((resolve,reject)=>{
    fetch(`https://project-horizon-rails.herokuapp.com/admin/admin_token`,
    {
      method:'POST',
      mode: 'cors', 
      headers: {
        "Content-Type": "application/json ",
      },
      body:JSON.stringify({ "auth": {"email":email, "password":password, "is_admin":true} })
    })
    .then(e=>e.ok?resolve(e):reject(e))
    .catch(e => console.log('ERR: ', e))

  })
}

export const onStudentLogin = (email,password) => {
  return new Promise((resolve,reject)=>{
    fetch(`https://project-horizon-rails.herokuapp.com/student/student_token`,
    {
      method:'POST',
      mode: 'cors', 
      headers: {
        "Content-Type": "application/json ",
      },
      body:JSON.stringify({ "auth": {"email":email, "password":password, "is_admin":false} })
    })
    .then(e=>e.ok?resolve(e):reject(e))
    .catch(e => console.log('ERR: ', e))

  })
}

export const getAdminDashboardData = (token) => {
  return new Promise((resolve,reject)=>{
  fetch(`https://project-horizon-rails.herokuapp.com/admin?${JSON.stringify({'is_admin':true, token})}`,{mode:'cors'})
  .then(e=>e.ok?resolve(e):reject(e))
  .catch(e => console.log('ERR: ', e))
  })
}