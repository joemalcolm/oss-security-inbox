X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2573" "Sunday" "23" "October" "2016" "12:51:01" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161023165101.0AA6E6C4F04@smtpvmsrv1.mitre.org>" "56" "[oss-security] Re: jasper: two NULL pointer dereference in bmp_getdata (bmp_dec.c) (Incomplete fix for CVE-2016-8690)" nil nil nil "10" "2016102316:51:01" "[oss-security] Re: jasper: two NULL pointer dereference in bmp_getdata (bmp_dec.c) (Incomplete fix for CVE-2016-8690)" (number mark "U       cve-assign@m Oct 23   56/2573  " thread-indent "\"[oss-security] Re: jasper: two NULL pointer dereference in bmp_getdata (bmp_dec.c) (Incomplete fix for CVE-2016-8690)\"\n") "<1754691.K3Z88V5ftk@arcadia>" ("<1754691.K3Z88V5ftk@arcadia>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15549 invoked by uid 550); 23 Oct 2016 16:51:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15528 invoked from network); 23 Oct 2016 16:51:13 -0000
From: cve-assign@mitre.org
To: ago@gentoo.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <1754691.K3Z88V5ftk@arcadia>
Message-Id: <20161023165101.0AA6E6C4F04@smtpvmsrv1.mitre.org>
Date: Sun, 23 Oct 2016 12:51:01 -0400 (EDT)
Subject: [oss-security] Re: jasper: two NULL pointer dereference in bmp_getdata (bmp_dec.c) (Incomplete fix for CVE-2016-8690)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> the previous assignment on this issue was about only one CVE ( see
> http://www.openwall.com/lists/oss-security/2016/10/16/18 )
> 
> We sayd that the cause of the two null pointer access was the same.
> 
> Now for completeness I posted the stacktrace of both locations in bmp_dec.c
> but I guess that the root cause remains the same.
> 
> Do you need to reject one of these two or it is fine as is?

We believe it is fine as is. The two issues could be fixed
independently, although it is unlikely that anyone would do that:

                        if (numcmpts == 3) {
                                jas_matrix_setv(cmpts[0], j, red);
                                jas_matrix_setv(cmpts[1], j, grn);
                                jas_matrix_setv(cmpts[2], j, blu);
                        } else {
                                jas_matrix_setv(cmpts[0], j, red);

394 is the first "red" line; 398 is the second.

In future cases, if you have additional analysis suggesting that two
findings are best represented with one CVE ID, then please include
that additional analysis in your first posting about the issue.
Otherwise, we often won't know, and there could be a perception that
the number of assigned IDs is inconsistent. Here, neither
https://blogs.gentoo.org/ago/2016/10/18/jasper-two-null-pointer-dereference-in-bmp_getdata-bmp_dec-c-incomplete-fix-for-cve-2016-8690
nor http://www.openwall.com/lists/oss-security/2016/10/18/5 explicitly
says that "two NULL pointer dereference" ought to have one CVE ID.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYDOoQAAoJEHb/MwWLVhi2lD8P/iNGYbRzanD6MBGinuytNLub
LtFCRYCGRIGOWM8a9jFZlDTuqxGLVekgUp7oil9VT8hYd1q9E8nJyWCZALjA0HHD
cq8ZvKIF43dKn9Ohp33UXWN5icBgsiLBg1bV8wf3gN8PtRINoR+y07K5aZJc5aCN
4fG67UNUVD/OZ0NnW171dcJpwx9JD2D92ogU18U99Oy195eO4DrSZFFNQHgFeAGh
jSFDm3r/0HfjEHI54FVGVKAH85RHOkRvDMpjI4J8O12biabUO0S8s/m13N7EYtmD
9bGalKIdIv/ArK75zfqNrJY+zJ5hddeL2hw5iDTICagR27a7lgVdpid3q0WAnWVE
5dq86+4fu4K+KWvZZAgT/P7DOt0alnwLsL3LEJEH/uWdscPnCNPmE1NtW4JCTdrR
3RhkEbgJIozC50yxqw1hHyZP0DDLR/oAS+Fg5gEgY42eurVW9NInXGdl+8bPut81
g3oGMtggaiZhJ5o6OSRPrNNfc39Jqs/E6on9LfQj3w0krZ7px4sztsWCOC+DCqBU
/QRPbTt/AbC5bGYfkUUcdgBAIXyvzihAwYrhEnmXlfmcZKKze8+29UumzALEw1Tp
VTi4fNv3LFOJAUS4NUjItMJ0ivtNtFIogiruXnVRkV4KdU7lu1coCoCfKHaD4wzN
2XLFOaL8yZZu5tmRhbNK
=z2oX
-----END PGP SIGNATURE-----
