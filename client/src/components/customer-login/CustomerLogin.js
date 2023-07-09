import React, { useContext, useState } from 'react'
import { Button, Form } from 'react-bootstrap'
import HotelContext from '../HotelContext'
import {useNavigate} from 'react-router-dom'

const CustomerLogin = () => {
  const navigate = useNavigate()

  const {setCurrentCustomer} = useContext(HotelContext)
  const [formData, setFormData] = useState({
    email: "",
    password: ""
  })

  function logIn(){
    setFormData({
      email: "",
      password: ""
    })
    fetch("/login", {
      method: "POST",
      headers: {"Content-Type": "application/json"},
      body: JSON.stringify(formData)
    })
    .then(res => {
      if(res.ok){
        res.json().then(user => {
          setCurrentCustomer(user)
          navigate("/customer-bookings")
        })
      }else{
        alert("Wrong password")
        navigate("/customer-login")
      }

    }) 
  }

  function handleChange(event){
    setFormData({...formData, [event.target.name]: event.target.value})
  }

  return (
    <div>
    <Form className='login-form'>
        <h2>Customer</h2>
        <Form.Group className="mb-3" controlId="formGroupEmail">
            <Form.Label>Email address</Form.Label>
            <Form.Control type="email" name="email" value={formData.email} onChange={handleChange} />
        </Form.Group>
        <Form.Group className="mb-3" controlId="formGroupPassword">
            <Form.Label>Password</Form.Label>
            <Form.Control type="password" name="password" value={formData.password} onChange={handleChange} />
        </Form.Group>
        <Form.Group>
            <Form.Label><Button variant='success' onClick={logIn}>Login</Button></Form.Label>
        </Form.Group>
    </Form>
    </div>
  )
}

export default CustomerLogin