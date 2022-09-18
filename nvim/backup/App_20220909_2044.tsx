import type { Component } from 'solid-js'
import { render } from 'solid-js/web'

const Nav: Component = () =>
{
  let _links = []
  const links = ["Home","News","Login"]
  links.forEach( name =>
  {
    let Link: Component = () => <a href="#"
    onClick={render(() => <App/>,
                    document.getElementById('root') as HTMLElement)}>{name}</a>
    _links.push(<Link/>)
  })
  return (
    <nav>
      {_links}
    </nav>
  )
}

const App: Component = () =>
{
  return(
    <>
      <Nav/>
    </>
  )
}

export default App
