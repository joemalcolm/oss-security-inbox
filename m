X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2842" "Friday" "18" "November" "2016" "17:59:40" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<c71a10a149c442c08d120a2c9a02de95@imshyb02.MITRE.ORG>" "66" "[oss-security] Re: CVE Request: gstreamer plugins" nil nil nil "11" "2016111822:59:40" "[oss-security] Re: CVE Request: gstreamer plugins" (number mark "U       cve-assign@m Nov 18   66/2842  " thread-indent "\"[oss-security] Re: CVE Request: gstreamer plugins\"\n") "<20161118163119.GQ11402@suse.de>" ("<20161118163119.GQ11402@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1920 invoked by uid 550); 18 Nov 2016 22:59:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1902 invoked from network); 18 Nov 2016 22:59:53 -0000
From: <cve-assign@mitre.org>
To: <meissner@suse.de>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <20161118163119.GQ11402@suse.de>
Message-ID: <c71a10a149c442c08d120a2c9a02de95@imshyb02.MITRE.ORG>
Date: Fri, 18 Nov 2016 17:59:40 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE Request: gstreamer plugins

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Bufferoverflow in VMNC decoder in gstreamer plugins
> https://scarybeastsecurity.blogspot.de/2016/11/0day-poc-risky-design-decisions-in.html
> https://cgit.freedesktop.org/gstreamer/gst-plugins-bad/commit/gst/vmnc/vmncdec.c?id=4cb1bcf1422bbcd79c0f683edb7ee85e3f7a31fe
> https://bugzilla.gnome.org/show_bug.cgi?id=774533

>> The vmnc decoder in the gstreamer code base contains a fairly obvious
>> and simple width * height * depth integer overflow in the allocation
>> of the render buffer. From gst-plugins-bad1.0/gst/vmnc/vmncdec.c
>> 
>> vmnc_handle_wmvi_rectangle

Use CVE-2016-9445 for the integer overflow.


>> The render canvas, as allocated in the code snippet quoted way above,
>> is not black filled or otherwise initialized. The call to g_malloc()
>> is just a thin wrapper around malloc(), which does not initialize any
>> returned heap area. Therefore, there's an easy information leak in
>> thumbnailing a simple 1 frame vmnc movie that does not draw to the
>> allocated render canvas at all. This could be a problem for anyone
>> using gstreamer in a server environment to provide thumbnailing
>> services.

Use CVE-2016-9446 for the lack of initialization.


> Missing bounds check in NSF decoder in gstreamer plugins
> http://scarybeastsecurity.blogspot.de/2016/11/0day-exploit-compromising-linux-desktop.html

>> The vulnerability is in libgstnsf.so, an audio decoder present in the gstreamer-0.10 distribution.

>> 1: Lack of checking ROM size when mapping into 6502 memory and bank switching

>> an out of bounds read

>> [or] read and write control over the host emulator heap [when combined with]
>> 2: Ability to load or bank switch ROM to writable memory locations

Use CVE-2016-9447 for the entire libgstnsf.so report. The "2" issue is
not independently relevant.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYL4d2AAoJEHb/MwWLVhi2MSsP/0H0am8yTwfPZ5wbztUSwgjZ
vyCTMEZaqx1s4sOKn5JJt5XNb4YEjVNCU7W5yrSGsdeO4kxxIerCvPTVQd6Y252Q
GLD9v6EPFT7CxK7fTTLjzBs6y30iEdbsZyPzHAqWqLma2epM4k9ubrMRuipUnPEW
TlEh7Qo0NigqWJSYdtBOLpBCAWfbDjxLVz8qbPs1C5aQ0tqJ/ZG8ArzVs3X1lVZg
BqdXGNcLk7kaJRRGXDDBL8uoFViR+QXidfJIJMHALc7sPu1TJ9mSPuxIQZ0OEODj
5Vygr5i1QA8RkWq67oI8JXVxPHDeBJVfC/p9p6Edg1bB7GH4kQDwwsneXA1kl0pu
f350Ukjkihqg22S+mMSVwKljlthX5bCjLs1kIwzO956KMGdxUb28PeRJQrrkkxmV
4aNYm0+VYM3Z6OVQOL5KWoftg+d/ivdIlQUrZbbnXrHYgH7nZQZABOx+K16rABui
fBr+3FSCs0l21NndFfWLAijCtaNO/AAzuXlVandCnI6tsY1Zlgt+YvqIr242aoQx
ogmK8/Tmtv3eO4YN7LoMTm7QHTP8C+23EA07bblDelaodk1UNY8dPMDoRcBnh3Pp
PwD55mZnyR/wpdclfc+iQWvOiMWhSbvuifxrpQF6BmjgExeQQX0dPsfloLXSLgy9
C4I8UNpl/tvSEY8uszPu
=fjKF
-----END PGP SIGNATURE-----
