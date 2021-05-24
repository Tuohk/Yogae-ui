<template>
  <div>Button 示例</div>
  <h2>示例1</h2>
    <Button theme="button">你好</Button>
    <Button theme="link">你好</Button>
    <Button theme="text">你好</Button>
  <h2>示例2</h2>
      <Button level="main">主要按钮</Button>
      <Button>普通按钮</Button>
      <Button level="danger">危险按钮</Button>
  <h2>示例3</h2>
    <Button disabled>禁用按钮</Button>
    <Button theme="link" disabled>禁用链接按钮</Button>
    <Button theme="text" disabled>禁用按钮</Button>
</template>

<script lang="ts">
import Button from '../lib/Button.vue'
export default {
  components: {
    Button
  },
  setup(){
  }
}
</script>