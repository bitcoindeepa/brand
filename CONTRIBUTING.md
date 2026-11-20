# Contributing to the Bitcoin Deepa brand

This repository is the single source for Bitcoin Deepa's brand assets. It follows the organisation's [contributing guide](https://github.com/bitcoindeepa/.github/blob/main/CONTRIBUTING.md) and [code of conduct](https://github.com/bitcoindeepa/.github/blob/main/CODE_OF_CONDUCT.md), with a few rules of its own because these files are artwork, not code.

## Before you start

- **Brand changes need approval first.** A new logo, a new version of the Yaka, a colour change or a new rule must be agreed with a brand owner before you open a pull request. Open an issue to propose it.
- **Fixes are welcome any time:** a typo in the guidelines, a missing PNG export, a broken link.
- The brand is not open source. By contributing you agree to the terms in [LICENSE](./LICENSE), section 4.

## Making a change

1. Create a branch from `main`, named for the change: `asset/profile-pictures`, `guideline/half-yaka`, `colour/dark-theme`, `fix/png-exports`.
2. Export artwork **from the master files**. Never trace, redraw or re-export a PNG back to SVG.
3. Put each file in its numbered folder under `assets/` and follow that folder's naming pattern.
4. Supply both formats where the asset has both: SVG for vector artwork, PNG for everything (transparent, 2400px on the long side; app icons 1024px, profile pictures 1080px, both square and opaque).
5. Update everything that describes the asset: the brand site (`site/index.html`, `site/colour/index.html`, and any preview images in `site/img/`), `design-system/` and `CHANGELOG.md` under **Unreleased**.
6. Sign off every commit (Developer Certificate of Origin):

   ```bash
   git commit -s -m "asset: add orange app icon"
   ```

7. Open a pull request against `main` and fill in the template, with a screenshot of the asset on its approved grounds.

## Commit messages

Use a short prefix that says what kind of change it is:

| Prefix | For |
|---|---|
| `asset:` | New or changed artwork |
| `guideline:` | Rules and wording in the guidelines |
| `colour:` | Colours and design tokens |
| `docs:` | README, contributing, licence text |
| `chore:` | Repository housekeeping |

## Never commit

- Master or working files you have not been asked to share (`.ai`, `.psd`, `.fig`).
- Zip archives. Release archives are built and attached to GitHub releases.
- Files you do not have the right to share, such as stock images or other companies' marks.

## Names

Write the company as **Ceylon Cash (PVT) LTD** when you give its registered name and **CeylonCash** (one word) otherwise. Subsidiaries are written the same way, for example **CeyPay (PVT) LTD**.

Questions: **hello@bitcoindeepa.com** or the [Telegram community](https://t.me/BitcoinDeepa).
