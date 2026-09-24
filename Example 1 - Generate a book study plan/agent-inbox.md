# Mode: agent-inbox — Queue requests for the next session (light example, bonus)

> The companion script ships in this kit as `agent-inbox.mjs.txt` (Gmail
> blocks `.mjs` attachments, even inside zips). Save it back as
> `agent-inbox.mjs` to run it. The originals live at
> https://github.com/rShaw5/ai-power-tools (see `Example 1` and `scripts/`).

Append-only checklist at `data/agent-inbox.md` that the assistant drains at session start.

## Queue a request

```
node agent-inbox.mjs add "consider reading The Unnatural Promoter later"
node agent-inbox.mjs list            # pending items
node agent-inbox.mjs list --all      # include resolved
node agent-inbox.mjs resolve 1 --result "added to reading list"
```

## Protocol

1. Read `data/agent-inbox.md`. If missing or no unchecked items, say so and stop.
2. Run each unchecked item top-to-bottom.
3. After each, mark `[x]` and append the one-line result.
4. Items needing live user input → ask the user instead of running them.
