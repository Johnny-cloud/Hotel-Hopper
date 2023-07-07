import React from 'react'
import { Card } from 'react-bootstrap'
import { Rating } from 'react-simple-star-rating'

const SingleReview = ({title}) => {
  return (
    <div>
        <Card style={{width: "18rem"}} className='review'>
            <Card.Body>
                <Card.Text>{title}</Card.Text>
                <Rating iconsCount={5} initialValue={4} size={18}/>
            </Card.Body>
        </Card>
    </div>
  )
}

export default SingleReview