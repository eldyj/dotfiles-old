/* @refresh reload */
import { render } from 'solid-js/web'

import './index.css'
import Home from './Home'
import Nav from './Nav'

render(() => {
  return(
    <><Nav/><main><Home/></main></>
  )}, document.getElementById('root') as HTMLElement)
