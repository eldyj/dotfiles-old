import type { Component } from 'solid-js'

class link
{
  url: String
  name: String
  constructor(url: String, name: String)
  {
    this.url = url
    this.name = name
  }
}

const links = (): Array<link> =>
{
  const _links: Array<link> = [
    {url: "/",name: "home"},
    {url: "/login.html", name: "login"},
    {url: "/register.html", name: "register"}
  ]
  return _links
}

const Nav: Component = () =>
{
  return(
    <nav>
      <For each={links()}>
        {link=><a href={link.url}>{link.name}</a>}
      </For>
    </nav>
  )
}

export default App
