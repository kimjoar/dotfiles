---
name: zshrc-cleanup
description: Clean up .zshrc when third-party tools modify it, moving additions into the modular .zsh.d/ structure
---

# zshrc-cleanup

This skill detects and refactors third-party additions to `.zshrc`, moving them into the modular `.zsh.d/` structure.

## Background

The dotfiles repo uses a modular zsh configuration:
- `.zshrc` contains ONLY a 6-line loader that sources all `.zsh.d/*.zsh` files
- `.zsh.d/` contains numbered modular files (e.g., `00_checks.zsh`, `35_path.zsh`, `70_bun.zsh`)

Third-party tools frequently append to `.zshrc` directly (e.g., `# Added by Antigravity`). This breaks the modular pattern.

## The Correct .zshrc State

```bash
if [ -d ~/.zsh.d ]; then
  for component in ~/.zsh.d/*.zsh; do
    [ -x $component ] && . $component
  done
  unset component
fi
```

**Anything after line 6 is a third-party addition that must be moved.**

## Procedure

### Step 1: Check for Additions

Read `~/.zshrc` (or `/Users/kimjoar/dev/dotfiles/.zshrc` in the dotfiles repo).

If the file has only 6 lines (the loader block), report "No cleanup needed" and stop.

### Step 2: Extract Third-Party Additions

For lines 7+, identify each tool addition:
- Look for `# Added by ToolName` comments to identify the tool
- If no comment, ask the user what tool added the lines

### Step 3: Decide Placement

For each tool addition, check if it belongs in an existing `.zsh.d/` file:

**Same ecosystem examples:**
- Node version managers (nvm, fnm, volta) → check `42_nvm.zsh`
- Python tools → check `50_pyenv.zsh`
- Ruby tools → check `90_rbenv.zsh`
- Rust tools → check `60_rust.zsh`
- Go tools → check `85_go.zsh`

**If it fits an existing file:** Append the content to that file.

**If it's a new tool:** Create a new file in the 70-89 range (where tools like bun, husky, tana live). Use the next available number.

### Step 4: Create/Update the Target File

File naming convention: lowercase, underscores for spaces (e.g., `76_antigravity.zsh`)

Keep the content minimal - just what's needed for the tool to work. Include the original comment if present.

### Step 5: Make Executable (CRITICAL)

Run `chmod +x` on any new or modified file.

**This is required** - the loader uses `[ -x $component ]` to check executability before sourcing. Non-executable files are skipped.

### Step 6: Restore .zshrc

Replace `.zshrc` with the clean 6-line loader:

```bash
if [ -d ~/.zsh.d ]; then
  for component in ~/.zsh.d/*.zsh; do
    [ -x $component ] && . $component
  done
  unset component
fi
```

### Step 7: Verify

1. Confirm `.zshrc` is exactly 6 lines
2. Confirm the new/updated `.zsh.d/` file exists and is executable
3. Report what was moved and where

## Example

**Before:**
```
# .zshrc has 10 lines - loader + "# Added by Antigravity" + PATH export
```

**Actions:**
1. Detect "Antigravity" tool from comment
2. No existing file for Antigravity → create `76_antigravity.zsh` (next available in 70-89)
3. Write content to new file
4. Run `chmod +x .zsh.d/76_antigravity.zsh`
5. Restore `.zshrc` to 6-line loader

**After:**
```
# .zshrc is clean (6 lines)
# .zsh.d/76_antigravity.zsh contains the Antigravity config and is executable
```
