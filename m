X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1424" "Tuesday" "26" "January" "2016" "02:00:48" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160126070048.A1A8F36E002@smtpvbsrv1.mitre.org>" "34" "[oss-security] Re: CVE Request: x86 Linux TLB flush bug" nil nil nil "1" "2016012607:00:48" "[oss-security] Re: CVE Request: x86 Linux TLB flush bug" (number mark "U       cve-assign@m Jan 26   34/1424  " thread-indent "\"[oss-security] Re: CVE Request: x86 Linux TLB flush bug\"\n") "<CALCETrV-MJzSXBJMAULepDBS46Q-JNVzMjngmoP9WuFnBhXrEA@mail.gmail.com>" ("<CALCETrV-MJzSXBJMAULepDBS46Q-JNVzMjngmoP9WuFnBhXrEA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24396 invoked by uid 550); 26 Jan 2016 07:01:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24375 invoked from network); 26 Jan 2016 07:01:00 -0000
From: cve-assign@mitre.org
To: luto@kernel.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CALCETrV-MJzSXBJMAULepDBS46Q-JNVzMjngmoP9WuFnBhXrEA@mail.gmail.com>
Message-Id: <20160126070048.A1A8F36E002@smtpvbsrv1.mitre.org>
Date: Tue, 26 Jan 2016 02:00:48 -0500 (EST)
Subject: [oss-security] Re: CVE Request: x86 Linux TLB flush bug

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

>> http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=71b3c126e61177eb693423f2e18a1914205b165e

> The upshot is that, in principle, when Linux invalidates a paging
> structure that is not in use locally, it could, in principle, race
> against another CPU that is switching to a process that uses the
> paging structure in question.

Use CVE-2016-2069.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWpxegAAoJEL54rhJi8gl5ytsP/j4gQyyXkeuWkAMZXoa4wRP3
OteVx9I9kzg/ZKifHDome0jnEbEViBKAAyTTN5a+59ul0TwCvMUyoxyUQOn23i3G
poWglkXd3z2OpODIwykJ1iTf01Jtq1yTEqzdFvyhygNLi8wOSBUOyrgnMafMG7Dm
GWklTpur/i83dSP4fIPNOkqZR/5F5J/pqyDCVooIekgjNHRVKpPRBBtOiHh1bujs
h7pH7i6m/AwgEfPS6rWCLmPmOcJILdgSPPhV6gvfucw+1KBsXF0B0jwMTuz8pfMf
xldKD7ghfjamR2oRZyvxw5jM1cGN7CZeiKPAC8Dlc4Q2krxr/6izp1GCop5Adhyt
TcfyPRbg9U/ugVmmbUVG/ewWtXIr3euIgzuG2UcIufCmCbtb9GsAjCmkT5wPUypS
E9Oz3tKthyxhdIjEMyjXS2R+3TQpxmFS+f7dQW+FoJzTPQa3HtwB5DeLVQ4n/tDE
tqqUsC+QT50oJUQg3oGpzN0LIhpuIFakNwar4k5V04Yze8Hxzw1boRPe0weMPMLv
3LK3zqjEoXSh25fa7UljmCv1oQ+F//A680I/nmZqBflCFZu1tlatUWbzeE7BqRLi
3u9qAh0a3N7ONwanXFeAL9iOcpT7ZUAQ03psF/VHn6my/4RFZvKQDCDeDCkFZEbm
NW6NJVpsBgkt7fHjmiPd
=Toxm
-----END PGP SIGNATURE-----
