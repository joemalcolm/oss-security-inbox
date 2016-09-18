X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1524" "Sunday" "18" "September" "2016" "10:41:38" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160918144138.A17646C571B@smtpvmsrv1.mitre.org>" "38" "[oss-security] Re: CVE Request: GnuTLS: OCSP validation issue (GNUTLS-SA-2016-3)" nil nil nil "9" "2016091814:41:38" "[oss-security] Re: CVE Request: GnuTLS: OCSP validation issue (GNUTLS-SA-2016-3)" (number mark "U       cve-assign@m Sep 18   38/1524  " thread-indent "\"[oss-security] Re: CVE Request: GnuTLS: OCSP validation issue (GNUTLS-SA-2016-3)\"\n") "<20160918123124.poc7x5skdijl2j3m@eldamar.local>" ("<20160918123124.poc7x5skdijl2j3m@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20003 invoked by uid 550); 18 Sep 2016 14:41:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19979 invoked from network); 18 Sep 2016 14:41:50 -0000
From: cve-assign@mitre.org
To: carnil@debian.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <20160918123124.poc7x5skdijl2j3m@eldamar.local>
Message-Id: <20160918144138.A17646C571B@smtpvmsrv1.mitre.org>
Date: Sun, 18 Sep 2016 10:41:38 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: GnuTLS: OCSP validation issue (GNUTLS-SA-2016-3)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> can falsely report a
> certificate as valid under certain circumstances

>> if the serial from the revoked certificate is a
>> prefix of the other one, and the additional bytes happen to be equal
>> on the system doing the verification.
 
> https://lists.gnupg.org/pipermail/gnutls-devel/2016-September/008146.html
> https://gitlab.com/gnutls/gnutls/commit/964632f37dfdfb914ebc5e49db4fa29af35b1de9
> https://bugzilla.redhat.com/show_bug.cgi?id=1374266

Use CVE-2016-7444.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJX3qaBAAoJEHb/MwWLVhi2ZIQQALqBsgvjmj3aKEwKaFKSvNcM
vOm5UKhOpdwYX7syoPi9J/IfGcvs2Z8K1GPnOxvyyuFBcBzbypgW+UnEvv8kT7ze
5ckPgFSjfaco1cYcBhKq5hlQoTLayhH3YP8XDzWlfE3KijEJAQuA6+wcHL2ddg3d
29nAuKgIkd27SZMEDDcv+x8b3Ibnds/LWUWFleAEPBBiyTrSgeLiWmgLToHSiOND
wyfmiNg9SouaBm3icAnd95AHYQmMztrd5xEvuAWK3ZsMFgJtrPjK1kTk13madyfN
TgwwQ2PM99EmRgaXHqvrXeRcohRQtV2ptgMqQS9a31fk7uJb8HITNgESoM4z2FRF
dLpLzDAMm9X1IKXRDDHqOPobFgwe/ZyG3MEl8994N1Y3N2QYrXm84SmiWTYtDlcD
HX2NFievDARKQBzHvJhQwDw98rdFb9P7CLvz4dolVix07xZzy505exktxpAH0yTs
2LXkpB1FQb99ZJzPPZ967S1bY0fpANQzCFLBQlZ8B5g2bmUwo52c+C+JsHay/+3i
dnFPSxTJVXRStPHs1II7NufIGjBlitfIHIRlpTtzCsFTy7ppgI5PEfpA/tnCFkXR
bhrtIOGqqGyj2ySa4nmYhA95MRLO7XoNIXYT5byRpXI6I6pIEIRkNxeYIChSydEY
m1uV5gCz/FIWXRCl6Dzi
=1u4M
-----END PGP SIGNATURE-----
