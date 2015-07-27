X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1762" "Monday" "27" "July" "2015" "16:28:08" "+0300" "Henri Salo" "henri@nerv.fi" "<20150727132808.GA23000@lakka.kapsi.fi>" "46" "[oss-security] CVE request: Easy!Appointments 1.0 Missing HTTPOnly flag" nil nil nil "7" "2015072713:28:08" "[oss-security] CVE request: Easy!Appointments 1.0 Missing HTTPOnly flag" (number mark "U       henri@nerv.f Jul 27   46/1762  " thread-indent "\"[oss-security] CVE request: Easy!Appointments 1.0 Missing HTTPOnly flag\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32513 invoked by uid 550); 27 Jul 2015 13:28:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32492 invoked from network); 27 Jul 2015 13:28:20 -0000
Date: Mon, 27 Jul 2015 16:28:08 +0300
From: Henri Salo <henri@nerv.fi>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org, Alex Tselegidis <alextselegidis@gmail.com>
Message-ID: <20150727132808.GA23000@lakka.kapsi.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; x-action=pgp-signed
User-Agent: Mutt/1.5.21 (2010-09-15)
X-SA-Exim-Connect-IP: 2001:1bc8:1004::1
X-SA-Exim-Mail-From: fgeek@kapsi.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
Subject: [oss-security] CVE request: Easy!Appointments 1.0 Missing HTTPOnly flag

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Product: Easy!Appointments Open Source Appointment Scheduler
Product URL: http://easyappointments.org/
Vendor: Alex Tselegidis
Vulnerability Type: Information Exposure (CWE-200)
Vulnerable Versions: 1.0
Fixed Version: next release
Vendor Notification: 2015-04-03
Solution Status: Fixed by Misha Tavkhelidze
Solution Date: 2015-06-04
Public Disclosure: 2015-07-27

Vulnerability Details:

Easy!Appointments do not include the HTTPOnly flag in a Set-Cookie header for a
'ci_session' cookie, which makes it easier for remote attackers to obtain
potentially sensitive information via script access to this cookie.

Fixed in following commit:
    https://github.com/alextselegidis/easyappointments/commit/e3273582213849e46e6ff5296be1f169bd96399d

References:
    https://www.owasp.org/index.php/HttpOnly
    https://en.wikipedia.org/wiki/HTTP_cookie#HttpOnly_cookie

- -- 
Henri Salo
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQIcBAEBAgAGBQJVtjHoAAoJECet96ROqnV0HjQQAISCtCcmPC+0fdBlr5hMmxc7
/zrVGSmxlpk+MIhQrUoVSlCWOJAsCTTz2gO28fsMMm+9lT5sMTrI0MnKvNfXw4Nt
6fusZBfShFlFTbiE6IcwSTWkeNYIAT9o4R8Gdj5KOx34NWdpbCoGLcfBOzabULTq
tSBtpcl122bm9ekkQq5C7Fcih5WXOdT+DnQQzOaUc/CUgoEIysrKZSmERXIHalgR
Hz3GzWqJ9i3r4CbveDW2YZeLwVb8rmnpzwtR48UmhJU6kzw1feaHpbcuECeSaPL5
sYC1QbmKublMI1eiMYKMRzDaoQz2KBUmfDPahiczV9o6PYGb1INnrliAtm1JE1xH
001PsT0alzk83pQL+aQGs4isI/8sXebPiYbsPuAcpJYTE5Znsa1hDlMlkmyOhEnY
F3llTwMr/oWbdvfFRID93ugj9uTG+kJn1kY/DqDDCet7pTzsxse9DIpei6CF8yJl
wtnXPb2CDUrY6hY4mQ/ii57Emq7XemtzByReXNssTwFdrJej+SKSacNwHsBkd9to
dRdJHLupWgzny4g8Q237EdqyBbF6w6nv5XLbCJhlYDeAQDdc7vi6k94udrUgwyDP
s5nqM7GOD2ANc8pxideRCZeb5UX6AUaYHsGY2s1aiX1o/h7z6KWEVOTpDO3FGTEo
HZF0Fr4yxBVr+ELoWpE4
=6/cR
-----END PGP SIGNATURE-----
