import React from 'react'
import { Button } from 'react-bootstrap'

const SingleBooking = ({booking, bookings, setBookings}) => {

    function checkOut(){
        console.log(booking.id);
        fetch(`/bookings/${booking.id}`, {
            method: "DELETE"
        })
        bookings = bookings.filter(singleBooking => booking.id !== singleBooking.id)
        setBookings(bookings)
    }

  return (
   <tr>
    <td>{booking.customer}</td>
    <td>{booking.room_num}</td>
    <td>{booking.date_in}</td>
    <td>{booking.date_out}</td>
    <td><Button variant='warning' onClick={checkOut} className='checkout'>Check out</Button></td>
   </tr>
  )
}

export default SingleBooking