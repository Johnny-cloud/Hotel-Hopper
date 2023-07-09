import React, { useContext} from 'react'
import HotelContext from '../HotelContext'
import CustomerRoom from './CustomerRoom'
import { Table } from 'react-bootstrap'
const CustomerBookings = () => {
  
    const {currentCustomer} = useContext(HotelContext)
    
    console.log(currentCustomer);


      return (
        <div className='container'>
            <h3>{currentCustomer.name}'s Bookings</h3>
            <div className='container'>
              <Table bordered>
                <thead>
                  <tr>
                    <th>Room Number</th>
                    <th>Room Type</th>
                    <th>Hotel</th>
                  </tr> 
                </thead>
                <tbody>
                  {currentCustomer.rooms.map(room => <CustomerRoom room={room}/>)}
                </tbody>
              </Table>
              
            </div>
        </div>
      )
}

export default CustomerBookings