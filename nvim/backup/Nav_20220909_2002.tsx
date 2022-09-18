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
    let link: Component = () => <a href="#">{name}</a>
    link.AddEventListener('click',() => {
      render(() => </>, document.getElementById('root') as HTMLElement)
    })
    _links.push(<link/>)
  }
  return _links
}

const Nav: Component = () =>
{
  return(
    <nav>
      <For each={links()}>
        {link =><link>}
      </For>
    </nav>
  )
}

export default Nav
