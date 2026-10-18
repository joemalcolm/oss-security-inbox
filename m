X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/18/6
Message-ID: <3976e06c-1bec-40b2-a6b0-5bd3b8c82ed8@dwheeler.com>
Date: Sun, 18 Oct 2026 16:30:33 -0400
From: "David A. Wheeler" <dwheeler@...eeler.com>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Subject: Re: Proposal: Add separate oss-security-vulnerability-reports mailing list (for AI vulnpocalypse)
Content-Type: text/plain; charset=utf-8

Martin Steigerwald <martin@...htvoll.de> writes:

>> I'd expect a wave of AI reports, but once they are fixed, these will not be
>> reported again. Then maybe after using even better models and agents there
>> might be another wave of more difficult to find issues that are reported. But
>> then these are fixed as well.

I agree, that's my expectation as well. Projects that use AI to find & 
fix vulnerabilities,
and strive to harden themselves against attack, will in a few years 
become VERY hard
to attack. I look forward to that situation!

OSS projects do NOT need infinite money to use AI.
Open weight models are already a viable approach; they are NOT that far 
behind.
In addition, some frontier labs have provided various ways for OSS 
projects to
sometimes get access to their models, e.g., Anthropics' oss-scanner.

Sadly, this won't mean the end of ALL vulnerabilities.
OSS projects that just accept random vibe code will have *LOTS* of
horrendous vulnerabilities. OSS projects that reject "all AI outputs"
will also be disasters, since they're sticking their thumbs in their 
ears while the
attackers repeatedly exploit their projects' vulnerabilities.

So I think in a few years we're going to see two worlds:
(1) highly-secure OSS because they use AI wisely to help craft secure 
results (Linux, curl, etc.)
(2) highly-insecure OSS because they don't use AI wisely. These should 
never be used but will be.

Over time, after a series of unhappy events, OSS projects in group 2
that many people care about will gradually be forked and be fixed.
I'm hoping that once the writing is on the wall this will be faster, 
we'll see.

On 10/18/26 14:43, Peter Gutmann wrote:
> This matches what I've experienced in discussions with other OSS authors using
> AI to audit their code, what's coming in now with newer models, now that the
> stuff that earlier models found has been fixed, is more and more obscure
> issues that require extraordinary combinations of circumstances to trigger.
> For example there was CVE-2026-92392 that required among other things at least
> three planets to be lined up right, a certain level of sunspot activity, and
> eddies in the earths geomagnetic currents before the issue became a real
> concern.

I think there are two kinds of "obscure issues" though, that *look* similar:

1. Obscure issues that can ONLY occur in extremely unusual situations 
that the
attacker CANNOT control (e.g., only occurs on big-endian 32-bit systems 
using KOI8-U encoding).
2. Obscure issues that the attacker *CAN* control, e.g., by chaining 
attacks.
AI is *EXTREMELY* good at patiently crafting and chaining a sequence of 
defects
that *together* create a vulnerability.

I agree with you on case 1, but people *will* need to fix the 
vulnerabilities
in case 2 because the AI systems *can* and *will* exploit them.

--- David A. Wheeler


