X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1370" "Saturday" "5" "December" "2015" "22:07:46" "+0200" "Henri Salo" "henri@nerv.fi" "<20151205200746.GA28593@lakka.kapsi.fi>" "35" "Re: [oss-security] Re: CVE request: Redmine: cross-site scripting vulnerability fixed in 3.0.0 and 2.6.2" nil nil nil "12" "2015120520:07:46" "[oss-security] Re: CVE request: Redmine: cross-site scripting vulnerability fixed in 3.0.0 and 2.6.2" (number mark "U       henri@nerv.f Dec  5   35/1370  " thread-indent "\"Re: [oss-security] Re: CVE request: Redmine: cross-site scripting vulnerability fixed in 3.0.0 and 2.6.2\"\n") "<20151205144023.D7E276C0237@smtpvmsrv1.mitre.org>" ("<20151205073937.GB14618@lakka.kapsi.fi>" "<20151205144023.D7E276C0237@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28388 invoked by uid 550); 5 Dec 2015 20:07:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28367 invoked from network); 5 Dec 2015 20:07:58 -0000
Date: Sat, 5 Dec 2015 22:07:46 +0200
From: Henri Salo <henri@nerv.fi>
To: cve-assign@mitre.org
Cc: oss-security@lists.openwall.com
Message-ID: <20151205200746.GA28593@lakka.kapsi.fi>
References: <20151205073937.GB14618@lakka.kapsi.fi>
 <20151205144023.D7E276C0237@smtpvmsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; x-action=pgp-signed
In-Reply-To: <20151205144023.D7E276C0237@smtpvmsrv1.mitre.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-SA-Exim-Connect-IP: 2001:1bc8:1004::1
X-SA-Exim-Mail-From: fgeek@kapsi.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
Subject: Re: [oss-security] Re: CVE request: Redmine: cross-site scripting
 vulnerability fixed in 3.0.0 and 2.6.2

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

On Sat, Dec 05, 2015 at 09:40:23AM -0500, cve-assign@mitre.org wrote:
> Is there any public information that associates 19117 with the
> 
>   "Potential XSS vulnerability when rendering some flash messages" "2.6.2 and 3.0.0"
> 
> line, or are you providing this association based on your own involvement with the
> vulnerability disclosure?

File ./doc/CHANGELOG says:

== 2015-02-19 v2.6.2
* Defect #19117: Potential XSS vulnerability in some flash messages rendering

- -- 
Henri Salo
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQIcBAEBAgAGBQJWY0QSAAoJECet96ROqnV0Eu4QAMpX7Xkqs0e5mOltgTuzDs1j
ML7q9L1VVJylflXcuRvAnJEVDS4LVNylBomlCZmZl8nY88vjZnwUXXh8h0ZRakfY
bUQjrmSQVZrecpO/UVuYQLJUeOO7MvTJFFVsCIQKHA8Y6nGsxtixgTNDOnWHrckn
NVqOf8wg29drsqAXTMoQrDofRJ2l9KgAA52gIdqw3aLx7I1PKyxmscWFuReDfdFt
o9YYl6Z4+Vynre4TfFXFS8h+6U/4zOGUoHo+LbLgjhebQwRXG2sXABB9qJ71aH9K
n8xwTWjKV3M3VjY7bf7tv4O+GCxsC1KMylqZtS3quQjSEKsS2fGuj7Nrd/2J+HqC
4d15fAgg0JRVfZcEmsi0WYVNfN25PrQHpPP7Urh3YhuwL3dDQtHTaqv3Jafx49JG
W0ZLtYRGi5d9a1ZHPt4cpnTDl+eSFLX1Jxcm3LEONBeilnXVYyk689U8P0US4dbj
1iqD/UXMoKs3hpEvi+yRdaPy0OB3DQvdc1k0BdAkbaCYpK7SVQpGed991mtc43MK
t5HhZUXBodlIouEeJkdFB/l33SkhkAnoYwFPJXN+hIkxn/H71+q7uZV7O0QxVtWT
AaalcKRd11ch0q9JpSO1Jh/hCvor85Oib6o8a3v7nu6WMCXxqReICl2SFF8QpRA/
2cBSXbWVcCZTg9gTav85
=/k8P
-----END PGP SIGNATURE-----
