import type { Component } from 'solid-js'
import { render } from 'solid-js/web'

const Nav: Component = () =>
{
  let _links = []
  const links = ["Home","News","Login"]
  links.forEach( name =>
  {
    const Link: Component = () => 
    {
      constructor(props)
      {
        this.sayHello = this.sayHello.bind(this)
      }

      goto()
      {
        
      }

      return(
        <a href="#">{name}</a>
      )
    }
    _links.push(<Link/>)
  })

  return (
    <nav>
      {_links}
    </nav>
  )
}

export default Nav
