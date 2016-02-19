X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1463" "Friday" "19" "February" "2016" "15:05:20" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160219200520.2D1413321C7@smtpvbsrv1.mitre.org>" "37" "[oss-security] Re: CVE request: didiwiki path traversal vulnerability" nil nil nil "2" "2016021920:05:20" "[oss-security] Re: CVE request: didiwiki path traversal vulnerability" (number mark "U       cve-assign@m Feb 19   37/1463  " thread-indent "\"[oss-security] Re: CVE request: didiwiki path traversal vulnerability\"\n") "<CADk+ZPONm_qyZX1UAw-UP=f0NUt6Nr-FLm6Dp5O4d-Rf18m2-w@mail.gmail.com>" ("<CADk+ZPONm_qyZX1UAw-UP=f0NUt6Nr-FLm6Dp5O4d-Rf18m2-w@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 4069 invoked by uid 550); 19 Feb 2016 20:05:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 4046 invoked from network); 19 Feb 2016 20:05:32 -0000
From: cve-assign@mitre.org
To: mouzannar@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, yarolig@gmail.com, security@debian.org
In-Reply-To: <CADk+ZPONm_qyZX1UAw-UP=f0NUt6Nr-FLm6Dp5O4d-Rf18m2-w@mail.gmail.com>
Message-Id: <20160219200520.2D1413321C7@smtpvbsrv1.mitre.org>
Date: Fri, 19 Feb 2016 15:05:20 -0500 (EST)
Subject: [oss-security] Re: CVE request: didiwiki path traversal vulnerability

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

>>> https://github.com/OpenedHand/didiwiki/pull/1/files
>>> https://github.com/yarolig/didiwiki/commit/5e5c796617e1712905dc5462b94bd5e6c08d15ea
>>> curl http://localhost:8000/api/page/get?page=/etc/passwd

>> We can assign a CVE ID if there is going to be a DSA.

> The Debian Security team is planning on publishing a DSA

Use CVE-2013-7448.

There is no CVE ID for the theoretical C:\file.txt attack on Windows.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWx3R3AAoJEL54rhJi8gl56FIQAKhiDXHz+ZfYJW3Q8yQsOTGY
NCWQd87pKkg9glEACwCi/G+xbuPAW2MabkvYu5EPVvggtiIl0HHcVal+NCg4k8wW
1ObCjslioox7lU4O/AZMiSfv7RwfadM2Bsg16jKIo1E6MmkaTcFepOwJK3G5NWuA
HavNfY28wH1XzGp5SH6TDW343dXaJb9yzOBsGxn5UlEbs5piS5tiPe11+l1vO/eW
rEA2USyXgtsSxu/vJruGzYxRiztwDaiJkT9n6avTKTcwO2Y7qkVeeDxzLAOG1iq2
zM6Xvc2ejB5qmMBU0Oo75CE1MdcXZKhQ/62+zs3JrlKamD+8MoObW4YUWUKHQmLm
/XOQ+lbFYhNkuaPz/xvZwiCT68acVuaSQomEge2bcDHPbAALO2v6WYubGlZO/h1g
NARKJsPHYJfV4zIqtslReCbPAGW4caWkCnfJXLm0AqlGWXIKrjx2U/XtDCm00fy+
4AA4b2THlYjFkvnzQaZzpkYjZH8V15VgockWctCUHmiY8HVQR8SDagNB0vcNN7yU
e10DNt2PVwzS2iXewwx4P7sZmEPampGD3cOlH1bQklA4qBMcd2erRdoeL8N+aWAs
XBBcuZVFHXNP6F4HAg/1ZM1sxxFmirFnQ9TTsCk8Lu6pT4XJWYk7s83e3yrwjslc
AKbuwf1evPPl83oPO1Bs
=jQSe
-----END PGP SIGNATURE-----
