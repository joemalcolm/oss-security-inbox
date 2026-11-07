X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/07/4
Message-ID: <au6XCa8Jg_yMuRie@ucc.asn.au>
Date: Sat, 7 Nov 2026 11:12:09 +0800
From: Matt Johnston <matt@....asn.au>
To: oss-security@...ts.openwall.com
Subject: Re: "sshole": password authentication bypass: OpenSSH + musl libc
Content-Type: text/plain; charset=utf-8

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
