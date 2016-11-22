X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1409" "Tuesday" "22" "November" "2016" "16:59:43" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<33388c8f297f402d8aecd5805573e409@imshyb02.MITRE.ORG>" "35" "[oss-security] Re: CVE Request: Linux: net/sctp: slab-out-of-bounds in sctp_sf_ootb" nil nil nil "11" "2016112221:59:43" "[oss-security] Re: CVE Request: Linux: net/sctp: slab-out-of-bounds in sctp_sf_ootb" (number mark "U       cve-assign@m Nov 22   35/1409  " thread-indent "\"[oss-security] Re: CVE Request: Linux: net/sctp: slab-out-of-bounds in sctp_sf_ootb\"\n") "<CAAeHK+znVzS6vZ00rm8bBzu6q=NgDgB4b8G8Eggyoa3xwrs1FQ@mail.gmail.com>" ("<CAAeHK+znVzS6vZ00rm8bBzu6q=NgDgB4b8G8Eggyoa3xwrs1FQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1998 invoked by uid 550); 22 Nov 2016 22:00:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1974 invoked from network); 22 Nov 2016 22:00:10 -0000
From: <cve-assign@mitre.org>
To: <andreyknvl@google.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>,
	<dvyukov@google.com>, <kcc@google.com>
In-Reply-To: <CAAeHK+znVzS6vZ00rm8bBzu6q=NgDgB4b8G8Eggyoa3xwrs1FQ@mail.gmail.com>
Message-ID: <33388c8f297f402d8aecd5805573e409@imshyb02.MITRE.ORG>
Date: Tue, 22 Nov 2016 16:59:43 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE Request: Linux: net/sctp: slab-out-of-bounds in sctp_sf_ootb

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> There's a bug in the Linux kernel sctp implementation which allows a
> remote attacker to trigger a slab-out-of-bounds access with an offset
> up to 64K bytes.
> 
> https://groups.google.com/forum/#!topic/syzkaller/pAUcHsUJbjk
> https://github.com/torvalds/linux/commit/bf911e985d6bbaa328c20c3e05f4eb03de11fdd6
> net/sctp/sm_statefuns.c

Use CVE-2016-9555.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYNL8aAAoJEHb/MwWLVhi2cu8P/R47S5O4YTuIR+YcW8hiCkto
OGnhhbOWHa7Ts1nl7cXwRhhq2/D8uzjX/5LZsl+ziqrZcWNr9MM0KAXrL79aS79D
mGr559SbkLiI0Z66mQy6dZyDx8H/ZuobxMbMc0FJ4vuJUAleiJPpyP+Gf8tFjrkX
597yeMGSKX09+xDeIHIrVUoKvHRP4XhB3/ix4HJ3BiKeQCx3GMHxjJ/mCtVTYS01
KTczF+cof/QJnwq5NdXFPA6zkNNRql9+KJPcJvNBNYUKURGTdDhASBEsqTrOJqrx
cu4+plaZh/+9mynU3dEUH5swyFVW80yuHm8aLOjMQTk6N7PQmii8qcCxs+AXXF3v
YgJ+EQR2Z7jA7yZtbSiiCnxxX730bHHPTKQhdRcfU5WRtOakdqFw4o/gwPT87+fM
gTN4aGTRL7bD2/hlFrGlbF4G3y/sO95iD090TF5R7nu8PLOaiFgMWfhGqh4FX7Zr
K28gExzc2LxdMwf2K2yEiGTehouqibWpF3Kos9OeagIqdVsfMUl4Jh1hhn3wKSwn
kPi9RIdv0YZlXZZEcPH0UGg9HhpySE+5sXODal/KxmYbYskofSjmeCJRvl4/LbnY
ymv3A7+mJ6vCuBQMOtLeQU7UuONKxh90qdNXJvbjyynO1rbOJUPlfqGQ9Dj5xaTT
0ItazodRS8D9fpKt0PAh
=u07t
-----END PGP SIGNATURE-----
