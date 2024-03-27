function toggleDarkMode() {
    document.body.classList.toggle('dark');
}

function initDarkMode() {
    document.addEventListener("keyup", function(event) {
        var D = 68;
        if (event.keyCode === D) toggleDarkMode();
    });

    var systemDarkModeEnabled =
        window.matchMedia &&
        window.matchMedia('(prefers-color-scheme: dark)').matches;
    //if (systemDarkModeEnabled) toggleDarkMode();
}

function filterPosts(tag) {
    document
        .querySelectorAll(`.tag[data-tag="${tag}"]`)
        .forEach((tag) => tag.classList.add("selected"));
    document
        .querySelectorAll(`.tag:not([data-tag="${tag}"])`)
        .forEach((tag) => tag.classList.remove("selected"));

    document
        .querySelectorAll(`.post[data-tags~="${tag}"]`)
        .forEach((post) => post.style.display = "");
    document
        .querySelectorAll(`.post:not([data-tags~="${tag}"])`)
        .forEach((post) => post.style.display = "none");

    var newUrl = window.location.protocol + "//" + window.location.host + window.location.pathname + `?filter=${tag}`;
    window.history.pushState({path:newUrl}, '', newUrl);
}

function resetPostsFilter() {
    document
        .querySelectorAll(`.tag`)
        .forEach((tag) => tag.classList.remove("selected"));
    document
        .querySelectorAll(`.post`)
        .forEach((post) => post.style.display = "");

    var newUrl = window.location.protocol + "//" + window.location.host + window.location.pathname;
    window.history.pushState({path:newUrl}, '', newUrl);
}

function initPostListFilter() {
    document
        .querySelectorAll(`.tag[data-tag]`)
        .forEach((tag) => tag.addEventListener("click", function(event) {
            var tag = event.target;

            if (tag.classList.contains("selected")) resetPostsFilter();
            else filterPosts(tag.dataset.tag);
        }));

    const filter = (new URLSearchParams(window.location.search)).get('filter');
    if (filter) filterPosts(filter);
}

