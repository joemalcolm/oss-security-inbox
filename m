X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1245" "Friday" "30" "December" "2016" "13:00:23" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<d636dcedeede4aaba19662fe4d148b08@imshyb02.MITRE.ORG>" "33" "[oss-security] Re: libpng NULL pointer dereference bugfix" nil nil nil "12" "2016123018:00:23" "[oss-security] Re: libpng NULL pointer dereference bugfix" (number mark "U       cve-assign@m Dec 30   33/1245  " thread-indent "\"[oss-security] Re: libpng NULL pointer dereference bugfix\"\n") "<CA+PdXcv5kDWiMpDUWs7-cVN5eBb-L91myxUhSNJ8AVYq0jUbRA@mail.gmail.com>" ("<CA+PdXcv5kDWiMpDUWs7-cVN5eBb-L91myxUhSNJ8AVYq0jUbRA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10199 invoked by uid 550); 30 Dec 2016 18:00:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10171 invoked from network); 30 Dec 2016 18:00:35 -0000
From: <cve-assign@mitre.org>
To: <glennrp@gmail.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <CA+PdXcv5kDWiMpDUWs7-cVN5eBb-L91myxUhSNJ8AVYq0jUbRA@mail.gmail.com>
Message-ID: <d636dcedeede4aaba19662fe4d148b08@imshyb02.MITRE.ORG>
Date: Fri, 30 Dec 2016 13:00:23 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: libpng NULL pointer dereference bugfix

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> NULL pointer dereference bug in png_set_text_2()
> 
> an application
> has to load a text chunk into the png structure, then delete all text, then
> add another text chunk

Use CVE-2016-10087.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYZqBTAAoJEHb/MwWLVhi2wCQP/0MuFVxaThebajC21ogCNkZ+
W1xIxSwriMBZPbTJmRVj10wdi07UhFH4ut5zAlFmL7nePhuTfZuH9C0BfjA124o9
IFWlLaABz/yzPGFrWcapbdTkCFiE46xThxvhLoc9ESXtmlesN6tf+2nz7yBre2kS
ySc20NoQNRCmTikdad9jerh+A9YjNmEZnS9g6ydxAAzuid1VHRZa8JGaq5ShgmBb
oOmpEcxpsgqZxoSb62PR6NoKXgIkDTCrkcYvDXo3XNwHZ2d2/4eMK+FTvrClB84O
7x4nFXgWnGlfL6PWOJVzXn51Guij2GHrUOKaC6X8OMR+8crF0jZncOq+yJr0HcNo
ZEU0TQrIBj7CIOeflynhJS+ABbbABTLyODZJiBXxI5mSv/pWjTttcJ5ClIgesQAP
/C151FeN05hc1bXQBV8VlXKpN+Ge7MMGZKnbbLO6ld1jEaIjKWfWIL4npceeAkJS
MhHwg3VwwfcDZGsa6II6iy6Sny5ddEdsQSI0MKned3AI8U6Q7rZ51/NJvnA4t1A0
7PQDwWd/kiftZD0JDPQI9xFtQXRR9QweHWsS0lNxApBITocMKqQQ0vv1Fo6vbJMs
aHAkSpBo4IvyPkW5JBmA1WXXuNs8HRGZUDVLjlcErgr5+KpTbs3gt1J2/28kBL/+
6UOSSsIexpBKzfoJj3tu
=H34M
-----END PGP SIGNATURE-----
