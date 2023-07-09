import React, { useEffect, useState } from 'react'
import { Table } from 'react-bootstrap';
import SingleCustomer from './SingleCustomer';

const Customers = () => {
    const[customers, setCustomers] = useState([])
    let totalCustomers = 0;
    if(customers){
        totalCustomers = customers.length
    }

    useEffect(
        () => {
            fetch("/customers")
            .then(res => {
                if(res.ok){
                    res.json().then(cust => setCustomers(cust))
                }
                else{
                    console.log(res.json())
                }
            })
        }, [totalCustomers]
    );
    console.log(customers);
  return (
    <div>
        <div>
            <Table striped bordered hover >
            <thead>
                <tr>
                    <th>Name</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                {customers.map(customer => <SingleCustomer customer={customer} setCustomers={setCustomers} customers={customers}/>)}
            </tbody>
                
            </Table>
            
        </div>
    </div>
  )
}

export default Customers