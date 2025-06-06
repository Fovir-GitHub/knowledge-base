import { defineUserConfig } from "vuepress";

import theme from "./theme.js";

export default defineUserConfig({
  base: "/",

  locales: {
    "/en/": {
      lang: "en-US",
      title: "Fovir's Knowledge Base",
      description: "Choose your language and start!",
    },
  },

  theme,

  // Enable it with pwa
  // shouldPrefetch: false,
});
