#!/bin/bash
set -euo pipefail

# Only run in Claude Code cloud sessions
if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

# Register the REA MCP server and skill for Claude Code (idempotent)
npx -y rea-agents@6.7.0 setup --yes --client claude_code > /dev/null
