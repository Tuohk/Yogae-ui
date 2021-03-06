<template>
  <div class="gulu-tabs">
    <div class="gulu-tabs-nav">
      <div
        class="gulu-tabs-nav-item"
        @click="select(t)"
        :class="{ selected: t === selected }"
        v-for="(t, index) in titles"
        :key="index"
        ref="indicator"
      >
        {{ t }}
      </div>
    </div>
    <div class="gulu-tabs-content">
      <component
        class="gulu-tabs-content-item"
        :class="{ selected: current.props.title === selected }"
        v-for="(current, index) in defaults"
        :is="current"
        :key="index"
      />
    </div>
  </div>
</template>

<script lang="ts">
import Tab from "../lib/Tab.vue";

export default {
  props: {
    selected: {
      type: String
    }
  },

  setup(props, context) {
    const defaults = context.slots.default();
    defaults.forEach((tag) => {
      if (tag.type !== Tab) {
        throw new Error("Tab 子标签必须是 Tab");
      }
    });
    const current = defaults.filter((tag) => {
      return tag.props.title === props.selected;
    });

    const titles = defaults.map((tag) => {
      return tag.props.title;
    });
    const select = (title: string) => {
      context.emit("update:selected", title);
    };
    return { defaults, titles, current, select };
  }
};
</script>

<style lang="scss">
$blue: #40a9ff;
$color: #333;
$border-color: #d9d9d9;
.gulu-tabs {
  &-nav {
    display: flex;
    color: $color;
    border-bottom: 1px solid $border-color;
    &-item {
      padding: 8px 0;
      margin: 0 16px;
      cursor: pointer;
      &:first-child {
        margin-left: 0;
      }
      &.selected {
        color: $blue;
      }
    }
  }
  &-content {
    padding: 8px 0;

    &-item {
      display: none;

      &.selected {
        display: block;
      }
    }
    &-indicator {
      position: absolute;
      height: 3px;
      background: $blue;
      left: 0;
      bottom: -1px;
      width: 100px;
      transition: all 250ms;
    }
  }
}
</style>
