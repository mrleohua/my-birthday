# Mimi's Birthday Dinner Chatbot (Address Removed) — Date: 17 Aug 2025

This is a single-file static site (`index.html`) for Leo's birthday at Mimi’s.
It includes:
- Event details (no street address shown) — **Sun 17 Aug 2025, 6:30–9:30 PM**
- Google Maps directions to the venue by name
- Menu link
- One-tap RSVP via SMS to +61 414 428 118
- iOS-friendly .ics generator (location is the venue name only, date/time updated)

## Run locally
Just open `index.html` in any browser.

## Deploy to GitHub Pages (Web UI)
1. Create a new public repo on GitHub (e.g. `mimis-birthday-noaddress-2025-08-17`).
2. Upload `index.html`, `.nojekyll`, and this `README.md` to the repository root.
3. In the repo, go to **Settings → Pages**.
4. Under **Build and deployment**, set **Source** to **Deploy from a branch**.
5. Choose the `main` branch and `/ (root)` folder, then click **Save**.
6. Wait ~1 minute; your site will be live at `https://<your-username>.github.io/<repo-name>/`.

## Deploy with GitHub CLI (gh)
```bash
# In this folder:
gh repo create mimis-birthday-noaddress-2025-08-17 --public --source=. --remote=origin --push
# Then enable Pages in Settings → Pages (Branch: main, Folder: / (root))
```

## Deploy to Netlify
- Drag-and-drop this folder at https://app.netlify.com/drop

## Deploy to Vercel
1. Install Vercel CLI: `npm i -g vercel`
2. Run: `vercel --yes --name mimis-birthday-noaddress-2025-08-17 --prod`
