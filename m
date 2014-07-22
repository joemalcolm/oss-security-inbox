X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/07/22/7
Message-ID: <20140722154443.GA29053@redoubt.spodhuis.org>
Date: Tue, 22 Jul 2014 11:44:44 -0400
From: Phil Pennock <oss-security-phil@...dhuis.org>
To: OSS Security <oss-security@...ts.openwall.com>
Subject: Exim: 4.83 Released, CVE-2014-2972 fix
Content-Type: text/plain; charset=utf-8

Attached should be two emails from one of my fellow Exim maintainers,
Todd, who has driven the past couple of releases and done the bulk of
the coordination for this CVE.

Our thanks, once more, to Rack911 and Cpanel.

-Phil, pdp@...m.org

Return-Path: <tlyons@...m.org>
Date: Tue, 22 Jul 2014 15:59:49 +0100
From: Todd Lyons <tlyons@...m.org>
To: Exim Users <exim-users@...m.org>, Exim Dev <exim-dev@...m.org>
Message-ID: <20140722145948.GB26136@...m.org>
Mime-Version: 1.0
Content-Disposition: inline
Organization: exim.org Exim MTA Developers
User-Agent: Mutt/1.5.9i
Subject: Exim 4.83 Released
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

 have uploaded Exim 4.83 to:
ftp://ftp.exim.org/pub/exim/exim4/

This release of Exim includes one incompatible fix: the behavior of
expansion of arguments to math comparison functions (<, <=, =, =>, >)
was unexpected, expanding the values twice. This fix also addresses a
security advisory, CVE-2014-2972. This is not a remote exploit, but if
content that is searched by the above math comparison functions is under
the control of an attacker, specially crafted data can be inserted that
will cause the Exim mail server to perform various file-system functions
as the exim user.

This release contains the following enhancements and bugfixes:
+ PRDR was promoted from Experimental to mainline
+ OCSP Stapling was promoted from Experimental to mainline
+ new Experimental feature Proxy Protocol
+ new Experimental feature DSN (Delivery Status Notifications)
+ TLS session improvements
+ TLS SNI fixes
+ LDAP enhancements
+ DMARC fixes (previous CVE-2014-2957) and new $dmarc_domain_policy
+ several new operations (listextract, utf8clean, md5, sha1)
+ enforce header formatting with verify=header_names_ascii
+ new commandline option -oMm
+ new TLSA dns lookup
+ new malware "sock" type
+ cutthrough routing enhancements
+ logging enhancements
+ DNSSEC enhancements
+ exiqgrep enhancements
+ deprecating non-standard SPF results
+ build and portability fixes
+ documentation fixes and enhancements

The ChangeLog/NewStuff/README.UPDATING are packaged with the exim
tarball or can be reviewed online at:

http://git.exim.org/exim.git/blob/exim-4_83:/doc/doc-txt/ChangeLog
http://git.exim.org/exim.git/blob/exim-4_83:/doc/doc-txt/NewStuff
http://git.exim.org/exim.git/blob/exim-4_83:/src/README.UPDATING

The files are signed with the PGP key 0x04D29EBA, which has a uid
"Todd Lyons (Exim Maintainer) <tlyons@...m.org>". Please use your own
discretion in assessing what trust paths you might have to this uid.

Checksums are below. Detached PGP signatures in .asc files are available
alongside the tarballs.

Please report issues by replying to this email on exim-users.

Thank you for your patronage,
- ---Todd Lyons, pp The Exim Maintainers

SHA256(exim-4.83.tar.bz2) = efa031b89ffb2ab844a4bf9d3a5d7ca4d587d82b62ae233d68c4f26e079a6a02
SHA256(exim-4.83.tar.bz2.asc) = 1d7c4cd0e3714244904f31e5b690226d258c5f8ef32c9a344ef662f05fcb8a73
SHA256(exim-4.83.tar.gz) = 200880381fdd1b2ce36e49b9c9bcc8b57008ff02084b87d31c6ff9867e9fea06
SHA256(exim-4.83.tar.gz.asc) = 91ef599c66df5661ca018116e7ca7408e57d22f9d3c0b7e6c465951a878ae044
SHA256(exim-html-4.83.tar.bz2) = d7b38922f2aedd9eb4db7aa0e1e1c0fcd948777a4c8bac7971eaf4b2959bf0de
SHA256(exim-html-4.83.tar.bz2.asc) = 9d20439e8c1f6c25cb120fe9e7ecc689c513bf5607ebd80e07a511a8def8d5a1
SHA256(exim-html-4.83.tar.gz) = a58e077170225efe78cadcedd4bc1d66d34c87a5581ee597e0634e475e1f60ab
SHA256(exim-html-4.83.tar.gz.asc) = c7bfb22f2df14af4f5e058138f347d3868c5d8b0c366ca26fe3b3a16b0c66cb3
SHA256(exim-pdf-4.83.tar.bz2) = 478fca2c13fbda403fb0c373dc61e82aa434e7167c0341f24b83195afd294b82
SHA256(exim-pdf-4.83.tar.bz2.asc) = fc01512d0be78b1412be0abcb0a204afa5ab46a8b45bc9396ded364d1ddc0e00
SHA256(exim-pdf-4.83.tar.gz) = 8f5e31e4b8c1fa8e402f6e0baf24350df916d78bfa888a4a6b435d0853766b2e
SHA256(exim-pdf-4.83.tar.gz.asc) = 3203916a6fe142f258e69e8c2361df40b9b3b67bbbe8bb34de58e17597acc517
SHA256(exim-postscript-4.83.tar.bz2) = 7f8ef825a832debdab54173bfb4e86acaaa6eb139a64e8b87a785183354375cf
SHA256(exim-postscript-4.83.tar.bz2.asc) = ff13e6e5799a98336b3953045f1348aab1f9e52b9d0da2b0fbe909a22d264a40
SHA256(exim-postscript-4.83.tar.gz) = 9f184baee80875caa4d27b15495500afc4eae44f275b63b170dcccc3cdf19769
SHA256(exim-postscript-4.83.tar.gz.asc) = 31171cba3aac6205abf08f122154a6d8a84c12763ccf0a78719ab3af9356c86d

