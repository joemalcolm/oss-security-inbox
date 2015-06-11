X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2034" "Thursday" "11" "June" "2015" "09:54:26" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150611135426.196A46C007F@smtpvmsrv1.mitre.org>" "64" "[oss-security] Re: Possible CVE Requests: libmspack: several issues" nil nil nil "6" "2015061113:54:26" "[oss-security] Re: Possible CVE Requests: libmspack: several issues" (number mark "        cve-assign@m Jun 11   64/2034  " thread-indent "\"[oss-security] Re: Possible CVE Requests: libmspack: several issues\"\n") "<20150203155205.GA14955@eldamar.local>" ("<20150203155205.GA14955@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1643 invoked by uid 550); 11 Jun 2015 13:54:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1615 invoked from network); 11 Jun 2015 13:54:37 -0000
In-Reply-To: <20150203155205.GA14955@eldamar.local>
Message-Id: <20150611135426.196A46C007F@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu, 11 Jun 2015 09:54:26 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Possible CVE Requests: libmspack: several issues
To: carnil@debian.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> null pointer dereference on a crafted CAB:
>  - https://bugs.debian.org/774665

Use CVE-2014-9732.


> CHM decompression: division by zero
>  - https://bugs.debian.org/774725

Use CVE-2015-4467.


> CHM decompression: pointer arithmetic overflow
>  - https://bugs.debian.org/774726

Relative to the
http://anonscm.debian.org/cgit/collab-maint/libmspack.git/commit/?id=a25bb144795e526748b57884daf365732c7e2295
commit, use CVE-2015-4468 for the issues resolved by
fix-pointer-arithmetic-overflow.patch and use CVE-2015-4469 for the
issue resolved by fix-name-field-boundaries.patch. (Note that these
were originally combined within the diff included in the
https://bugs.debian.org/774726#3 message.) The
fix-name-field-boundaries.patch is about missing input validation and
can't have the same CVE ID as the two cases where the only change was
from a "p + name_len > end" test to a "name_len > end - p" test.


> off-by-one buffer over-read in mspack/mszipd.c
>  - https://bugs.debian.org/775498

Use CVE-2015-4470.


> off-by-one buffer under-read in mspack/lzxd.c
>  - https://bugs.debian.org/775499

Use CVE-2015-4471. The vendor notes that the later-problematic code
had been valid before 2006-08-31.


> CHM decompression: another pointer arithmetic overflow
>  - https://bugs.debian.org/775687

Use CVE-2015-4472.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVeZJSAAoJEKllVAevmvmsql4H/2k7qmN/J0L5i7nuticZBbm6
dQEHjoH4wK5n7bMoKeBVC2LAr+hlV6L5dxkfUCAknf4JwxnUCwBh27ewpGj7V5uW
JrOSeKUkq6LHPyScB5cZPeAagqDEzp42eNZbVJ0J44qlBRMjJkaLkuXDMR6DHaW9
am5vka2/zmDZgYYbdByleQnr1oB6NPGsl0cKxgZs73PxY96dr+T5E9L4njsa199Y
AxIo1ULaZ8k4AEN1OqqBTxWOI3GDj3GlWSrCPzwPyXBIz2gw6OYdd1gMoqpdEuM/
Z12I1gCdlZ3riDtBO/BMS8hW/lAcHccigao+fQegGEppCAaXPLVdZ/0qrLIsmhA=
=NsCS
-----END PGP SIGNATURE-----
