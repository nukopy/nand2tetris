# ----------------------------------------
# for CI
# ----------------------------------------

format:
    cargo fmt --all -- --check

lint:
    cargo clippy --all-targets --all-features -- -D warnings

check:
    cargo check --workspace --all-targets --locked

test:
    cargo test --workspace

# ----------------------------------------
# for CD
# ----------------------------------------

publish-dry-run:
    cargo ws publish --dry-run
