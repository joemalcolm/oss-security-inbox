X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1849" "Thursday" "1" "December" "2016" "11:24:59" "+0100" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20161201112459.78cbf764@pc1>" "61" "[oss-security] gstreamer multiple issues" nil nil nil "12" "2016120110:24:59" "[oss-security] gstreamer multiple issues" (number mark "U       hanno@hboeck Dec  1   61/1849  " thread-indent "\"[oss-security] gstreamer multiple issues\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17989 invoked by uid 550); 1 Dec 2016 10:25:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17957 invoked from network); 1 Dec 2016 10:25:13 -0000
Date: Thu, 1 Dec 2016 11:24:59 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com, cve-assign@mitre.org
Message-ID: <20161201112459.78cbf764@pc1>
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] gstreamer multiple issues

Hi,

After the blogposts from Chris Evans about gstreamer insecurities I had
a look.

https://bugzilla.gnome.org/show_bug.cgi?id=3D774859
Invalid memory read in flx_decode_chunks (gst-plugins-good)
The fix is a larger rewrite of the affected code paths and probably
fixed a bunch of other issues on the way. It also fixes the second flic
bug reported by Chris Evans described here:
https://scarybeastsecurity.blogspot.dk/2016/11/0day-poc-incorrect-fix-for-g=
streamer.html

https://bugzilla.gnome.org/show_bug.cgi?id=3D774896
h264: one byte heap off by one read in gst_h264_parse_set_caps
(gst-plugins-bad)

https://bugzilla.gnome.org/show_bug.cgi?id=3D774897
Invalid memory read in glib caused by one invalid unref call in the
flxdec decoder. (gst-plugins-good)

https://bugzilla.gnome.org/show_bug.cgi?id=3D774902
4 byte heap out of bounds read in windows_icon_typefind
(gst-plugins-base)

https://bugzilla.gnome.org/show_bug.cgi?id=3D775048
2 byte heap out of bounds read in gst_mpegts_section_new
(gst-plugins-bad).

https://bugzilla.gnome.org/show_bug.cgi?id=3D775120
null pointer deref (segfault) in mpegts decoder / _parse_pat
(gst-plugins-bad)

A note about the memory access bugs: glib's slice allocator can hide
them, so finding them with asan sometimes only works if one sets
G_SLICE=3Dalways-malloc


Stuff that's probably not security relevant:

Asserts / traps only:

https://bugzilla.gnome.org/show_bug.cgi?id=3D775130
h264 decoder assert (gst-plugins-bad)

https://bugzilla.gnome.org/show_bug.cgi?id=3D775219
avidemux trap on invalid utf-8



The gstreamer devs were very quick in fixing all issues. The release
1.10.2 should contain all the fixes.
https://gstreamer.freedesktop.org/releases/gstreamer/1.10.2.html


--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
