# Worked example: planning a shareable starter kit (annotated)

Scope: the kit-planning thread only, from the kit request onward. Earlier
turns about the book study are out of scope. Names, paths, and secrets
have been scrubbed; excerpts are truncated with […] where cut. Each
section pairs what the plan showed with the steering it drew, so the
correction has context.

> A note on iterating: by this point in the thread, enough rounds had
> landed that further iterations were much faster. Review meant scanning
> the plan for the current fix requests and checking nothing else had
> gone wildly off-track — not re-reading the whole plan in full each time.

## 1. The opening request

You said:

> "My friend […] is interested in getting a package of info for the
> `Plan` mode settings I use, the content of ~/Code/reading/[…] and how
> I generated it, and how to set up and use ~/Code/career-ops. Set up a
> plan to generate a zip file of resources […]"

The plan showed (first draft):

> "| 1 | Inventory Plan-mode settings […] | List your Plan settings
> files | […] | group-A: independent inventories | […] Stage in /tmp,
> zip as `[name]-starter-<date>.zip` […]"

→ Three inventories, a HOW-GENERATED story, a redaction pass, and a zip
build with unzip verification.

## 2. "Use the public repo, not my local install"

You said:

> "Use https://github.com/career-ops-hq/career-ops as the resource for
> career-ops, not my local install. […] There is only meant to ever be
> one overseer. […] Save the result to `~/Documents/Zips`"

Plus: assume zero knowledge — a "customization and assembly starter kit",
not plug-and-play.

The plan had shown:

> "| 3 | Inventory `~/Code/career-ops` starter subset […] |
> […] `[name]-starter-<date>.zip` […]"

→ Plan narrowed to public sources only, a single Overseer dispatching
executors, and a dated zip in the new location.

## 3. "Harness-agnostic entirely" + a new operating rule

You said:

> "The kit should be harness-agnostic entirely. Not even making mention
> of opencode, Claude, ChatGPT, or anything like that. […] Don't make up
> any 'how-it-was-generated' details, ask me if you're unsure. That's an
> operating rule."

The plan had shown staged paths and assistant-specific wording, e.g.:

> "Overseer: opencode-go/[…] […] `node -e "require('fs')…"` […]"

→ A no-invention operating rule was added, and the kit was scrubbed of
setup names. History gaps became questions instead of guesses.

## 4. The five confirmed facts

You said:

> "Basically, I just took the name of the book, told an LLM to research
> it online and build a summary. I also had an agent build a light
> implementation of the agent-inbox pattern from career-ops, and asked
> the LLM to generate a starter README. Also set up git […] That's it
> in a nutshell."

The plan had shown a HOW-GENERATED draft with open questions attached:

> "## Questions and concerns […] 1. Which parts of the […] story are
> confirmed fact […]?"

→ HOW-GENERATED was locked to exactly these five steps. The writer may
present them freely but invent nothing, and keeps asking during writing.

## 5. "Too restrictive" — relaxing the ban

You said:

> "This is too restrictive. Just don't include instructions that include
> setups for Claude, opencode, or ChatGPT. Other resources and links and
> stuff are fine."

The plan had shown:

> "1. Kit names no specific harness, tool, model, or vendor anywhere
> except the knap link domain itself"

→ The criterion shrank to banning only step-by-step setups, and the
acceptance test changed from a name scan to a setup-instruction scan.
Public links stayed.

## 6. No recipient names + a worked example

You said:

> "Include this planning session as an example of how `Plan` mode is
> used. […] the kit shouldn't reference anyone directly. […] This is a
> kit that I should be able to send to anyone without modification."

The plan had shown a recipient-named zip (`[name]-starter-*.zip`) and
no example section.

→ The thread itself became `examples/plan-session.md`, scrubbed of
names; the zip took a generic filename.

## 7. Correcting the build: folders, titles, template story

You said:

> "Rename the three example folders to: Example 1 - Generate a book
> study plan […] Step 2 is illogical. `plan/template.md` is not
> something for the user to copy and modify […] It's used as a
> _template_ for Plan mode to generate uniform output, nothing more."

The plan's kit had shown `plan/`, `study/`, `career-ops/` folders, and
QUICKSTART had shown:

> "2. Copy `plan/template.md` and fill in one small goal (5 min)."

→ Three Example folders created, README retitled `# AI Power Tool
Examples`, QUICKSTART rebuilt around the corrected template story.

## 8. Fixing the models — twice

The plan first showed invented model IDs:

> "| 1 | […] | opencode-go/muse-spark-1.3-speed | […] |
> | 4 | […] | opencode-go/muse-spark-1.3-performer | […] |"

A docs check showed IDs must be `provider/model` catalog entries. Then
you said:

> "You're not allowed to select models outside the opencode go family.
> […] 'opencode-go/deepseek-v4-flash' is not 'Mechanical merge suits
> cheapest tier'. The cheapest tier (by far) is muse contributor."

→ Final split, verified against the usage table: the cheapest tier does
mechanical work, the strongest allowance tier does prose and judgment.

## 9. Polishing the example itself

You said:

> "This is too vague to be helpful, nor is it really 'annotated' as
> advertised. Instead of a bulleted list, give truncated excerpts from
> the real transcript […] It should include these latest steering turns
> in it as well."

The file had shown a paraphrase list:

> "1. Request: bundle planning settings […] → Draft plan with three
> inventories + zip build. […] Lesson: each answer narrowed scope […]"

→ Excerpts replaced the paraphrase list, including the model-tier and
title corrections.

## 10. The missing-diff hunt

You said:

> "I suspect you unzipped the zip and overwrote the folder with my
> changes. Try unzipping the zip to a temp file name and diff it with
> the folder I set edited."

The build had compared the unpacked folder against the wrong baseline
and reported "zero differences."

→ The build unzipped to a fresh temp name and diffed file-by-file,
surfacing four small edits (title tweaks, two dropped paragraphs) that
were layered into the release.

## 11. Giving corrections context (this round)

You said:

> "The plan mode summary is much closer, but you need to give snippets
> of the actual plan output that I am commenting on so that the
> corrections I'm giving have context."

The file had shown only your side of each exchange.

→ This version: every section now pairs the steering quote with the
plan-side snippet it reacted to.

## Lesson

Each answer narrowed scope, relaxed a rule, or corrected the build — and
the plan was re-rendered each turn with criteria, tests, and rollback
kept in sync. The transcript is the audit trail.
