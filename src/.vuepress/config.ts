import { defineUserConfig } from "vuepress";

import theme from "./theme.js";

export default defineUserConfig({
  base: "/",

  locales: {
    "/": {
      lang: "en-US",
      title: "Fovir's Knowledge Base",
      description: "Choose your language and start!",
    },
  },

  head: [
    ["script", { src: "https://umami.fovir.fyi/script.js", "data-website-id": "a9745ebe-09bc-4cdc-8453-5d52ad40e421" },]
  ],

  theme,

  // Enable it with pwa
  // shouldPrefetch: false,
});
