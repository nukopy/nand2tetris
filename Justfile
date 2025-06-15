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

# ローカルリポジトリにおけるリリース用の空コミット & タグ付与までを実行する
version:
    # ref: https://github.com/pksunkara/cargo-workspaces?tab=readme-ov-file#version
    cargo ws version \
        --tag-prefix "v" \
        -m "Release v%v :tada:" \
        --no-git-push \
        --no-individual-tags

release tag:
    # push tag to remote
    git push origin "{{tag}}"

    # create a release on GitHub
    gh release create \
        --title "{{tag}}" \
        --generate-notes \
        --notes "Release {{tag}} :tada:" \
        --draft

publish:
    cargo ws publish --publish-interval 5 --publish-as-is

publish-dry-run:
    cargo ws publish --dry-run
