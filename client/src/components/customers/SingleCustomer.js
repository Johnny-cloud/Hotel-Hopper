import React from 'react'
import { Button } from 'react-bootstrap'
const SingleCustomer = ({customer, setCustomers, customers}) => {

    function checkOut(){
        fetch(`/customers/${customer.id}`, {
            method: "DELETE",
        })
  
        setCustomers(customers.filter(inCustomer => customer.id !== inCustomer.id))
    }
  return (
    <tr>
        <td>{customer.name}</td>
        <td><Button variant='warning' onClick={checkOut} className='checkout'>Delete</Button></td>
    </tr>
  )
}

export default SingleCustomer