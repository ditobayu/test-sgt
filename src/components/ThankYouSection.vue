<template>
  <section class="thank-you">Thank you</section>
</template>

<script>
export default {
  name: 'ThankYouSection'
};
</script>

<style lang="scss" scoped>
$primary-color: #c6fb50;
$font-primary: 'Recife Display', sans-serif;

.thank-you {
  height: 100vh;
  width: 100%;
  display: flex;
  align-items: center;
  justify-content: center;
  margin: 0;
  font-family: $font-primary;
  font-size: 4em;
  line-height: 0.8311688311688312;
  font-weight: 400;
  letter-spacing: -0.02em;
  color: $primary-color;
}
</style>
