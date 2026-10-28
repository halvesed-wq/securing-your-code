#!/bin/bash
set -euo pipefail

# Only run in Claude Code cloud sessions
if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

cd "${CLAUDE_PROJECT_DIR:-$(dirname "$0")/../..}"

# Installs server dependencies; the postinstall script also installs
# frontend/ dependencies and builds the frontend and server.
npm install --no-audit --no-fund
