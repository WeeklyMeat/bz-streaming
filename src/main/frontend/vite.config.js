import { defineConfig } from 'vite'
import { svelte } from '@sveltejs/vite-plugin-svelte'
import {viteSingleFile} from "vite-plugin-singlefile";
import autoPreprocess from 'svelte-preprocess';

// https://vitejs.dev/config/
export default defineConfig(({ command }) => ({
  plugins: [
    svelte({
      /* plugin options */
      preprocess: autoPreprocess()
    }),
    command === 'build' &&
    viteSingleFile({
      removeViteModuleLoader: true
    })
  ],
  build: {
    minify: false
  }
}));
