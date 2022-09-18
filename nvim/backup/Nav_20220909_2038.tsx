import type { Component } from 'solid-js'

class link
{
  url: String
  name: String
  constructor(name: String)
  {
    this.name = name
    this.onclick = `render(()=> <${this.name}/>, document.getElementById('root') as HTMLElement)`
  }
}

const Nav: Component = () =>
{
  let _links = []
  const links = ["Home","News","Login"]
  links.forEach( name =>
  {
    let Link: Component = () => <a href="#" onClick={render(() => <App/>, document.getElementById('root') as HTMLElement)}>{name}</a>
    _links.push(<Link/>)
  })
  return (
    <nav>
      {_links}
    </nav>
  )
}

export default Nav
