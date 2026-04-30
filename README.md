# Abrar Savan Portfolio Website

This repository hosts your live portfolio site on GitHub Pages.

Live website:
- https://abrarsavan123.github.io/abrar-portfolio/

## Files You Will Usually Edit

- `portfolio.html` - main portfolio page
- `resume.html` - resume page
- `index.html` - redirects to `portfolio.html`
- `Portfolio links.txt` - raw link notes/reference

## Simplest Update Workflow

1. Edit your files in Cursor.
2. Save changes.
3. Run:

```bash
cd /home/ab/dev/job-search
./publish.sh "Describe your update"
```

If you skip the message, a default commit message is used:

```bash
./publish.sh
```

## What `publish.sh` Does

- Runs `git pull --rebase` to get latest changes
- Stages all edits with `git add .`
- Creates a commit (only if there are changes)
- Pushes to GitHub (`main` branch)
- GitHub Pages auto-deploys your site

## First-Time Setup (already done)

These were already completed for this project:
- Git repo initialized
- Remote linked to GitHub repo
- GitHub Pages enabled (branch: `main`, path: `/`)

## Common Commands (Manual Backup)

If you do not use `publish.sh`, use:

```bash
cd /home/ab/dev/job-search
git pull --rebase
git add .
git commit -m "Update portfolio"
git push
```

## Troubleshooting

- **Site not updating yet**: wait 1-3 minutes, then hard refresh (`Ctrl+Shift+R`)
- **No changes to commit**: script will say `No changes to publish.`
- **Merge conflict on pull**: resolve conflict in files, then run script again
- **Accidentally changed wrong file**:

```bash
git status
```

Review before publishing.

## Useful Links

- Repo: https://github.com/abrarsavan123/abrar-portfolio
- Live Site: https://abrarsavan123.github.io/abrar-portfolio/
- LinkedIn: https://www.linkedin.com/in/abrar-savan-992a681a0/
