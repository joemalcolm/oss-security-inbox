X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/15/8
Message-ID: <20261015210928.GA13251@openwall.com>
Date: Thu, 15 Oct 2026 23:09:28 +0200
From: Solar Designer <solar@...nwall.com>
To: oss-security@...ts.openwall.com
Cc: eddyflores100@...il.com
Subject: Re: FOLLOW-UP: taikotalent.xyz fake-recruiter trojan — RESOLVED (registrar clientHold 2026-10-10)
Content-Type: text/plain; charset=utf-8

On Thu, Oct 15, 2026 at 12:58:45PM -0700, eddyflores100@...il.com wrote:
> Follow-up: taikotalent.xyz fake-recruiter trojan — RESOLVED (registrar clientHold 2026-10-10)
> 
> Summary for the list: the campaign previously disclosed here

This looks like an AI slop.  Nothing was previously disclosed here, so I
assume an LLM hallucinated that.  The message looks AI-generated.  I am
unhappy about AI-generated postings that don't even disclose that fact.

Yet the incident may have been real (I checked that the domain name was
in fact registered not long ago and its record last modified 2026-10-10)
and I don't mind us having _relevant_ IoCs and such in here.  Whether
this one is relevant enough is doubtful, but given that we're luckily not
getting many of these yet, I let it through to the list as an example.

> Full updated evidence: https://github.com/eddyflores100-lang/taikotalent-phishing-iocs (IoCs, YARA, timeline)

For actually relevant cases, we want actual content directly included in
list postings, especially the IoCs.  In this case, the above GitHub page
gives this:

> Host compromise check (macOS/Linux):
> 
> ls -la /var/tmp/.kdm.* 2>/dev/null
> pgrep -fl 'verify_m|deepfake_guard|guard-launcher'
> find ~ -maxdepth 2 \( -name 'verify_m' -o -name 'verify_w' -o -name 'v.cmd' \) 2>/dev/null

If we start getting more of these, this one would probably be below my
threshold for accepting a posting.  Not relevant and significant enough.

Alexander
