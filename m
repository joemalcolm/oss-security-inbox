X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1292" "Monday" "14" "December" "2015" "16:32:30" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151214213230.52EC66C0180@smtpvmsrv1.mitre.org>" "32" "[oss-security] Re: CVE Request: Cups Filters/Foomatic Filters: Does not consider semicolon as an illegal shell escape character" "^Cc:" nil nil "12" "2015121421:32:30" "[oss-security] Re: CVE Request: Cups Filters/Foomatic Filters: Does not consider semicolon as an illegal shell escape character" (number mark "        cve-assign@m Dec 14   32/1292  " thread-indent "\"[oss-security] Re: CVE Request: Cups Filters/Foomatic Filters: Does not consider semicolon as an illegal shell escape character\"\n") "<20151213080226.GA16071@eldamar.local>" ("<20151213080226.GA16071@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32494 invoked by uid 550); 14 Dec 2015 21:32:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32474 invoked from network); 14 Dec 2015 21:32:41 -0000
In-Reply-To: <20151213080226.GA16071@eldamar.local>
Message-Id: <20151214213230.52EC66C0180@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, adam.chester@pentest.co.uk, till.kamppeter@gmail.com
Date: Mon, 14 Dec 2015 16:32:30 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: Cups Filters/Foomatic Filters: Does not consider semicolon as an illegal shell escape character
To: carnil@debian.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> There was another commit in cups-filters upstream (revision 7419) as
> well adding (;) to the set of illegal shell escape characters:
> 
> http://bzr.linuxfoundation.org/loggerhead/openprinting/cups-filters/revision/7419

Use CVE-2015-8560.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWbzLXAAoJEL54rhJi8gl56G4P/j05Xk2oGZ6b/SzKblw1u9yW
pAG8vs9i2/t/bVIe8C72LWncwYWgFokvoFuHh6FDJVHCr1sPGF7iJnwGh4vivq4d
K0TGF4iccr8jS87JzUl0/SHtaC3/o4sbNsop6RL5dhyZv58ktTjQXFXDxAON/qIF
1mRuxNXIHEEvYWn/Ex9NAXYvjtDl7oDIZSPIRmVAzNHCnoBg/vMNtLjFngiRAYUq
Qh6I2XnELg3TnYVKLbU+4fhhvX3PB7VZY1u8LG8R68F+GXCabigFviX8ouP9nDQ0
6o4rZsx8sVuhxJetUg/mtvKUB49ri/iXbsRx3yhAwhk9tbTMoV2U7KwFUxhFOFGk
xQuC8Mfjc81+V3St+jneE9u8S5G6DWdrPQ+6giY5GY/H4oAn9G+J7pZi37gfWPQr
rwGg8g8gGvYeRnWmoTuoYzCE77bJpUhP4qelL7MJhwg0B3eXzssuvPHZy3291kjt
cy032m8kxfHGJbOI/st6zMU3hbcVGaab4Q/BbM96duF4hfdDDt3CLNHwCAjGw2+g
AE4hB4dRLLgZDS36YeoM3K74f6mqMugenQ3ycHb4Oaxl36aZnbiJ/lWOBOnM45Xr
Z4ha1aAkrCB+2O4lLYqHlZ7OBnbEQ82D1YFJqLGLzfjciMPhIav5jAeoYQnaycX1
NLicvp8YstJIJC3lvQIT
=eWKE
-----END PGP SIGNATURE-----
