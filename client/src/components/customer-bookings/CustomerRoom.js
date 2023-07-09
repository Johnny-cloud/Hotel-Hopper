import React from 'react'

const CustomerRoom = ({room}) => {
  return (
        <tr>
           <td>{room.room_num}</td>
            <td>{room.room_type}</td>
            <td>{room.hotel}</td> 
      </tr>
  )
}

export default CustomerRoom