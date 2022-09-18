import type { Component } from 'solid-js'

class link
{
  url: String
  name: String
  constructor(url: String)
  {
    this.url -
  }
}

const links = (): Array<link> =>
{
  const _links: Array<link> = [{url: "/",name: "home"}, {url: "/login", name: "login"}]
  return _links
}

const Nav: Component = $ =>
{
  return(
    <h1>
      {$.content}
    </h1>
  )
}

const App: Component = () =>
{
  return(
    <>
      hello world!!
    </>
  )
}

console.log(links())

export default App
