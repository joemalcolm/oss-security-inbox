X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1656" "Sunday" "18" "September" "2016" "13:06:54" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160918170654.46FF36C5824@smtpvmsrv1.mitre.org>" "39" "[oss-security] Re: CVE request : Exponent CMS 2.3.9 SQL injection vulnerabilities" nil nil nil "9" "2016091817:06:54" "[oss-security] Re: CVE request : Exponent CMS 2.3.9 SQL injection vulnerabilities" (number mark "U       cve-assign@m Sep 18   39/1656  " thread-indent "\"[oss-security] Re: CVE request : Exponent CMS 2.3.9 SQL injection vulnerabilities\"\n") "<CAEiFw0VXVgWtKP3cT6SzKgrWSrs5N_3f2HXFoWhx=fi2Qm24vg@mail.gmail.com>" ("<CAEiFw0VXVgWtKP3cT6SzKgrWSrs5N_3f2HXFoWhx=fi2Qm24vg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20305 invoked by uid 550); 18 Sep 2016 17:07:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20287 invoked from network); 18 Sep 2016 17:07:06 -0000
From: cve-assign@mitre.org
To: felixk3y@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CAEiFw0VXVgWtKP3cT6SzKgrWSrs5N_3f2HXFoWhx=fi2Qm24vg@mail.gmail.com>
Message-Id: <20160918170654.46FF36C5824@smtpvmsrv1.mitre.org>
Date: Sun, 18 Sep 2016 13:06:54 -0400 (EDT)
Subject: [oss-security] Re: CVE request : Exponent CMS 2.3.9 SQL injection vulnerabilities

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> 1)
> https://github.com/exponentcms/exponent-cms/blob/master/framework/modules/addressbook/controllers/addressController.php#L166-L175
> 
> 2)
> https://github.com/exponentcms/exponent-cms/blob/master/framework/modules/blog/controllers/blogController.php#L192-L195
> 
> 3)
> https://github.com/exponentcms/exponent-cms/blob/master/framework/modules/core/controllers/expCommentController.php#L129-L134
> 
> https://github.com/exponentcms/exponent-cms/commit/e916702a91a6342bbab483a2be2ba2f11dca3aa3

Use CVE-2016-7400 for all of the SQL injection issues fixed in
e916702a91a6342bbab483a2be2ba2f11dca3aa3.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJX3shoAAoJEHb/MwWLVhi2SKgP/0ROz868/9VNunPODC3o0SNo
DH/VdQ0h1DRDwWBA4R1Lc16Qlsee4m8gInD+8e0LtKWc07OMzg+VqHICTdW3COUd
Cd+nXTMRmr9T/TIsvfN/tEch23o36/z4d1kA9QDgODELvNW3EsQXwDePMlWbRi80
7u2Y6uf7gshQmq95fSlsbawkj+0813X5XvCxX22wXZWGCQhlAP9ejxv1Q+Z4qbyu
JEY5DXYubfEjXsv1AIKyoiAGSGesO3MeXoGXYnPFd8V18NJNZiz4xHe0hurYVhuH
LNBnsZKO7whSciiUgcXKopbzkKloMEVEdHlu+HZ63eALvMWcKxQrxGlcKTVBWcOs
CKUlsTjnD7liEZk46HIiVVSUFLnxCR/Q3koR0tgfBRNJQ9zpoMxNwxFKEi0366/Y
MHDYKuYUvefMTDQJhtVYYNANCC+LQxdeBwfQsVFZnp/2JbCGDs5OSlUwl7WFTVh2
nI7kF8lqUpDIni5VhYAniEUedGToFMgusDQaWCLWV34Tyhm5XfGn7bMZVr3HLPn9
wTsfRJnItjgerHSpnezcSc+i4dALBINpjxYyqJCbRMmIx/pwlI77W/fShgXq6VLh
0eJmP32P3sRV+sGYYphMSUQuyA9Lv3YA9oEuct1/gcGyQDzqhd1HklhbX2/UpykW
ftRu2RktzIYSf/3CC5oL
=rC1I
-----END PGP SIGNATURE-----