- -- 
Regards...		Todd
All truth passes through three stages. First, it is ridiculed. Second,
it is violently opposed. Third, it is accepted as being self-evident.
Linux kernel 2.6.16.27-0.9-smp   load average: 0.63, 0.78, 0.70
To: 
Cc: 
Bcc: 
Subject: 
Reply-To: 
Organization: exim.org Exim MTA Developers


- -- 
Regards...		Todd
I've visited conferences where the wireless LAN was deemed "secure" by
the organisation because they had outlawed sniffers.    --Neils Bakker
Linux kernel 2.6.16.27-0.9-smp   load average: 0.61, 0.48, 0.42
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.13 (GNU/Linux)

iEYEARECAAYFAlPOfGQACgkQxPT5SATSnrr+4gCdGc7PMVxAhNQmTU9WVTwqN8s9
xNwAoJRDcXxeNZgYhS7ByNGEGt7HsXPh
=Abf5
-----END PGP SIGNATURE-----

-- 
## List details at https://lists.exim.org/mailman/listinfo/exim-users
## Exim details at http://www.exim.org/
## Please use the Wiki with this list - http://wiki.exim.org/

Return-Path: <tlyons@...m.org>
Date: Tue, 22 Jul 2014 16:24:52 +0100
From: Todd Lyons <tlyons@...m.org>
To: Exim Users <exim-users@...m.org>, Exim Dev <exim-dev@...m.org>
Message-ID: <20140722152451.GA9190@...m.org>
Mime-Version: 1.0
Content-Disposition: inline
Organization: exim.org Exim MTA Developers
User-Agent: Mutt/1.5.9i
Subject: Exim Security Advisory CVE-2014-2972
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

The Exim developers want to inform you of a local vulnerability in Exim.
Exploitability requires the ability to provide unsanitised data to a
data source used by Exim for looking up a value, and the impact is the
ability to get a string expansion done as the Exim runtime user (so, run
commands, etc) because in a certain scenario, there's a
double-expansion, so it's equivalent to the result of the data being
"eval"d again. This bug was discovered by Patrick William of Rack911,
and reported to us by the Cpanel Security Team. Exploitation using this
method was discovered by penetration testing; it was not observed in the
wild. This security advisory has been assigned CVE-2014-2972.

We would like to publicly thank Rack911 and Cpanel for responsibly
notifying the Exim developers with a description of the problem
and coordinating their release of software fixes with ours. Appearing so
close to the end of the release cycle allowed us to handle the issue
with relative ease.

This is not a remote exploit. It requires a user account on a server
where Exim is configured to do lookups against files to which the user
has edit access. As such, this does not require a Security Release, so
we will proceed with the regular release cycle.

The root cause of this issue is the arguments to mathematical comparison
operations are expanded twice (<, <=, >, >=, =).  The intent of the
original code was the first expansion could (for example) lookup an item
from a file. The assumption was that entry would be some form of valid
integer so that value was then passed to the expand function again to do
a numeric conversion of values such as 19k or 45M to integers.  However,
if the content of the lookup is under direct user control, they could
insert something with an expansion, such as:
  ${run {/bin/touch /tmp/OUCH}}
Since the data is not sanitized when the second expansion occurs
(intended to process numerical conversion), that command would get
executed as the exim user.

We Exim developers agree this behavior is a bug in Exim because it is
expected that an argument to a function will only be expanded once. As
such, we have a patch which will be applied to 4.83 when it is
officially released on Tue which will modify this behavior: for math
based comparisons, the arguments are only expanded once, followed by a
numeric only conversion. This is changing a behavior that has been
present in Exim since the original code was committed in 2004.

Regards,
- - -- Todd Lyons, pp The Exim Maintainers.

- -- 
Regards...		Todd
Linux kernel 2.6.16.27-0.9-smp   load average: 0.45, 0.71, 0.94
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.13 (GNU/Linux)

iEYEARECAAYFAlPOgkMACgkQxPT5SATSnrrJbQCg3Cw6RCwuRqmRjI2X2uLV0Lho
6DQAn3gJK9Bo0JYEhkP3bM4OgJSqM4EX
=wsZV
-----END PGP SIGNATURE-----

-- 
## List details at https://lists.exim.org/mailman/listinfo/exim-users
## Exim details at http://www.exim.org/
## Please use the Wiki with this list - http://wiki.exim.org/


Content of type "application/pgp-signature" skipped
