X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1290" "Wednesday" "13" "July" "2016" "13:57:36" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160713175736.AFF4A33202D@smtpvbsrv1.mitre.org>" "33" "[oss-security] Re: CVE Request: openshift-node is logging private RSA keys to the systemd journal" nil nil nil "7" "2016071317:57:36" "[oss-security] Re: CVE Request: openshift-node is logging private RSA keys to the systemd journal" (number mark "U       cve-assign@m Jul 13   33/1290  " thread-indent "\"[oss-security] Re: CVE Request: openshift-node is logging private RSA keys to the systemd journal\"\n") "<20160713172318.GA28955@sisay.ephaone.org>" ("<20160713172318.GA28955@sisay.ephaone.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5241 invoked by uid 550); 13 Jul 2016 17:57:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5223 invoked from network); 13 Jul 2016 17:57:48 -0000
From: cve-assign@mitre.org
To: misc@zarb.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <20160713172318.GA28955@sisay.ephaone.org>
Message-Id: <20160713175736.AFF4A33202D@smtpvbsrv1.mitre.org>
Date: Wed, 13 Jul 2016 13:57:36 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: openshift-node is logging private RSA keys to the systemd journal

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://github.com/openshift/origin/issues/3951

>> https://github.com/openshift/origin/issues/3951#issuecomment-126726391

>> the root cause is storing the cert/key as envvars in the pod, which is what needs to stop.

Use CVE-2015-8945.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXhoC1AAoJEHb/MwWLVhi25jYP/A8sFCUCZLYD7GOYjUi3NIEP
KiPk/F0SQjzbtwLAHdZHD+X3XYp2z70f0ZESEXv9sO2ltH0lviuxrZQxODU0WM3R
ZKvq51ooXyxsD1k2Df/EwNW4ll69f388ulg2mZnsuR4mkzspJPQfiGQjP3Ant8jT
o9/uNEnw7AQmTPDLDgyAykZxJgdaGs2Mof2MO5vvP9XwdDJAJJTITfOK+bZmxD0t
wJR11mQvtRr5nyefj+0zaoJG0mZBkC6P5ZMxIWNzubOnUQLlMf8EfWcarVLUknNp
yS0SLF1dCgjfPWfrx2csMiJpxCsrZvwcMWIlwWhjSRDuNgq7+0tsRvKcHDObjNri
qtIJyq/85bXiAbrRInQDl402okH7T+SzoKhIldna2bxD710SRpgV/LIfy+yiAPgY
JZUSWSRNhIsA0ms7TtV8aYudc7WP6Ur6d8hAZ+M+DMdwSy6ZJrCjDtSFVVUsNhB3
mTN4dtpIdqKuTJTwfGioTkCNtMvr4wTbny+Ss0+yXqTu2n4Os73UZKtcj6v9bWty
6v03/VTIA7VIzoqcB03SX++qCCYR1e5U3Z3jWCP+0Hfemaph+s59NxbyX8on4JyM
tYVBT0RSzxP7Wl50Eu05hyYVjhRyH2sdxTzwyF8zvDOGoloS8XL1WmNB3zu1v6D2
sQpXbT9+W/HTOZMO1DPA
=8aCU
-----END PGP SIGNATURE-----
