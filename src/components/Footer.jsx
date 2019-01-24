import React from 'react';
import {Link} from "react-router-dom";
import styled from 'styled-components';


const Footers = styled.footer`
  position: absolute;
  left: 0 ; right: 0; bottom: 0;
  width: 100%;
  height: 80px;
  background-color: #2b2e34;
  text-align: center;
`

const Links = styled.a`
  display: inline-block;
  color: white;
  padding: 0px 10px;
  background-color: inherit;
  margin-top: 30px;
  transition: color 0.5s;

  :hover {
    transition: color 0.5s;
    color: #DD3D0F;
  }
`

const Footer = (props) => {

  return (
    <React.Fragment>
    <Footers>
      <Link to="./admin"><Links>Admin Dashboard</Links></Link>
      <Link to="./student"><Links>Student Dashboard</Links></Link>
      <Link to="./signup"><Links>Sign up</Links></Link>
      <Link to="./login"><Links>Log in</Links></Link>
    </Footers>
    </React.Fragment>
   );
}

export default Footer;
