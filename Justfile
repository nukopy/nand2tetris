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

version:
    # ref: https://github.com/pksunkara/cargo-workspaces?tab=readme-ov-file#version
    cargo ws version \
        --tag-prefix "v" \
        -m "Release v%v :tada:" \
        --no-git-push \
        --no-individual-tags

publish-dry-run:
    cargo ws publish --dry-run
