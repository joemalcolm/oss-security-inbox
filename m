X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1665" "Wednesday" "21" "December" "2016" "02:34:29" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<a5198c929fcc47e99d32935f472d4c15@imshyb02.MITRE.ORG>" "39" "[oss-security] Re: CVE request: ikiwiki: authorization bypass when reverting changes" nil nil nil "12" "2016122107:34:29" "[oss-security] Re: CVE request: ikiwiki: authorization bypass when reverting changes" (number mark "U       cve-assign@m Dec 21   39/1665  " thread-indent "\"[oss-security] Re: CVE request: ikiwiki: authorization bypass when reverting changes\"\n") "<20161220214910.zdn7bixh2i5jjwjb@perpetual.pseudorandom.co.uk>" ("<20161220214910.zdn7bixh2i5jjwjb@perpetual.pseudorandom.co.uk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30474 invoked by uid 550); 21 Dec 2016 07:34:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30456 invoked from network); 21 Dec 2016 07:34:41 -0000
From: <cve-assign@mitre.org>
To: <smcv@debian.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <20161220214910.zdn7bixh2i5jjwjb@perpetual.pseudorandom.co.uk>
Message-ID: <a5198c929fcc47e99d32935f472d4c15@imshyb02.MITRE.ORG>
Date: Wed, 21 Dec 2016 02:34:29 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request: ikiwiki: authorization bypass when reverting changes

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> http://ikiwiki.info/bugs/rcs_revert_can_bypass_authorization_if_affected_files_were_renamed/
> http://source.ikiwiki.branchable.com/?p=source.git;a=commitdiff;h=9cada49ed6ad24556dbe9861ad5b0a9f526167f9
> 
> on sites with the git and recentchanges
> plugins and the CGI interface enabled, the revert links on the
> RecentChanges page could revert changes on a page the logged-in user
> cannot legitimately edit, if the change being reverted was made before
> the page was renamed from a location that the logged-in user *could*
> legitimately edit.

>> Tell `git revert` not to follow renames

Use CVE-2016-10026.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYWjArAAoJEHb/MwWLVhi2dHoQAKYuv3K3dSIYf6WfYkYNZKu3
DD2MvDMgpjGR+J6dwCPpjSBzrAqW8x9LaFViHCgMtOr61d7Wc53J6XqDkWephYPA
b3Baarf6Yz1K0gq+nML8wzb2wYJtO7DVXIxM0+rpbNIf67EPUM66ZOGPRtd3rNhG
sxqtGk2kNVtq2apkzwU4NoqzU2SvNwveaGyB25AqtQd+pBxTuciPzCR2IeXoYsed
4t2cGeJDzF/briG/IxwFQb4w6Zy5dsqXucT/c3U0y4RwflmjTde6GwEcENvyp/Dv
fgCBK1LnMP0pTWizNQNA12Xr8yirHFX0CrUGE+cEI60ZNrbQge/QForMTG2cJK5E
rcP+FaKqrHj1ybFdRtgM3V/As84SjohoUahmKMATI0rVtFEAPPBa8A2b31whfcyR
Ls2nq0VayB7/2ea2eSQQwXILDA+i5lKEqTW4S1IKIXFmszw1Sq1z6wHBBFZwK7rE
gMnL+mPIsi7g3Lhzi+TWKw3ClNl7Owk0KebtYJdqikXnBKvlHjcDCuX2DHHQZsrT
tk5LGOnVAajwySSNeXtTuCkE3BVGN7Q5pNIz8v/XdQwxjxohZVM2RX7B/smcauNW
6gH2Xo3bSNycUJGTOjFIYw+bcnJ4qP64huw1BK5cIDAfW5Cw42NRhL4EdpkRGu3q
PNKxWq1cMJz/knQ7PGUu
=YLyN
-----END PGP SIGNATURE-----
