import React, { useEffect, useState } from 'react'
import SingleReview from './SingleReview'


const Reviews = () => {
    const [reviews, setReviews] = useState([])

    useEffect(() => {
        fetch("/reviews")
    .then(res => res.json())
    .then(data => setReviews([...data]))
    }, [])

  return (
    <div className='container'>
        {reviews.map(review => <SingleReview title={review.title}/>)}
    </div>
  )
}

export default Reviews