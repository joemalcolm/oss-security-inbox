X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1624" "Thursday" "26" "May" "2016" "14:20:59" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160526182059.BF3EE7BC09E@smtpvmsrv1.mitre.org>" "36" "[oss-security] Re: CVE Requests: libimobiledevice and libusbmuxd" nil nil nil "5" "2016052618:20:59" "[oss-security] Re: CVE Requests: libimobiledevice and libusbmuxd" (number mark "U       cve-assign@m May 26   36/1624  " thread-indent "\"[oss-security] Re: CVE Requests: libimobiledevice and libusbmuxd\"\n") "<20160526002711.GB26856@hunt>" ("<20160526002711.GB26856@hunt>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7537 invoked by uid 550); 26 May 2016 18:21:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7508 invoked from network); 26 May 2016 18:21:11 -0000
From: cve-assign@mitre.org
To: seth.arnold@canonical.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, security@ubuntu.com
In-Reply-To: <20160526002711.GB26856@hunt>
Message-Id: <20160526182059.BF3EE7BC09E@smtpvmsrv1.mitre.org>
Date: Thu, 26 May 2016 14:20:59 -0400 (EDT)
Subject: [oss-security] Re: CVE Requests: libimobiledevice and libusbmuxd

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Please assign CVE(s) to libimobiledevice and libusbmuxd; both libraries
> accidentally bound a listening IPv4 TCP socket to INADDR_ANY rather than
> INADDR_LOOPBACK:
> 
> https://github.com/libimobiledevice/libimobiledevice/commit/df1f5c4d70d0c19ad40072f5246ca457e7f9849e
> https://github.com/libimobiledevice/libusbmuxd/commit/4397b3376dc4e4cb1c991d0aed61ce6482614196

Use CVE-2016-5104 for this vulnerability in both products. We did not
investigate how these products were developed, but it is clear that
these were not independent mistakes in separately written code.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXRzuDAAoJEHb/MwWLVhi2o4UP/Axr1qTym6sYJgBkuyLRvVDe
hPsp7oZxBpD7XsyB9sgVLfcS831/bVJDOZMM8gBmF+U3XFUwsxrG/0Eeiy6Ye809
07tA1DwQVzkdEVoFI5zyqP3XhZoyCux6oouEfT4Q/SbLzZMP8erMPs9G0+BIdNDz
tzCen2Ey3hnXdYzm9Sl2Py3yvYt1XXtAVPoc1OOq/P1dYToDrWeWW1wW2eHWLr0L
UlzidNHiPFUWz7VtO3aydSMkOq7nmFL9qjup2CS0+5COi5hTvy+GhV1k+IubvD/Z
C0SBru8ldqnXwA/b920nHm/IFuYwwaUx9r09dsFTeEawG9CNd4y2SgH9fd6fdHi2
QpZwBPsLJQvDCzWGaALUGfeWFFPjDk8ZmnVuRlrvDPHqW2jE+t3y7K4Zk8lPR8tP
Pj6sAyxVosE24u3aq+kMpTgfDu+DC3qQXxiU9j5c0oOCy8IoDBSTeWaMa+4kCiPp
h0+el4k55Zkm2wlD8v1Qe7qo+Cm6ALk2A+S4m05mXh8J17GXw9A1ZAkEBsnpkYcw
xiK+qYIxUCfexMi/GfdngmKHnHaUiH4F2HZvyUOw9pdIVI3wZs0E/J428a/ZfPF3
hKr3p60rZIrYGf9QmMaPqAo83MVnS0G29fMEO8pbRamDWewm+oBKX9KiUjKmzxmg
2QIZO/45MdzfAHHPmr2i
=ZCZK
-----END PGP SIGNATURE-----
