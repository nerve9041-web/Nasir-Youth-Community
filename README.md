# Nasir Youth Community — News, History & Memory Archive

> **Preserving Our History. Remembering Every Life. Documenting the Truth.**  
> Dedicated digital archive and community journalism platform for **Nasir County, Upper Nile State, South Sudan**.

---

## 📖 Overview

The **Nasir Youth Community (NYC) Archive** is a complete, static web platform designed to preserve historical heritage, document conflict and human rights incidents, honor civilian lives lost, and provide rigorous community news from Nasir County along the Sobat River (*Kier*).

### Core Sections & Architecture

1. **Homepage (`/`)**:
   - Institutional Hero section featuring the Sobat River heritage and archive counters.
   - Editorial charter & "Why We Report" section (**matching the user-provided reference design**).
   - Dedicated Bombing & Airstrike spotlight.
   - Interactive map preview & before-and-after satellite comparison.
   - Victims' memorial tribute slider.
   - Newsletter subscription bar (*"Important stories. Delivered thoughtfully."*).
   - Deep forest green institutional footer with community contact information.

2. **News & Current Affairs (`/news`)**:
   - Filterable categories: Security & Humanitarian, Peacebuilding, Health & Infrastructure, Culture & Heritage.
   - Distinguishes breaking news from developing field reports and historical records.
   - Full-text article modal reader with primary sources and author attributions.

3. **History of Nasir (`/history`)**:
   - Scholarly, multi-chapter documentation:
     - **Chapter 01:** Origins & the Sobat River Homeland (Eastern Jikany Nuer migrations, ecology, transhumance).
     - **Chapter 02:** Traditional Leadership & Culture (*Luak* architecture, *Kuaar Muon* dispute mediation, *Cieng* solidarity).
     - **Chapter 03:** Colonial Era & American Presbyterian Mission (Fort Nasir 1912, American Mission 1913, Nasir Hospital, *Thok Nath* literacy).
     - **Chapter 04:** The 1991 Nasir Declaration (Dr. Riek Machar, Dr. Lam Akol, Gordon Kong Chuol, self-determination schism, civilian toll).
     - **Chapter 05:** The 2013–2018 Civil War & the Battle for Nasir (Ground offensives, aerial bombings, flight to Gambella refugee camps).
     - **Chapter 06:** Modern Era (2020–2026): Reconstruction, dyke construction, youth peace accords.
   - Academic citations and consensus status badges on every chapter.

4. **Bombing and Airstrike Records (`/bombings`)**:
   - Prominent, dedicated section cataloging documented aerial attacks in Nasir County (Antonov cargo barrel bombs, Mi-24 helicopter gunship strikes).
   - **Interactive Leaflet Cartography**: Filterable by year, payam, attack type, and verification status.
   - **Before-and-After Photographic & Satellite Damage Archive**: Interactive split-slider and side-by-side comparative views.
   - Detailed incident dossiers with ordnance analysis, crater measurements, UNMISS/CTSAMVM report numbers, and official government statements.

5. **Conflict & Civilian Deaths Archive (`/incidents`)**:
   - 11-point human rights investigation records for documented armed confrontations, indiscriminate shelling, village burning, and river ambushes.
   - Special focus on allegations involving South Sudanese government forces and other armed actors, maintaining transparent distinctions between verified findings and claims.
   - Safe victim rosters cleared of privacy hazards.

6. **Victims’ Memorial Sanctuary (`/memorial`)**:
   - Respectful digital memorial with names, ages, villages of origin, dates of loss, and biographical tributes.
   - Interactive **"Light a Candle"** tribute counter (persisted in browser state).
   - **"Submit a Family Tribute or Record Correction"** interactive intake form with privacy and consent levels.

7. **Interactive Chronological Timeline (`/timeline`)**:
   - Spanning 1912 to 2026 with filterable historical eras and thematic categories (Political, Conflict, Humanitarian, Cultural, Health).

8. **Media & Documents Repository (`/media` & `/documents`)**:
   - Historical photographs, cartographic surveys (1934 Sobat River Basin), UNMISS human rights reports, and declassified files.
   - Oral History player featuring Elder Stephen Chuol with synchronized translation transcript.
   - Downloadable text and PDF documentation files.

9. **Oral History & Community Testimonies (`/testimonies`)**:
   - Consent-based survivor accounts and elders' recollections.
   - Secure intake submission form with anonymity controls (Protected Pseudonym, Public Consent, Confidential).

10. **Staff Administration Console (`/admin`)**:
    - Role-based login (Senior Archivist, Researcher, Moderator).
    - Review and moderation queue for public testimony submissions and memorial tributes.
    - Export complete archive dataset as JSON for digital preservation.

---

## 🚀 Quickstart & Local Installation

This project is built with **React 19**, **Vite**, **Tailwind CSS**, and **Leaflet**.

### 1. Requirements
- Node.js (v18.0 or newer)
- npm (v9.0 or newer)

### 2. Installation
Open your terminal in the project root:
```bash
# Navigate to the project
cd nasir-youth-community

# Install dependencies in the client
npm run setup
```

### 3. Launch Development Server
```bash
npm run dev
```
Open your browser at `http://localhost:5173`.

### 4. Build Static Production Website
To compile an optimized, self-contained static site:
```bash
npm run build
```
The output will be created in `client/dist/`.

### 5. Preview Static Website Locally
```bash
npm run preview
```
Serves the compiled production static site at `http://localhost:4173`.

### 6. Run Automated Test Suite
Verify dataset integrity, citations, and structural schemas:
```bash
npm test
```

---

## 🌐 Static Web Deployment

Because this website is compiled with relative path resolution (`base: './'`) and client-side hash routing, it can be deployed to **any static hosting service** or served directly from a web server.

### Deploying to GitHub Pages
1. Build the static site: `npm run build`
2. Push the contents of `client/dist/` to your `gh-pages` branch, or configure GitHub Actions to deploy from the `client/dist` directory.

### Deploying to Netlify / Vercel
- **Build Command:** `cd client && npm install && npm run build`
- **Publish Directory:** `client/dist`

### Deploying to Nginx or Apache
Simply copy the contents of `client/dist/` into your web server's root folder (`/var/www/html/` or `htdocs/`).

---

## 🗄️ Optional Production Database Setup (MySQL)

For deployments that wish to connect the archive to a central relational database:
1. Ensure MySQL 8.0+ is running.
2. Import the database schema:
   ```bash
   mysql -u root -p < database/schema.sql
   ```
3. Seed initial records:
   ```bash
   mysql -u root -p < database/seed.sql
   ```

---

## 🛡️ Sourcing & Verification Standard

The archive adheres to a 4-tier verification policy:
- **Tier 1 (Verified Independent):** Multilateral UNMISS, CTSAMVM, or forensic medical confirmation.
- **Tier 2 (Corroborated Report):** Multiple independent survivor/elder accounts cross-verified with satellite thermal data.
- **Tier 3 (Under Investigation):** Developing reports where conflicting claims exist.
- **Tier 4 (Unverified / Refuted):** Rumors or partisan claims lacking verifiable corroboration.

---

## 📄 License & Attribution
- Text & Archival Research: © 2026 Nasir Youth Community (Creative Commons BY-NC 4.0).
- Photographs and satellite imagery: Credited to respective source institutions (UNMISS, UNOSAT, DigitalGlobe, Presbyterian Historical Society, open community archive).
