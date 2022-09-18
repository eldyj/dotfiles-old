import type { Component } from 'solid-js'

const H: Component = ($) => {
  console.log(content)
  return (
    <h{$}>
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
