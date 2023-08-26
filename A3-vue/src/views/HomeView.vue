<script setup>
import { format } from 'date-fns';
import { onMounted, ref } from 'vue';

const data = ref();

const API_URL = "https://api.openweathermap.org/data/2.5/weather?q=Paris,on,ca&APPID=";
const API_KEY = "PLACEHOLDER"; //add your API key here

onMounted(async () => {
  const res = await fetch(API_URL + API_KEY);
  data.value = await res.json();
});

</script>

<template>
  <div class="home">
    <h1>Welcome to our Home Page</h1>
    <p>Current date and time: {{ format(new Date(), 'yyyy-MM-dd HH:mm:ss') }}</p>
    <p>Current Tempurature at Paris, Ontario, Canada: {{ data?.main?.temp ? (data.main.temp-273.15).toFixed(0) + '° Celsius' : "Loading Temperature..." }}</p>
  </div>
</template>

<style>

</style>
