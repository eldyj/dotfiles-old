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

const links = (): Array<Component> =>
{
  let _links: Array<Component>
  for( name in ["Home","News","Login"])
  {
    let _links: Component = () => <a href="#">{name}</a>
    Link.AddEventListener('click',() => {
      render(() => <App>, document.getElementById('root') as HTMLElement)
    })
    _links.push(<link/>)
  }
  return (
    <nav>
      {_links}
    <nav/>
  )
}

const Nav: Component = () =>
{
  re

export default Nav
