X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1347" "Thursday" "24" "December" "2015" "11:37:53" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151224163753.8217233217A@smtpvbsrv1.mitre.org>" "36" "[oss-security] Re: CVE request --  Out-of-bounds Read in libtiff" nil nil nil "12" "2015122416:37:53" "[oss-security] Re: CVE request -- Out-of-bounds Read in libtiff" (number mark "U       cve-assign@m Dec 24   36/1347  " thread-indent "\"[oss-security] Re: CVE request --  Out-of-bounds Read in libtiff\"\n") "<3626D6E697A150459C44C0E5D8D8D00E0D239D83@EX01.corp.qihoo.net>" ("<3626D6E697A150459C44C0E5D8D8D00E0D239D83@EX01.corp.qihoo.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7308 invoked by uid 550); 24 Dec 2015 16:38:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7290 invoked from network); 24 Dec 2015 16:38:05 -0000
From: cve-assign@mitre.org
To: limingxing@360.cn
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, huangyonggang@360.cn
In-Reply-To: <3626D6E697A150459C44C0E5D8D8D00E0D239D83@EX01.corp.qihoo.net>
Message-Id: <20151224163753.8217233217A@smtpvbsrv1.mitre.org>
Date: Thu, 24 Dec 2015 11:37:53 -0500 (EST)
Subject: [oss-security] Re: CVE request --  Out-of-bounds Read in libtiff

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> We want to report 1 vulnerability in libtiff 4.0.6!
> The issue is about  tif_getimage.c line: 1403
> 
> UNROLL8(w, NOP,
>             *cp++ = PACK4(pp[0], pp[1], pp[2], pp[3]);
>             pp += samplesperpixel);
> 
> if  samplesperpixel = 3 pp[3] cause Out-of-bounds Read

Use CVE-2015-8665.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWfB6qAAoJEL54rhJi8gl5ykkQAJ/DbleEiFDmzK2QUNmZDkuZ
kT7WFzYqcsvTXi0FJfzkTfrNpYwJzS72CNkCjbTpeS24oSvTJ9gAqo7YN3uVe/bw
YdkTa4RTKw3QpRdHOr5/NfKBZuzyAv0WYVwKqonYyTKblLrP11ViDr6Itb7BVDUw
C1NbQ94PS+Tz/pPrrBODrsWtbjBRUnUf6qt3v1ufbxcObIuwsNeMI6VWOwOdGFdv
1urHQ35RHojMD5hicNej2TW8chWWyPDnR2h6uTD2TVvcSQfIy5+Lc0Tcxc9brRN/
5tsEYmG1brj4BN6M6+x7/48D2lgZyNPYl6xRmmf79wfsSo02sm3JKbcsvORvP9YS
XBSoWOlX609kHPNzPPt9g0+3TDoWvaq8hkiJ29fP1v1ZFQASPbLu/wlyZdoVqnZ2
/XTmm657bxOGxake6VT+2SJmoZEuh5cxTQb5Y4/TAd7uK8AW6ARAxwbMltcPLxX9
1DzK3EmPK6X/bGhNlEuEQiRa1G6+o7eKzzlaOciG0vo0UjEaIYrkZO3pgQKanFeZ
8odBAstpXuvJsOwHNz3hAYBLzJ5xjRjTZZPrHcZzELGZZiW07yRKrXEf58ygavno
sh5jakTVnFdMyrJRYumgg5CjtJ+W1ujys14p3hHSIxj0bootrdoa4w9FD7lce64X
fsmM+pCAHv0eIFYhKvr5
=7xPe
-----END PGP SIGNATURE-----
