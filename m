X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1299" "Thursday" "29" "October" "2015" "16:51:04" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151029205104.BDBB4B2E09D@smtpvbsrv1.mitre.org>" "36" "[oss-security] Re: CVE request - Icinga 1.13.3 and older are vulnerable to XSS" nil nil nil "10" "2015102920:51:04" "[oss-security] Re: CVE request - Icinga 1.13.3 and older are vulnerable to XSS" (number mark "        cve-assign@m Oct 29   36/1299  " thread-indent "\"[oss-security] Re: CVE request - Icinga 1.13.3 and older are vulnerable to XSS\"\n") "<42EBFF7E-09FE-4998-9805-A2812EFC83F9@bitchbrothers.com>" ("<42EBFF7E-09FE-4998-9805-A2812EFC83F9@bitchbrothers.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24108 invoked by uid 550); 29 Oct 2015 20:51:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24082 invoked from network); 29 Oct 2015 20:51:16 -0000
In-Reply-To: <42EBFF7E-09FE-4998-9805-A2812EFC83F9@bitchbrothers.com>
Message-Id: <20151029205104.BDBB4B2E09D@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu, 29 Oct 2015 16:51:04 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request - Icinga 1.13.3 and older are vulnerable to XSS
To: ricardo@bitchbrothers.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://dev.icinga.org/issues/10453

> Classic-UI with the CSV export link and pagination feature

> The functions parsed QUERY_STRING from the environment without
> properly sanitizing it.

> /cgi-bin/status.cgi?host=all&[XSS]

Use CVE-2015-8010.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWMoZFAAoJEL54rhJi8gl5Q7oP/A1ALnCznQCfABA13OjO0gPQ
7AAhmJ7ehF75Zhj+5HrGl4AzqxdFQ36jGGVhFvedBBCt6GKEGmdz5w3LXcMW0fUx
oV3Fj5odzUJzscnZhzVvDdoce6hFJaXhuTOtdEhU2TBNr1tf6HwzXhT5nbOcfOAa
lFi5KFVCFhXBtk0yCzufCoFEb6ey6xkNXxTI5xiSxtyngE5rPW6/Iczqsj5cVC5B
FhYwmnLa7L+wrW8wy4/9DaQRedKWYpZpwCpfoFyDykVNuoIFFkRVKlyM53tnBmS0
j7cHHVfQezAJSK/Yr40PcYsSP6lNKydMArzDoo8n5qWMN5TkjSAVFg+B4pq0CHCY
/TjTXM8AMGlMIrQldxfPVrIYvwrU5FYGHgONNf2yFDfaCCUTgbNrwEize4WgwzJV
VsUpKgY/WV00LS5WmfzD6mPhz9kdewKaBiLpOg4lFY5szB+qpjdzhW9a48VOHmQZ
6mut47yGovCoiZZGf2AHmEjwIoaiQu7qYJfUSsU5aRfpKSMlXxatWkR/imwJ4acU
IwCkdbYnORwx/umNqhVGtEgvVonwdSwF3DpIDvduCxnI4TsGgvZ9VF7DbW45/kT2
XuXiaRRD2YS5RFlF7fm3GDe5sXWER8+BgqXZqynkXvo7/ZRc44gWPU/4WKdvbS/+
5zpre8b5xsrn4rroQTOX
=CtNa
-----END PGP SIGNATURE-----
