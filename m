X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1421" "Saturday" "4" "February" "2017" "21:38:59" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<6c82dd361d40474faa84e6597375cbaf@imshyb01.MITRE.ORG>" "39" "[oss-security] Re: CVE request for two input validation flaws in gtk-vnc" nil nil nil "2" "2017020502:38:59" "[oss-security] Re: CVE request for two input validation flaws in gtk-vnc" (number mark "U       cve-assign@m Feb  4   39/1421  " thread-indent "\"[oss-security] Re: CVE request for two input validation flaws in gtk-vnc\"\n") "<1486115842.8276.10.camel@redhat.com>" ("<1486115842.8276.10.camel@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3281 invoked by uid 550); 5 Feb 2017 02:39:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3260 invoked from network); 5 Feb 2017 02:39:11 -0000
From: <cve-assign@mitre.org>
To: <amaris@redhat.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <1486115842.8276.10.camel@redhat.com>
Message-ID: <6c82dd361d40474faa84e6597375cbaf@imshyb01.MITRE.ORG>
Date: Sat, 4 Feb 2017 21:38:59 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request for two input validation flaws in gtk-vnc

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> [] https://bugzilla.gnome.org/show_bug.cgi?id=778048
> the code does not properly check boundaries of subrectangle-containing tiles

Use CVE-2017-5884.

The scope of this CVE is all of
https://bugzilla.gnome.org/show_bug.cgi?id=778048#c1


> [] https://bugzilla.gnome.org/show_bug.cgi?id=778050
> Integer overflow when processing SetColorMapEntries

Use CVE-2017-5885.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYlo4WAAoJEHb/MwWLVhi236UP/28XMVC4oh6u7RLKKbbTAXyY
v3JO5PV9ACYeO355oPgx90FMd1FlQW/SID7XrLzqQDVhJxJodw6dZkFOttaPxFlk
QmtkNbTO11QUttKoCu8Ros4SHmxuY2soZ4NmK4Wg8AdYsCKl6ROSKMXM7lNFbYf0
h+KMBGkq/Q/RegdhQnns75Xc0gZWSRQHzh3gStrt/PzpFmZtlQTbgHgQjfKP7qnZ
TJzb5G0TowyzCRg9ZbYs8qJZdciu90NZaBSxxrwcZbpKbFkEHuvGZgc1FIhRjL8P
c5iwaOOWpdHhmsdoamyCQPVAvP+gO4Sb/pjcATkETSVJaZWfS/Z9PO7T88Mf1CKS
ghuq/yb3pSjGOrFTkUOodWoO/BoMPM6mnOepIptQ/WLwibn6OKPEcryidCKd5G5D
Oec2bvIe2bnfBK6faGk3DdK/vn5SCYZjKDPm6Es6sQ01tNlMKgGbb6m/0tR6hBV0
CxJ8wmNyNtHRk2B5oIIKFlXKZ0vEpNBVa2H3TKgjI9Otneywe/dZjPMq9vZ93wO+
VoXbquOJSZhn7sa/aJ4OXMB7ucLzCKXOqu3lj2JDPlgKLVZjyPQQfg3+pNMtZToj
jeCz1SSaIbq0NOqxvya0LU/uXbKOZKtGqUFkCfXR6pN6RE2uqQTteMWUB5EqDud7
GYrbp8GqnK5Lw0pvz5v4
=kVNv
-----END PGP SIGNATURE-----
