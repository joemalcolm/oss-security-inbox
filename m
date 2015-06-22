X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1650" "Monday" "22" "June" "2015" "17:25:21" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150622212521.220A172E023@smtpvbsrv1.mitre.org>" "47" "[oss-security] Re: CVE request: IPython XSS in JSON error responses" nil nil nil "6" "2015062221:25:21" "[oss-security] Re: CVE request: IPython XSS in JSON error responses" (number mark "U       cve-assign@m Jun 22   47/1650  " thread-indent "\"[oss-security] Re: CVE request: IPython XSS in JSON error responses\"\n") "<CA+tbMaXPPLNRLW8MeN3c9nvupz6z0E2EZRgg55psyvEB-1fb3g@mail.gmail.com>" ("<CA+tbMaXPPLNRLW8MeN3c9nvupz6z0E2EZRgg55psyvEB-1fb3g@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12262 invoked by uid 550); 22 Jun 2015 21:25:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12244 invoked from network); 22 Jun 2015 21:25:33 -0000
From: cve-assign@mitre.org
To: rgbkrk@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, security@ipython.org
In-Reply-To: <CA+tbMaXPPLNRLW8MeN3c9nvupz6z0E2EZRgg55psyvEB-1fb3g@mail.gmail.com>
Message-Id: <20150622212521.220A172E023@smtpvbsrv1.mitre.org>
Date: Mon, 22 Jun 2015 17:25:21 -0400 (EDT)
Subject: [oss-security] Re: CVE request: IPython XSS in JSON error responses

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> https://github.com/ipython/ipython/commit/7222bd53ad089a65fd610fab4626f9d0ab47dfce
> https://github.com/ipython/ipython/commit/c2078a53543ed502efd968649fee1125e0eb549c

> JSON error responses from the IPython notebook REST API contained
> URL parameters and were incorrectly reported as text/html instead of
> application/json. The error messages included some of these URL params,
> resulting in a cross site scripting attack.

(We wanted to have two CVE IDs because of the following difference in
how 2.x and 3.x are affected. We realize that this is perhaps a
marginal case for that, because the 3.x code is essentially just:

  self.log.warn("/api/notebooks is deprecated, use /api/contents")
  self.redirect(url_path_join(
      self.base_url,
      'api/contents',

)

> /api/contents (3.0-3.1)

Use CVE-2015-4706 for the /api/contents path.


> /api/notebooks (2.0-2.4, 3.0-3.1)

Use CVE-2015-4707 for the /api/notebooks path.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJViHxpAAoJEKllVAevmvmsKHMH/1/6j3dATboZR89XjRTsMhob
mQa5sqbEjCAHUxvfZlCPqDc/JQ+P+76cvOqjkyS/xDlvl9hLj2EBF46apVOLexcw
UdiR3FmVsBNUq/QPupSobZGPrMywaypla34MfIbSod/rDZN/A8sGDvt7J6sGOoAU
on4ZddKjCg85YUQr47AgVmU1FLnGpkPyA22KazhJnSyfdNv5/OptG4QwMnH5o774
SospTf0okgh180Fj54BnNwiPARA71syjOyYBoveQDKbbdkKTtaWB9cWVeAvePkrd
mc1Yvvxwzws/wednn2qFLTWPPCvUvUEswHSuB5p9JDpizdQDO8t8xeBWmZkWXu0=
=sYFZ
-----END PGP SIGNATURE-----
