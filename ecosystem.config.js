module.exports = {
    apps: [
        {
            name: 'back',
            port: process.env.BACKEND_PORT,
            exec_mode: 'cluster',
            instances: 'max',
            script: './back/dist/main.js',
            watch: true
        },
        {
            name: 'front',
            port: process.env.FRONTEND_PORT,
            exec_mode: 'cluster',
            instances: 'max',
            script: './front/.output/server/index.mjs',
            watch: true
        }
    ]
}
