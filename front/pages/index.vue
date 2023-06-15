<template>
    <div>
        <div class="main-section">
            <div class="main-text">
                <div>
                    Getting distracted by infrastructure setup and routine development tasks is a thing of the past.
                    Imagine being able to fully focus on programming without wasting time and effort on unnecessary details.
                    <br>
                    <b>Websculptor</b> liberates you from mundane tasks, enabling you to unleash your potential.
                    Don't waste time on setup — devote yourself to what you love: programming!
                </div>
                <div class="buttons">
                    <NuxtLink target="_blank" class="button" to="https://github.com/evgenx/websculptor">Watch on Github</NuxtLink>
                    <NuxtLink target="_blank" class="button" to="https://websculptor.dev/docs">Documentation</NuxtLink>
                </div>
            </div>
            <img class="main-image" src="/web_sculptor.svg" alt="main image">
        </div>
    </div>
</template>

<script setup>
definePageMeta({
    layout: "default",
});

useHead({
    title: 'Web Sculptor',
    meta: [
        { name: 'description', content: 'Web Sculptor' }
    ],
})

</script>

<style scoped>
.main-section {
    position: relative;
    margin: 24px 24px 0;
}

.main-image {
    width: 100%;
}

.main-text {
    position: absolute;
    width: 33vw;
}

.buttons {
    display: flex;
    align-items: center;
    gap: 12px;
    margin-top: 24px;
}

.button {
    text-decoration: none;
    font-size: 12px;
    line-height: 16px;
    padding: 6px 12px;
    background-color: #0E73F6;
    color: #fff;
    font-weight: 600;
    border-radius: 4px;
}
</style>