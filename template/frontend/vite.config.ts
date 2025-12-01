import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'

// https://vite.dev/config/
export default defineConfig({
    plugins: [
      react()
    ],
    // added in order the package "primeicons" works
    server: {
        fs: {
            // Allow serving fonts from node_modules/.pnpm
            allow: ['..'],
        },
    },
    assetsInclude: ['**/*.woff', '**/*.woff2', '**/*.ttf', '**/*.eot']
})
