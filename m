X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1565" "Monday" "14" "November" "2016" "13:38:49" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<346ddf0f760c46afbf449b57d983a533@imshyb02.MITRE.ORG>" "37" "[oss-security] Re: CVE request: Jenkins remote code execution vulnerability" nil nil nil "11" "2016111418:38:49" "[oss-security] Re: CVE request: Jenkins remote code execution vulnerability" (number mark "U       cve-assign@m Nov 14   37/1565  " thread-indent "\"[oss-security] Re: CVE request: Jenkins remote code execution vulnerability\"\n") "<041433EB-C484-41D5-8589-A5CE9F8BA0E7@beckweb.net>" ("<041433EB-C484-41D5-8589-A5CE9F8BA0E7@beckweb.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1342 invoked by uid 550); 14 Nov 2016 18:39:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32754 invoked from network); 14 Nov 2016 18:39:01 -0000
From: <cve-assign@mitre.org>
To: <ml@beckweb.net>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <041433EB-C484-41D5-8589-A5CE9F8BA0E7@beckweb.net>
Message-ID: <346ddf0f760c46afbf449b57d983a533@imshyb02.MITRE.ORG>
Date: Mon, 14 Nov 2016 13:38:49 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request: Jenkins remote code execution vulnerability

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> An unauthenticated remote code execution vulnerability was discovered in the
> Jenkins continuous integration and continuous delivery automation server.
> A serialized Java object transferred to the Jenkins CLI can make Jenkins
> connect to an attacker-controlled LDAP server, which in turn can send a
> serialized payload leading to code execution

> SECURITY-360
> https://www.deepsec.net/speaker.html#PSLOT250
> https://groups.google.com/d/msg/jenkinsci-advisories/-fc-w9tNEJE/GRvEzWoJBgAJ

Use CVE-2016-9299.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYKgMyAAoJEHb/MwWLVhi2+8oP/iLya15YFTRIbVFuxyzuANEG
vlfWPWWVW2mfhcdgOn93b8yEQRmQ84If3dKg4zseNVjAow7/i1nkuJi1OldEDOP8
/CKgbqDQtsULut+DG5T1zrJHFEUr5TADqhGZbE655WYUBrr9oy8yUew6FCYH15Ln
FD0ARaAPtJBoQBZnq0x78hvupF9ijHc4Sc3npCI9zeZyPDCwQ3pUJE3PYwCllRkQ
x5UuKjOBSwJQQcsDIxWuy+r1WjMxjkIoTKxCyqyxzsw/TsV9EVLsSRefNpJZK3G4
0vb8L1fggJSyPWRKfULQCK3HHmZwMpJH+75wWE8qoSxlF6O/3N0VNouSHyNrWphI
0vffAcCM+yLEzoMmCYkc/HAcLWqxHh1DWs2vadzmgXLCD5SsqhsS28cStNK6Hws3
AH4GOQqg+PCAplTuUNNqgccY9DGvt9u+p38yVF6TzrdKcp8njYPBrpAAhi84LV6A
0XI/9LhTpWBIbelxFGnX6SlIQwMqV6dHJGOdkP1842g5mZYI3nYktgBIpCW6NVsk
8aAUgKtYh6rx3eHQztPpKSt6Rg/C3UeGC3JWpZ5ezFgiGbaZ+bGf2/OMmWb/rHmC
PnPvLFfz+CroC86xweByLtEE5ZC9NBUmmvIuEM7cfRMEbqmnJYYdJqZghAs3nLD5
84K/xajQ/Jf83/QE1An1
=FuwO
-----END PGP SIGNATURE-----
