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
    this.onclick = `render(()=> <${name}/>, )`
  }
}

const links = (): Array<link> =>
{
  const _links: Array<link> = [
    {name: "Home", onclick: ""},
    {name: "login"},
    {name: "register"}
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
