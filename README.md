# Mimi's Birthday Dinner Chatbot

Single-file static site (index.html) with:
- Event details (Mimi’s, 130a Beach St, Coogee NSW 2034; Sat 16 Aug 2025, 6:30–9:30 PM)
- Google Maps directions
- Menu link
- One-tap RSVP via SMS to +61 414 428 118
- iOS-friendly .ics generator

## Run locally
Just open `index.html` in any browser.

## Deploy to GitHub Pages (Web UI)
1. Create a new public repo on GitHub (e.g. `mimis-birthday`).
2. Upload `index.html`, `.nojekyll`, and this `README.md` to the repository root.
3. In the repo, go to **Settings → Pages**.
4. Under **Build and deployment**, set **Source** to **Deploy from a branch**.
5. Choose the `main` branch and `/ (root)` folder, then click **Save**.
6. Wait ~1 minute; your site will be live at `https://<your-username>.github.io/<repo-name>/`.

## Deploy with GitHub CLI (gh)
```bash
# In this folder:
gh repo create mimis-birthday --public --source=. --remote=origin --push
# Enable Pages (Classic) – or do this in Settings → Pages
gh api -X PUT repos/:owner/mimis-birthday/pages -f build_type=legacy || true
# Set the source to main branch / root
gh api -X POST repos/:owner/mimis-birthday/pages/builds || true
```

## Deploy to Netlify (no login via CLI)
- Drag-and-drop this folder at https://app.netlify.com/drop

## Deploy to Vercel
1. Install Vercel CLI: `npm i -g vercel`
2. Run: `vercel --yes --name mimis-birthday --prod`
