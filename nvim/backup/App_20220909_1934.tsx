import type { Component } from 'solid-js'

class link
{
  url: String
  name: String
  constructor(url: String, name: String)
  {
    this.url = url
    this.name = name
  }
}

con

const App: Component = () =>
{
  return(
    <>
      <Nav/>
    </>
  )
}

export default App
