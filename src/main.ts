import { createApp } from 'vue'
import App from './App.vue'
import Frank from './components/Frank.vue'
import './index.css'
// @ts-ignore
import {createWebHashHistory,createRouter} from 
'vue-router'

const history = createWebHashHistory()
const router = createRouter({
  history:history,
  routes: [
    {path: '/', component: Frank}
  ]
})

const app = createApp(App)
app.mount('#app')
app.use(router)

