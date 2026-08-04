# homebrew-tap

Homebrew tap for [testbot-agent](https://testbots.ai) — a free-tier local Playwright test runner.

`testbot-agent` is published to npm; this formula installs it via Homebrew's standard npm-based
Node formula pattern (`depends_on "node"` + `npm install`), kept in sync with each npm release
automatically (see `testbot-agent`'s `.github/workflows/release.yml`). Don't hand-edit
`Formula/testbot-agent.rb` — it will be overwritten on the next release.

## Install

```sh
brew install testbots-ai/tap/testbot-agent
```

Equivalent to:
```sh
npm install -g testbot-agent
```
