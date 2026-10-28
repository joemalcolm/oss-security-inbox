X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/28/5
Message-ID: <20261028140732.5tdqvxogrmpm5mjk@jwilk.net>
Date: Wed, 28 Oct 2026 15:07:32 +0100
From: Jakub Wilk <jwilk@...lk.net>
To: oss-security@...ts.openwall.com
Subject: Re: Information for Python users regarding eMudhra / emSign CA certificate security incident
Content-Type: text/plain; charset=utf-8

* Kevin Riggle <kevinr@...plexsystems.group>, 2026-10-27 19:52:
>The macOS remediation advice on the official vuln page at 
>https://emudhra.we-have-a-problem.com/#macos-curl lists remediation 
>instructions which it is claimed address this, with instructions to set 
>a PIP_CERT environment variable in a sitecustomize.py file.
[...]
>I'm finding it a bit tricky to figure out a reproducible test case 
>which would exercise this, so I haven't done more testing myself,

Try running:

    pip download --retries=0 --index-url https://dv-g3b-emudhra.we-have-a-problem.com/ --extra-index-url https://dv-g3b-aaa-emudhra.we-have-a-problem.com/ cowsay

If you get certificate errors for both hosts, you're probably fine.

If you get "WARNING: Skipping page 
https://...we-have-a-problem.com/...", you're definitely not fine.

>but—does this actually work?

I'm pretty sure the env var trick does not work with pip >= 24.2.
No idea what's shipped with macOS.

-- 
Jakub Wilk
