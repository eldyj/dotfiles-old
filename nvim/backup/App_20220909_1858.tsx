import type { Component } from 'solid-js'

class link
{

}

const Nav: Component = $ =>{
  return (
    <h1>
      {$.content}
    </h1>
  )
}

const App: Component = () => {
  return (
    <>
      hello world!!
      <H content="tets"/>
    </>
  )
}

export default App
