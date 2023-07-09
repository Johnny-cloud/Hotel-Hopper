import React, { useContext } from 'react'
import {LinkContainer} from 'react-router-bootstrap'
import HotelContext from './HotelContext'
import { Button, Nav, Navbar } from 'react-bootstrap'


const Navigation = () => {
  const {currentCustomer, setCurrentCustomer, currentAdmin, setCurrentAdmin} = useContext(HotelContext)


  function logOutCustomer(){
    fetch("/logout", {method: "DELETE"})
    .then(res => res.json())
    .then(data => console.log(data))
    setCurrentCustomer('')
    console.log("logging out")
  }

  function logOutAdmin(){
    fetch("/logout", {method: "DELETE"})
    setCurrentAdmin('')
    console.log("logging out")
  }

  if(currentCustomer){
    return (
    <Navbar className='navbar'>
    <Navbar.Brand className='me-auto'><h1>{currentCustomer.name}</h1></Navbar.Brand>
      <Nav className='me-auto'>
      <LinkContainer to="/">
          <Nav.Link>Home</Nav.Link>
        </LinkContainer>
        <LinkContainer to="/customer-bookings">
          <Nav.Link>My Bookings</Nav.Link>
        </LinkContainer> 
      </Nav>
      <Nav className='me-auto'>
        <LinkContainer to="/logout">
          <Nav.Link><Button variant='primary' onClick={logOutCustomer}>Logout</Button></Nav.Link>
        </LinkContainer>
      </Nav>
    </Navbar>
  )
  } else if(currentAdmin){
    return(
        <Navbar>
          <Navbar.Brand className='me-auto'><h1>Admin</h1></Navbar.Brand>
      <Nav className='me-auto'>
      <LinkContainer to="/customers">
          <Nav.Link>Customers</Nav.Link>
        </LinkContainer>
        <LinkContainer to="/bookings">
          <Nav.Link>All Bookings</Nav.Link>
        </LinkContainer> 
      </Nav>
      <Nav className='me-auto'>
        <LinkContainer to="/logout">
          <Nav.Link><Button variant='primary' onClick={logOutAdmin}>Logout</Button></Nav.Link>
        </LinkContainer>
      </Nav>
        </Navbar>
    )
   
  }else{
    return (
      <div >
        <Navbar >
        <Navbar.Brand className='me-auto'><h2>Hotel Hopper</h2></Navbar.Brand>
        <Nav className='me-auto'>
            <LinkContainer to="/">
              <Nav.Link>Home</Nav.Link>
            </LinkContainer>
            
          </Nav>
          <Nav className='me-auto'>
          <LinkContainer to="/customer-login">
              <Nav.Link>Log In</Nav.Link>
            </LinkContainer>
            <LinkContainer to="/signup">
              <Nav.Link>Sign Up</Nav.Link>
            </LinkContainer>
            <LinkContainer to="/admin-login">
              <Nav.Link>Admin</Nav.Link>
            </LinkContainer>
          </Nav>
        </Navbar>
          
      </div>
    )
  }

}

export default Navigation