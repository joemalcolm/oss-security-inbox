X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1806" "Friday" "19" "February" "2016" "10:49:45" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160219154945.8C75F6C05D3@smtpvmsrv1.mitre.org>" "48" "[oss-security] Re: CVE request: didiwiki path traversal vulnerability" nil nil nil "2" "2016021915:49:45" "[oss-security] Re: CVE request: didiwiki path traversal vulnerability" (number mark "U       cve-assign@m Feb 19   48/1806  " thread-indent "\"[oss-security] Re: CVE request: didiwiki path traversal vulnerability\"\n") "<CADk+ZPMDvowM_5AtCL0j3wQ+Ote6HCJVbWoLJRsG_SKbpSHHmg@mail.gmail.com>" ("<CADk+ZPMDvowM_5AtCL0j3wQ+Ote6HCJVbWoLJRsG_SKbpSHHmg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3525 invoked by uid 550); 19 Feb 2016 15:49:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3503 invoked from network); 19 Feb 2016 15:49:57 -0000
From: cve-assign@mitre.org
To: mouzannar@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, yarolig@gmail.com, security@debian.org
In-Reply-To: <CADk+ZPMDvowM_5AtCL0j3wQ+Ote6HCJVbWoLJRsG_SKbpSHHmg@mail.gmail.com>
Message-Id: <20160219154945.8C75F6C05D3@smtpvmsrv1.mitre.org>
Date: Fri, 19 Feb 2016 10:49:45 -0500 (EST)
Subject: [oss-security] Re: CVE request: didiwiki path traversal vulnerability

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://github.com/OpenedHand/didiwiki/pull/1/files
> curl http://localhost:8000/api/page/get?page=/etc/passwd

We aren't sure about the need for CVE IDs for this product because it
doesn't seem to advertise any security properties, e.g.,

  https://github.com/OpenedHand/didiwiki/blob/master/README
  "Its probably not very secure at all."

We can assign a CVE ID if there is going to be a DSA.

One concern is that the design may not be intended for environments
with untrusted clients, and many other issues may be found. Also, we
aren't sure about the patch:

+   if (!isalnum(page_name[0]))
+        return FALSE;
+   
+    if (strstr(page_name, ".."))
+         return FALSE;

e.g., what about C:\file.txt if it's possible to build this on Windows.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWxzknAAoJEL54rhJi8gl57ogQAJA6Xt9qMW2rW+xJRgPptQSu
dImNhpj3wK1MccZge209MPhXQfRnbY7jvm0UjcFLBcbgmp6mXOnqgM0PHte58FYX
80VO1zj22aH5EyG8e1c/S18nKl7yRFhU56xXSYsmSBWU/1azhuTNX6hKhu1/kr0U
PSfkIgXaFhm7j1rj824/dBtTMVXa/nA4c/wDKTjkGkWld1l4V/7ZraaUiu28OZat
s/oiZcgG2cDHKhsh+fJ8tVin6wQE7+ydTJeVUQLrJqemD1Wnghthin5LDqnK77tP
Cq3R15bQjunn7dHz56BIE68aFhQoAjunv1GlHS5im5W3u3dRi4r9aRDQNiNO7WZL
NV0vflWiMmyNqNExOk9y3VOuTGBQ/BpbkW/YAMwyvzjRoMesuAE2fv6QdHXEs0j+
q7B4NiWmAcUPstyZpBoqq7iZm5c7OBaWmujs5k1jxOuRzsGfjY4pKUpc+4R1ydKm
+brG4jZa4rdBZbE9OB1fURVkgH4GqgOSGVdiPys/GbPk02YvUHQn28qg22b6aS+4
u8Xx5O2cTyzLyQIzVmqUUAS6CSmFFM5KiTZTTzW2W1tCzXwjnx3cQTPPH0IlSaR0
pPctHFMCXX2ghOikyNA4mrZuxUDCGYQHILD2QBOsEgBz8mr+eadz9DXh6zpaffp1
NRFKU2HYn0DCATgFJCdv
=GYQp
-----END PGP SIGNATURE-----
