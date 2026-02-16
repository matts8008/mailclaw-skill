# mailclaw-skill

A Claude Code skill for sending physical mail via the [Mailclaw API](https://www.mailclaw.xyz).

## Install

```bash
claude install-skill matts8008/mailclaw-skill
```

## Usage

```
/openclaw send a letter to John Doe at 123 Main St, San Francisco CA 94107
```

Or just run `/openclaw` and it will walk you through it.

## What it does

1. Accepts a PDF file or plain text content
2. Previews page count and pricing
3. Confirms details with you
4. Submits the job to Mailclaw
5. Returns a Solana USDC payment address

Your letter is hand-printed, the envelope is hand-addressed and photographed, then mailed via USPS.

## Service tiers

| Service | Price |
|---------|-------|
| USPS First Class | $4.80 |
| Certified Mail (default) | $9.40 |
| Certified + Return Receipt | $16.00 |
| International First Class | $9.45 |

All services include 3 pages. Additional pages are +$1.00 each.

## Links

- [Mailclaw](https://www.mailclaw.xyz)
- [API Docs](https://www.mailclaw.xyz/docs)
