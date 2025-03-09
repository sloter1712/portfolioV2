# Welcome to your Lovable project

## Project info

**URL**: https://lovable.dev/projects/2e292220-74e6-46ed-b687-bfb843859613

## How can I edit this code?

There are several ways of editing your application.

**Use Lovable**

Simply visit the [Lovable Project](https://lovable.dev/projects/2e292220-74e6-46ed-b687-bfb843859613) and start prompting.

Changes made via Lovable will be committed automatically to this repo.

**Use your preferred IDE**

If you want to work locally using your own IDE, you can clone this repo and push changes. Pushed changes will also be reflected in Lovable.

The only requirement is having Node.js & npm installed - [install with nvm](https://github.com/nvm-sh/nvm#installing-and-updating)

Follow these steps:

```sh
# Step 1: Clone the repository using the project's Git URL.
git clone <YOUR_GIT_URL>

# Step 2: Navigate to the project directory.
cd <YOUR_PROJECT_NAME>

# Step 3: Install the necessary dependencies.
npm i

# Step 4: Start the development server with auto-reloading and an instant preview.
npm run dev
```

**Edit a file directly in GitHub**

- Navigate to the desired file(s).
- Click the "Edit" button (pencil icon) at the top right of the file view.
- Make your changes and commit the changes.

**Use GitHub Codespaces**

- Navigate to the main page of your repository.
- Click on the "Code" button (green button) near the top right.
- Select the "Codespaces" tab.
- Click on "New codespace" to launch a new Codespace environment.
- Edit files directly within the Codespace and commit and push your changes once you're done.

## What technologies are used for this project?

This project is built with .

- Vite
- TypeScript
- React
- shadcn-ui
- Tailwind CSS

## How can I deploy this project?

Simply open [Lovable](https://lovable.dev/projects/2e292220-74e6-46ed-b687-bfb843859613) and click on Share -> Publish.

## I want to use a custom domain - is that possible?

We don't support custom domains (yet). If you want to deploy your project under your own domain then we recommend using Netlify. Visit our docs for more details: [Custom domains](https://docs.lovable.dev/tips-tricks/custom-domain/)

## Podešavanje EmailJS za kontakt formu

Projekat koristi [EmailJS](https://www.emailjs.com/) za slanje emailova direktno iz kontakt forme. Da biste podesili EmailJS:

1. Registrujte se na [EmailJS](https://www.emailjs.com/)
2. Kreirajte novi servis (npr. Gmail, Outlook, itd.)
3. Kreirajte novi template sa sledećim parametrima:
   - `name` - Ime pošiljaoca
   - `email` - Email pošiljaoca
   - `subject` - Naslov poruke
   - `message` - Sadržaj poruke
4. Kopirajte vaš Service ID, Template ID i Public Key
5. Kreirajte `.env` fajl u root direktorijumu projekta sa sledećim sadržajem:
   ```
   VITE_EMAILJS_SERVICE_ID=your_service_id
   VITE_EMAILJS_TEMPLATE_ID=your_template_id
   VITE_EMAILJS_PUBLIC_KEY=your_public_key
   ```
6. Restartujte razvojni server

Nakon ovih koraka, kontakt forma će slati emailove na vašu email adresu.

## Postavljanje projekta na Netlify

Projekat možete postaviti na Netlify na dva načina:

### Metod 1: Netlify Drop (bez GitHub-a)

1. Izgradi projekat lokalno:
   ```bash
   npm run build
   ```

2. Prijavite se na [Netlify](https://www.netlify.com/)

3. Prevucite i otpustite `dist` folder direktno na Netlify interfejs (https://app.netlify.com/drop)

4. Sačekajte da se upload završi i vaš sajt će biti dostupan na Netlify URL-u

5. Možete konfigurisati prilagođeni domen u Netlify postavkama ako želite

6. **Važno**: Pošto koristite Netlify Drop, morate ručno postaviti environment varijable za EmailJS:
   - U Netlify dashboard-u, idite na Site settings > Build & deploy > Environment
   - Dodajte sledeće environment varijable:
     - `VITE_EMAILJS_SERVICE_ID`: service_mo3g4jp
     - `VITE_EMAILJS_TEMPLATE_ID`: template_3knfq2b
     - `VITE_EMAILJS_PUBLIC_KEY`: gD_VOaKn7S_KiVrPx

### Metod 2: Preko GitHub-a (za kontinuirani deployment)

1. Napravite GitHub repozitorijum i postavite projekat na njega
   
2. Prijavite se na [Netlify](https://www.netlify.com/)

3. Kliknite na "New site from Git" dugme

4. Izaberite GitHub kao vaš Git provider

5. Autorizujte Netlify da pristupi vašem GitHub nalogu

6. Izaberite repozitorijum koji ste kreirali

7. Konfigurišite postavke za deploy:
   - Build command: `npm run build`
   - Publish directory: `dist`

8. Kliknite na "Deploy site"

9. Sačekajte da se deploy završi i vaš sajt će biti dostupan na Netlify URL-u

10. Netlify će automatski detektovati promene u vašem GitHub repozitorijumu i pokrenuti novi deploy svaki put kada pushujete promene na main granu
