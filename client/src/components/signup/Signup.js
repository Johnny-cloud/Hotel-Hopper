import React, {useState, useContext} from 'react'
import { useNavigate } from 'react-router-dom'
import {Button, Form} from 'react-bootstrap'
import HotelContext from '../HotelContext'

const Signup = () => {
    const {setCurrentCustomer} = useContext(HotelContext)
    const navigate = useNavigate()

    const [formData, setFormData] = useState({
        name: "",
        email: "",
        password: "",
        password_confirmation: ""
    })

    function signup(){
        fetch("/customers", {
            method: "POST",
            headers: {"Content-Type": "application/json"},
            body: JSON.stringify(formData)
        })
        .then(res => {
            console.log(res)
            if(res.ok){
                res.json().then(user => setCurrentCustomer(user))
                navigate("/")
            }
        })
        setFormData({
            name: "",
            email: "",
            password: "",
            password_confirmation: ""
        })
    }

    function handleChange(event){
        setFormData({...formData, [event.target.name]: event.target.value})
    }

  return (
    <div className='container'>
        <Form className='signup-form'>
        <h3>Sign up</h3>
        <Form.Group>
            <Form.Label>Name</Form.Label>
            <Form.Control type='text' name="name" value={formData.name} onChange={handleChange}></Form.Control>
        </Form.Group>
        <Form.Group>
            <Form.Label>Email</Form.Label>
            <Form.Control type="email" name='email' value={formData.email} onChange={handleChange}></Form.Control>
        </Form.Group>
        <Form.Group>
            <Form.Label>Password</Form.Label>
            <Form.Control type="password" name='password' value={formData.password} onChange={handleChange}></Form.Control>
        </Form.Group>
        <Form.Group>
            <Form.Label>Confirm Password</Form.Label>
            <Form.Control type="password" name='password_confirmation' value={formData.password_confirmation} onChange={handleChange}></Form.Control>
        </Form.Group>
        <Form.Group className='btn-container'>
            <Form.Label><Button variant='success' onClick={signup}>Signup</Button></Form.Label>
        </Form.Group>
    </Form>
    </div>
    
  )
}

export default Signup