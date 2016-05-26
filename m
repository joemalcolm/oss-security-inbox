X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1323" "Thursday" "26" "May" "2016" "14:18:56" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160526181856.014BE7BC0A1@smtpvmsrv1.mitre.org>" "33" "[oss-security] Re: CVE Request: roundcube: XSS vulnerability in mail content page" nil nil nil "5" "2016052618:18:56" "[oss-security] Re: CVE Request: roundcube: XSS vulnerability in mail content page" (number mark "U       cve-assign@m May 26   33/1323  " thread-indent "\"[oss-security] Re: CVE Request: roundcube: XSS vulnerability in mail content page\"\n") "<20160525135228.GA13576@eldamar.local>" ("<20160525135228.GA13576@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24228 invoked by uid 550); 26 May 2016 18:19:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24201 invoked from network); 26 May 2016 18:19:07 -0000
From: cve-assign@mitre.org
To: carnil@debian.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <20160525135228.GA13576@eldamar.local>
Message-Id: <20160526181856.014BE7BC0A1@smtpvmsrv1.mitre.org>
Date: Thu, 26 May 2016 14:18:56 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: roundcube: XSS vulnerability in mail content page

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Fix XSS issue in href attribute on area tag (#5240)
> https://github.com/roundcube/roundcubemail/issues/5240
> https://github.com/roundcube/roundcubemail/pull/5241
> 
> <img src=# usemap=#foo width=100%><map name="foo"><area href=[XSS] shape=default>

Use CVE-2016-5103.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXRzsvAAoJEHb/MwWLVhi2KlcQAK5YCa0J9EAyeVL8wtTL5fQd
ZULIXbjQ5jFSR/FP0zh7BFtpWPZCcfEsUcuxW2fC76NStQyeypLMBbGo+z0GMe0v
O0QmN1Jdk7DqpPo/g3nfX8v5S0XJdUNEXOXIgfB6RXGYLP6+j9uX5ZOgVIjFvXSi
XSrzh2YcDfuytqxZoUJkpgtfz8OGaSoJWRdC6MoF2ytmuZ9suB7OowKQyNRLszO+
dGeEh7T+MxepmDGTF3AQ0ssm7g7wEyC6ojBqsMdmZCVFbR84brDB8wc4ZWQYkI3e
ap0e/7dHyfzAzV3GN6BYvaz0rr/Wci8URQV+bRkObpRj8cKqAs/m2eaXOONxgCzn
Lw6WS4pVdgIFemvKV+Du/hewUHgo60g7dKQ1cw13UVO+VcQNv50wBpoc+W0KLR1r
hYAwEjN3V+pNvQZ+zNsO7IG2cVzGFWSBH3/amK9bAC3PZXRyY4bAbhF0GTEidgV5
f/qH8O4Y7TLHXunDwSStPtPpS94G6mHsOKaeHYdWODSs+2alJn+1MioLcAFdYq7G
sQ8QI4GoCN0JzVYMPMfTklByAtIrxG9cbpLa/X+/xSsbbXlIk+BJbGTD0Uz8iK4R
84J05w1ErGlJ0lphq5VfZbRIeM2wpLiVh58XAmiu7fh4+Z+JJpVR9ZzAdbS7TTj+
pkXD/GkrGu3Omjv8JSVl
=HbY0
-----END PGP SIGNATURE-----
