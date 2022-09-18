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
  for(let name in ["Home","News","Login"])
  {
    let Link: Component = () => <a href="#">{name}</a>
    //Link.AddEventListener('click',() => {
    //  render(() => <App>, document.getElementById('root') as HTMLElement)
    //})
    _links.push(<Link/>)
  }
  return (
    <nav>
      {_links}
    </nav>
  )
}

export default Nav
