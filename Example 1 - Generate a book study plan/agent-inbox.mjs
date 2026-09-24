#!/usr/bin/env node
/**
 * agent-inbox.mjs — append-only queue (light example, no deps).
 * Usage:
 *   node agent-inbox.mjs add "some request"
 *   node agent-inbox.mjs list [--all]
 *   node agent-inbox.mjs resolve 1 --result "done"
 */
import { readFileSync, writeFileSync, appendFileSync, existsSync, mkdirSync } from 'fs';
import { dirname } from 'path';

const PATH = process.env.READING_INBOX || 'data/agent-inbox.md';
const HEADER = '# Agent Inbox\n\n> At session start, read this file. Run each unchecked item top-to-bottom.\n> After each, mark `[x]` and append the one-line result.\n> Nothing here auto-acts without review.\n\n';

const stamp = () => new Date().toISOString().slice(0, 16).replace('T', ' ');
const oneLine = (s) => String(s ?? '').replace(/\s*\n\s*/g, ' ').trim();
function ensureFile() {
  if (existsSync(PATH)) return;
  mkdirSync(dirname(PATH), { recursive: true });
  writeFileSync(PATH, HEADER);
}
const cmd = process.argv[2];
if (cmd === 'add') {
  const text = oneLine(process.argv.slice(3).join(' '));
  if (!text) { process.stderr.write('add needs a request\n'); process.exit(1); }
  ensureFile();
  appendFileSync(PATH, `- [ ] ${stamp()} — ${text}\n`);
  process.stdout.write(`Queued: ${text}\n`);
} else {
  process.stdout.write('Usage:\n  node agent-inbox.mjs add "..."\n  node agent-inbox.mjs list [--all]\n  node agent-inbox.mjs resolve <n> [--result "..."]\n');
}
