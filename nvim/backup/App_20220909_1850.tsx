import type { Component } from 'solid-js'

const H: Component = (size: Number, content: String) => {
  return (
    <h{size}>
      {}
    </h{size}>
  )
}

const App: Component = () => {
  return (
    <>
      hello world!!
    </>
  )
}

export default App
