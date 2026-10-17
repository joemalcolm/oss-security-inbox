X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/17/1
Message-ID: <179219961514.1806.576806807373716693@gmail.com>
Date: Sat, 17 Oct 2026 01:13:35 -0000
From: eddyflores100@...il.com
To: oss-security@...ts.openwall.com
Subject: Re: FOLLOW-UP: taikotalent.xyz fake-recruiter trojan — RESOLVED (registrar clientHold 2026-10-10)
Content-Type: text/plain; charset=utf-8

Alexander,

Fair on both counts, and thank you for verifying the domain state yourself before
responding - that is more diligence than the posting deserved in the shape it was sent.

Two process corrections, both accepted:

1. Disclosure: the follow-up was drafted with LLM assistance as part of our
   incident-response workflow (AliceLabs, agent-security research), and it should have
   said so. Future postings from us will carry that line explicitly.

2. Content: the load-bearing indicators belong in the posting itself, not behind a
   GitHub link. Inlined below.

Campaign: taikotalent.xyz fake-recruiter trojan (macOS payload delivered via
job-offer lure; report originally sent 2026-10-15).

    Domain:     taikotalent.xyz
                registered 2026-09, registrar clientHold applied 2026-10-10
                (now resolving to NXDOMAIN / holding page)

    Host compromise check (macOS/Linux):

        ls -la /var/tmp/.kdm.* 2>/dev/null
        pgrep -fl 'verify_m|deepfake_guard|guard-launcher'
        find ~ -maxdepth 2 \( -name 'verify_m' -o -name 'verify_w' -o -name 'v.cmd' \) 2>/dev/null

    The YARA rule and a short timeline remain at
    https://github.com/eddyflores100-lang/taikotalent-phishing-iocs for anyone who
    wants them; the three checks above are the detection surface that matters.

On relevance: conceded. Single-campaign lures with a held domain and no confirmed
third-party victims sit below the bar for oss-security. We will keep future
postings here for cases with broader impact (supply-chain, widely deployed
packages, reusable tradecraft) and keep campaign-level IoCs on our own channel.

Thanks for letting this one through as the example - the lesson landed.

Edison Flores
AliceLabs - eddyflores100@...il.com
