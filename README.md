# homebrew-tap

Homebrew tap for [testbot-agent](https://testbots.ai) — a free-tier local Playwright test runner.

Source code and CI live in a private repository; this tap is kept in sync with each tagged
release automatically (see `testbot-agent`'s `.github/workflows/release.yml`). Don't hand-edit
`Formula/testbot-agent.rb` — it will be overwritten on the next release.

## Install

```sh
brew install testbots-ai/tap/testbot-agent
```
