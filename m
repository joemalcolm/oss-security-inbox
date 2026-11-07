X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/07/9
Message-ID: <8DCC4DAD-F664-466D-BEAB-47C577F0D31C.1@smtp-inbound1.duck.com>
Date: Sat, 07 Nov 2026 11:23:35 -0500
From: theknell@...k.com
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Subject: Re: "sshole": password authentication bypass: OpenSSH + musl libc
Content-Type: text/plain; charset=utf-8

Following up on my measurements post from last night. The question
of whether those numbers were actually measured has come up since
— privately, mostly — so the full raw log is public now:

https://archive.org/details/knell-sshole-receipts

82,236 lines: the crypt() census output, the end-to-end sshd timing
runs on both rigs (mixed accounts and the all-locked box), every
data file with its timestamp and SHA-256, and the harness sources
that produced them. Bundle sha256:
c8ccfb5a23403838dc4de24d293a597ddac96410b6f3797eef175af3363c475b

The headline numbers check straight out of the CSVs: musl
sha-crypt failing at a 257-char candidate (256 works), locked
spellings at 0.06 µs against 34.84 ms for a live yescrypt check,
and on a box with no valid password hashes at all, a nonexistent
user landing inside the locked spread — 1.7 ms across all six
classes, 360 samples per rig, zero errors.

If a number's wrong, the data's right there. Point at the line.

— knell


Sent from Proton Mail for Android.

-------- Original Message --------
On Friday, 11/06/26 at 22:23 Matt Johnston <matt_at_ucc.asn.au_theknell@...k.com> wrote:
On Fri, Nov 06, 2026 at 06:35:11AM +0000, Peter Gutmann wrote:
>
> Another contributing factor, "sshd borrows bob's salt" and the derived
> changes, was the quaint 1970s notion that no-one would ever be able to guess
> that there exist account names like root, daemon, ldap, postfix, apache,
> mysql, sshd, and rumpelstiltskin, so we'll add a kludge to make invalid
> accounts take the same time as valid ones.  Attackers don't even notice this
> because they start with a pregenerated list of known and probable accounts,
> but it does help to add vulnerabilities to the password-checking process as
> this CVE shows.

I view avoiding account existence exposure as more of a
privacy feature than security.
If you iterate all the internet's ipv4 sshds (not hard) for
ones that accept say "pgut001", then you've found someone's
IP. Maybe that's already exposed in other ways, but maybe not.

As purely a security feature I agree the added complexity
isn't worth it.

Cheers,
Matt


