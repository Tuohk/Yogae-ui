<template>
<div>Dialog 示例</div>
<h2>示例1</h2>
<Button @click="toggle" >toggle</Button>
<Dialog :visible = 'x' @update:visible= "x = $event" ></Dialog>
</template>

<script lang="ts">
import { ref } from 'vue'
import Button from '../lib/Button.vue'
import Dialog from '../lib/Dialog.vue'
export default {
  components: {
    Dialog,
    Button
  },
  setup(){
    const x = ref(false)
    const toggle = () => {
      x.value = !x.value
    }
    return {x ,toggle}
  }
}
</script>
<style lang="scss" scoped>

</style>