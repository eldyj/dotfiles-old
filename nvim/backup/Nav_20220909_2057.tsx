import type { Component } from 'solid-js'
import { render } from 'solid-js/web'

const Nav: Component = () =>
{
  let _links = []
  const links = [["Home",<Home/>],["News",<Home/>],["Login",<Home/>]]
  links.forEach( name =>
  {
    const Link: Component = () => 
    {
      constructor(props)
      {
        this.goto = this.goto.bind(this)
      }

      goto()
      {
        render(() => <>name[1]}<>, document.getElementById('root') as HTMLElement)
      }

      return(
        <a onClick={this.goto}>{name[0]}</a>
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
