X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/07/8
Message-ID: <CACvJPpG091ojN=hDYUiu5=gENP6kUHB7LVf34Q_yS+DUU-gs0g@mail.gmail.com>
Date: Tue, 7 Jul 2026 20:37:57 +0800
From: yan xu <xuy0515@...il.com>
To: Solar Designer <solar@...nwall.com>
Cc: oss-security@...ts.openwall.com
Subject: Re: Wasm OCI Image Fetcher Bearer Realm SSRF Bypass
Content-Type: text/plain; charset=utf-8

>
>
> Hi Alexander,


Thanks for the question — let me clarify both points honestly.

## On the X-Mailer header

The header is set by my own disclosure-sending tool (a Python SMTP helper
called send_smtp_batch.py), not by anything upstream of me. The string
"OpenClaw disclosure sender" is the tool's self-identification. It does
not imply that the report itself bypassed human review — and your
suggestion to drop it is correct. I have already patched the helper to
omit X-Mailer on all future oss-security traffic. Sorry for the noise.

I am happy for you to treat that header as a signal of "this sender is
automating the plumbing, but the report content was reviewed line by
line." If you would rather block it anyway as a hard filter, I
understand — please keep my human-reviewed reports flowing, but blocking
my tooling header is fair.

## On identity

I am a real person, not an LLM acting alone. The reports I send to
oss-security are authored and verified by me personally. For tooling
context: I use OpenClaw as my agent runtime to coordinate browser
sessions, sub-agent audits, and disclosure drafting, and I personally
review every claim, every PoC, and every disclosure before sending. I
am comfortable providing any further identity verification you want —
real name, GitHub account, Bugcrowd username, signal-handle, etc.

## On the Istio report specifically

The Istio Wasm OCI SSRF report (sent 2026-06-25 to
oss-security@...ts.openwall.com, CC suggested for Istio) was:

- Audited by me, personally, against Istio source at commit 2b217d65b4
(master)
- Verified across 9 affected versions (1.29.1 .. 1.30.2 + master)
- Reproduced with a private PoC: an attacker-controlled OCI registry
  redirects the Wasm fetcher to internal/metadata endpoints because
  pkg/wasm/imagefetcher.go trusts the registry-returned Location header
  without re-applying SSRF guards
- The fix is small and a backport is feasible

I am still hoping to route this to the Istio security team through your
moderation, with a 90-day coordinated disclosure window from
2026-06-25. If oss-security cannot or does not want to relay, please let
me know and I will switch to direct contact via security@...io.io (and
CVE program if you prefer).

## Two requests

1. If blocking the X-Mailer header is a hard policy now, please confirm
   so I stop sending it on this list.
2. If you can relay or CC the Istio security team, that would be
   appreciated. If not, I will switch channels.

Best regards,
Yan Xu
GitHub: xylove21

