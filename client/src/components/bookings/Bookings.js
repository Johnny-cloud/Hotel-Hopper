import React, { useEffect, useState } from 'react'
import SingleBooking from './SingleBooking'
import { Table } from 'react-bootstrap'

const Bookings = () => {
    const [bookings, setBookings] = useState([])


    useEffect(() => {
        fetch("/bookings")
        .then(res => {
            if (res.ok){
                res.json().then(fetchedBookings => setBookings(fetchedBookings))
            }
        })
    }, [bookings.length])
  return (
    <Table stripped bordered>
        <thead>
            <th>Customer</th>
            <th>Room Number</th>
            <th>Date In</th>
            <th>Date Out</th>
        </thead>
        <tbody>
            {bookings.map(booking => <SingleBooking bookings={bookings} setBookings={setBookings} booking={booking}/>)}
        </tbody>
    </Table>
  )
}

export default Bookings