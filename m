X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/22/7
Message-ID: <awK7YTFFtLlowHqu@donburi.himad.notcom.org>
Date: Sun, 22 Nov 2026 12:23:44 +0200
From: Valtteri Vuorikoski <vuori@...com.org>
To: oss-security@...ts.openwall.com
Subject: Re: Dokploy: the validator allows the backtick — a member's database password change is host RCE, 9.9 on the vendor's own vector (v0.31.0, live-proven)
Content-Type: text/plain; charset=utf-8

On Sun, Nov 22, 2026 at 06:00:04AM +0100, Solar Designer wrote:
> Blindly rejecting valid reports just because they came from a bot does
> not feel right at this time - there are not too many yet.  Sure they are
> not worth most subscribers' time, but then most reports by people aren't
> either.  One of my concerns is what would happen to possible rejected
> reports - they may end up in the wrong hands only.  If the volume of
> automated reports increases yet we're still able to distinguish them
> from those sent by people, we may need to start redirecting them to
> another list... which would require changes to list moderation setup.

How about a policy with something like: if report is LLM-generated, it _must_
start with a max-three-sentence summary containing the basic facts: what
product, what effect (RCE, SSRF, etc.), what vector (network, local,
auth/unauth), any CVE/GHSA/etc already assigned. Ideally written by the reporter
themselves, but if an LLM must be used, prompt it to generate human-readable
text ("write like wikipedia" or whatever). And especially don't start with
quips like "half a fix".

Wading through screenfuls of the default Claude voice with its pretentious word
choices and weirdly complicated almost-rhyming sentence patterns to find out
what the thing is about is painful, even if the content is valid. I took my
chances and killfiled knell at the mark-read-by-default level.

(While I think this structure would be fine for every report, the quantity and
dubious quality of bot prose makes it more imperative for those, and could be
enforced with some solid measures for the more verbose bot-posters IMO.)

 -valtteri
 
