X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["931" "Friday" "10" "April" "2015" "21:49:51" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150411014951.84A886FC00E@smtpvmsrv1.mitre.org>" "26" "[oss-security] Re: CVE Request for read-only directory traversal in Etherpad Minify" nil nil nil "4" "2015041101:49:51" "[oss-security] Re: CVE Request for read-only directory traversal in Etherpad Minify" (number mark "        cve-assign@m Apr 10   26/931   " thread-indent "\"[oss-security] Re: CVE Request for read-only directory traversal in Etherpad Minify\"\n") "<20150410232241.GS2456@yuggoth.org>" ("<20150410232241.GS2456@yuggoth.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9464 invoked by uid 550); 11 Apr 2015 01:50:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9446 invoked from network); 11 Apr 2015 01:50:03 -0000
In-Reply-To: <20150410232241.GS2456@yuggoth.org>
Message-Id: <20150411014951.84A886FC00E@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, security@etherpad.org
Date: Fri, 10 Apr 2015 21:49:51 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request for read-only directory traversal in Etherpad Minify
To: fungi@yuggoth.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> Backslashes are replaced with slashes in
> the path parameter of HTTP API calls after path normalization

> https://github.com/ether/etherpad-lite/commit/9d4e5f6e35153129377206ef545d4965afae627d

Use CVE-2015-3297.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVKH0mAAoJEKllVAevmvmsENgH/0FWEJl/AaToR484pgrOpafC
/WbiO8TTlZ9+TOmdnsQ6eLKMUJ+vH+jMuSp4yHqxwN/hwXmNSVCPhsVfI1ei1C4D
R3/O6kY9Blf4N/8bpqyLJglna7NZmvdCFF/e3P+uRV/WN6rK/d1M3awEai57K+k4
CNNBCsjxotGOOo4p1GDKJz1NGFi8lunlLvfCO4pe4WjiQsF3adOg3gLpk/T3aAJr
SsDRkS2E7T8MokPf2+MLi8kM7dVif5V6HMjlK85RTLFt2nI0xlRKsLAqOxpg2jY9
KPQqQugj1aBW9ZZtNUgCuSelbzqytLfsGTA7CyM+HD+JpV34NqCmjNM07smCTdg=
=ccJQ
-----END PGP SIGNATURE-----
