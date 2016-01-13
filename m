X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1700" "Wednesday" "13" "January" "2016" "12:51:42" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160113175142.1E7576C09BD@smtpvmsrv1.mitre.org>" "39" "[oss-security] Re: Out-of-bounds Read in the JasPer's jpc_pi_nextcprl() function" nil nil nil "1" "2016011317:51:42" "[oss-security] Re: Out-of-bounds Read in the JasPer's jpc_pi_nextcprl() function" (number mark "U       cve-assign@m Jan 13   39/1700  " thread-indent "\"[oss-security] Re: Out-of-bounds Read in the JasPer's jpc_pi_nextcprl() function\"\n") "<3626D6E697A150459C44C0E5D8D8D00E0DBD5177@EX02.corp.qihoo.net>" ("<3626D6E697A150459C44C0E5D8D8D00E0DBD5177@EX02.corp.qihoo.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17978 invoked by uid 550); 13 Jan 2016 17:51:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17954 invoked from network); 13 Jan 2016 17:51:54 -0000
From: cve-assign@mitre.org
To: limingxing@360.cn
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <3626D6E697A150459C44C0E5D8D8D00E0DBD5177@EX02.corp.qihoo.net>
Message-Id: <20160113175142.1E7576C09BD@smtpvmsrv1.mitre.org>
Date: Wed, 13 Jan 2016 12:51:42 -0500 (EST)
Subject: [oss-security] Re: Out-of-bounds Read in the JasPer's jpc_pi_nextcprl() function

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> We find a vulnerability in the way JasPer's jpc_pi_nextcprl() function parsed certain JPEG 2000 image files.
> I was successful in reproducing this issuel in the jasper-1.900.1-31.fc23.src.
> 
> Starting program: ./jasper-1.900.1-31.fc23.src/jasper-1.900.1/src/appl/jasper -f ./jasper_poc/poc.jp2 -F temp.bmp -t jp2 -T bmp
> warning: trailing garbage in marker segment (6 bytes)
> 
> Program received signal SIGSEGV, Segmentation fault.
> jpc_pi_nextcprl (pi=0x80a4ab0) at jpc_t2cod.c:435
> 435				  pi->xstep = pi->picomp->hsamp * (1 << (pirlvl->prcwidthexpn +
> (gdb) bt
> #0  jpc_pi_nextcprl (pi=0x80a4ab0) at jpc_t2cod.c:435

Use CVE-2016-1867.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWlos+AAoJEL54rhJi8gl5FlAP/0UvdOa/MOmWwDQeofST/PbE
Ba+vQZcXSj58kD77fBaq6rfWbmlMGdK+F7hxyICV9ajWS/Pm+aXhXquF9vsqDsIR
5//jE3TWvmUgxXebX8Qyqp8xGtJH2Gpaqz/bYiCf9RjUPhaPiQkNxTRl08p5yF4H
DSoDZS8NLfOgI6gAPEsbQRM1XoJM+rzv0VUcDbOMcQGXxjMGN4EMKM4vml5svvLX
2dn9BDAPMjTxPm62h1PLQFLCV7gyRmBN4Vu+Ya0HHob4jSb4NoPdxVPO9Jd1UdmJ
y5KTpEYaTBhSrPtvXLS9UixUuUn/1ShkiQEZWpFJ7MUHcet2zRlm6sXj+xWssFbN
5qW7mXgMZ3bECRKn+hFonj5Z0spZfvA6bQKZJKBTMIIEBdsI/C/Vti6DBSeiRhmT
HiZmIHs31X+PpVQNrEw0AaCUEyp3GtYOWpuxXETyBdpsl9Ky5ubS5Hw2bPVNsjz6
i291DcFlYvXlcLgh6JDJrKEYiOU+ZtYZWBpEK4XIPG0yvx1GTbeTnQJ2/yhCj7pU
i69jRs3NkkG9snEOJbQv5n6ABTinrIB1PwxSYy9ekPIrbJnV+65TRf7wXTXvJ4Gi
cebpJS8orRbgml1X4Azfc9bFoeZlpHBP90XhmZydvo6cGcYQS6ZQGI0p9uz7ssDF
FcISpiPnRyny+eqg65Q3
=FzZr
-----END PGP SIGNATURE-----
