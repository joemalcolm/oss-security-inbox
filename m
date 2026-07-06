X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/06/1
Message-ID: <23287adc-4ff7-4673-b412-c6538caaa995@gentoo.org>
Date: Sun, 5 Jul 2026 20:32:05 -0400
From: Eli Schwartz <eschwartz@...too.org>
To: oss-security@...ts.openwall.com
Subject: Re: Wasm OCI Image Fetcher Bearer Realm SSRF Bypass
Content-Type: text/plain; charset=utf-8

On 7/3/26 11:48 PM, Solar Designer wrote:
> On Fri, Jul 03, 2026 at 08:35:57PM -0700, h wrote:
>> From email headers on at least the first and last emails, and probably 
>> the others:
>>> X-Mailer: OpenClaw disclosure sender
>>
>> I think it's safe to say that this is certainly an LLM, given that.
> 
> Thanks.  What does presence of this header guarantee in terms of lack of
> human review?  May it be set on messages that passed human review?  If
> not, it's tempting to block messages with that header from even reaching
> the moderators.

OpenClaw is specifically designed such that, unlike, other mechanisms of
operating an LLM, no human is involved at *any* stage whatsoever. Not
even to produce a prompt instructing the LLM to work on particular things.

If a human wanted to be involved with the LLM operation, e.g. by
reviewing things, then the human simply would not use OpenClaw. I very
much doubt that a human would prompt OpenClaw to ask for human review,
and if a human *did* do so, the LLM likely wouldn't follow the instructions.

Recall that OpenClaw was designed for the intended goal of having
"autonomous AI". The "autonomy" bit is not halfhearted.

As for blocking that header, well, let's just hope other OpenClaw bots
bother to announce themselves like that. :) These bots are better known
for independently publishing hit pieces on FOSS developers who close
bot-generated PRs than for respecting boundaries, after all...

-- 
Eli Schwartz


Download attachment "OpenPGP_signature.asc" of type "application/pgp-signature" (237 bytes)
