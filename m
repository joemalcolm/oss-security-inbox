X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1369" "Saturday" "15" "October" "2016" "12:50:46" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161015165046.C3C9842E192@smtpvbsrv1.mitre.org>" "34" "[oss-security] Re: Update on MatrixSSL miscalculation (incomplete fix for CVE-2016-6887)" "^Cc:" nil nil "10" "2016101516:50:46" "[oss-security] Re: Update on MatrixSSL miscalculation (incomplete fix for CVE-2016-6887)" (number mark "        cve-assign@m Oct 15   34/1369  " thread-indent "\"[oss-security] Re: Update on MatrixSSL miscalculation (incomplete fix for CVE-2016-6887)\"\n") "<20161015173558.657276ad@pc1>" ("<20161015173558.657276ad@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13713 invoked by uid 550); 15 Oct 2016 17:00:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13694 invoked from network); 15 Oct 2016 17:00:53 -0000
In-Reply-To: <20161015173558.657276ad@pc1>
Message-Id: <20161015165046.C3C9842E192@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Sat, 15 Oct 2016 12:50:46 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Update on MatrixSSL miscalculation (incomplete fix for CVE-2016-6887)
To: hanno@hboeck.de

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://blog.fuzzing-project.org/54-Update-on-MatrixSSL-miscalculation-incomplete-fix-for-CVE-2016-6887.html
> 
> This wasn't
> really fixed, but only worked around by restricting the allowed size of
> the modulus. Not surprisingly it is still possible to find inputs that
> cause miscalculations

Use CVE-2016-8671.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYAltIAAoJEHb/MwWLVhi2zbEP/2dfjbYAydVRa5AoGGA7TPmb
xILs2/DjLQhrk9/jLLwQ64Is/c9JrGHTSt7repvMcitLMAhDgVrlH+6LFa7z7inx
WPx1eqz4hI84Rs8/56MlGSjXTjLEiTQm5curt42r8VnVy66P+kAYRYmgSn6viHti
dnWeyY1nHM0Bj7xbh2rDS+WGiMdyKbD58JE1M9c/x40ypA7PHeyiOaEQiI0kkV/g
GBV74nCAljX+4pznRutKPQTJr8gSo7KzBKCRMhZJUIMcIEWITHxZ4bhDSOvGE5ZV
jtKDs4ALgYOh04IcYXam+TsnpO0TWtUE6IcbmvnBsnzKOt92sypRNQg/7ieMzvuk
qqFPKi5yjR2jDkCi0AXpfciWEOFeJECbxoKS5Q8TIuToC/DbMndN57BuaSaL/g+6
sffL7qTjUdYtOjOLjGt/pAUjWCYu6mkoxiT+naD/oBU1UVQsBgBuYCQ4z99Joa7D
da22R9nUvL+khiic6nvQTCVMP2CqJji4TAoe6zbBTX7HxYGW53e7HvH0Lk7UAIF6
nHgbB+3uf6PetCTA7lPkc/UHdFhYoV8VtpLQA4KOu2fqkGByhb8HifJvYS6YMZCt
NH9CYar381eIYh5/w7+rzFLF0jTwxjKrbMrkcHPq3jvoBfRbHk+Fatbt1w6vv2Ww
0RWeF3ma0TjarX46TTMB
=PwKE
-----END PGP SIGNATURE-----
