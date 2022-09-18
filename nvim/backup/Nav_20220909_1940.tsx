import type { Component } from 'solid-js'

class link
{
  url: String
  name: String
  constructor(url: String, name: String)
  {
    this.url = url
    this.name = name
    render(()=> <${this.name}/>, document.getElementById('root') as HTMLElement)`
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
        {link=><a href="#" onclick={link.onclick}>{link.name}</a>}
      </For>
    </nav>
  )
}

export default Nav
