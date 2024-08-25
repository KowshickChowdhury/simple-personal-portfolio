<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <a href="/admin" class="navbar-brand">Admin</a>
        <button
            class="navbar-toggler"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#adminNavbarNav"
            aria-controls="adminNavbarNav"
            aria-expanded="false"
            aria-label="Toggle navigation"
        >
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="adminNavbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a href="{{ route('contents.create') }}" class="nav-link bg-primary text-light rounded">
                        Add Content
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>
