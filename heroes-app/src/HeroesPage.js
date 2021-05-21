import { useState, useEffect } from 'react'

import HeroForm from './HeroForm'
import HeroCardsContainer from './HeroCardsContainer'

function HeroesPage() {

  const [heroes, setHeroes] = useState([])

  useEffect(() => {
    fetch('http://localhost:3000/heros')
      .then(response => response.json())
      .then(heros => setHeroes(heros))
  }, [])

  return (
    <section className="heros-page">
      <h2>Heroes Page</h2>
      <HeroForm />
      <HeroCardsContainer heroes={heroes} />
    </section>
  )
}

export default HeroesPage;