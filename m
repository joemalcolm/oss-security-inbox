X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/06/6
Message-ID:  <SY9P300MB881477FE900FABB5714AE1047AEE762@SY9P300MB881477.AUSP300.PROD.OUTLOOK.COM>
Date: Fri, 6 Nov 2026 06:35:11 +0000
From: Peter Gutmann <pgut001@...auckland.ac.nz>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Subject: Re: "sshole": password authentication bypass: OpenSSH + musl libc
Content-Type: text/plain; charset=utf-8

Jeffrey Walton <noloader@...il.com> writes:

>One general comment that does not fit well into most of the discussions around
>sshole...

Another contributing factor, "sshd borrows bob's salt" and the derived
changes, was the quaint 1970s notion that no-one would ever be able to guess
that there exist account names like root, daemon, ldap, postfix, apache,
mysql, sshd, and rumpelstiltskin, so we'll add a kludge to make invalid
accounts take the same time as valid ones.  Attackers don't even notice this
because they start with a pregenerated list of known and probable accounts,
but it does help to add vulnerabilities to the password-checking process as
this CVE shows.

Peter.
