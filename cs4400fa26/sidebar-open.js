(function () {
    function openSidebar() {
        var anchor = document.getElementById('mdbook-sidebar-toggle-anchor');
        if (anchor) anchor.checked = true;
        document.documentElement.classList.add('sidebar-visible');
        try { localStorage.setItem('mdbook-sidebar', 'visible'); } catch (e) {}
    }
    if (document.readyState === 'loading') {
        document.addEventListener('DOMContentLoaded', openSidebar);
    } else {
        openSidebar();
    }
})();
