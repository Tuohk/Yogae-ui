<template>
  <router-view></router-view>
</template>

<script>
import { ref, provide} from 'vue'
import { router } from './router'

export default {
  name: 'App',
  setup(){
    const width = document.documentElement.clientWidth
    const asideVisibile = ref(width <= 500 ? false : true)
    provide('asideVisibile', asideVisibile)
    router.afterEach(() => {
      if(width <= 500){
      asideVisibile.value = false
      }
    })
  }
}
</script>
