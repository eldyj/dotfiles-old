import type { Component } from 'solid-js'

class link
{
  url: String
  name: String
  onclick: String
  constructor(url: String, name: String, onclick: String)
  {
    this.url = url
    this.name = name
    this.onclick = `render(()=> <${name}/>, document.getElementById('root') as HTMLElement)`
  }
}

const links = (): Array<link> =>
{
  const _links: Array<link> = [
    {name: "Home"},
    {name: "Login"},
    {name: "Register"}
  ]
  return _links
}

const Nav: Component = () =>
{
  return(
    <nav>
      <For each={links()}>
        {link=><a href="#" onclick=>{link.name}</a>}
      </For>
    </nav>
  )
}

export default Nav
