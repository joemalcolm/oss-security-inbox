X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2521" "Wednesday" "1" "February" "2017" "11:56:16" "+0100" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20170201115616.08660970@pc1>" "80" "[oss-security] Multiple memory access issues in gstreamer" nil nil nil "2" "2017020110:56:16" "[oss-security] Multiple memory access issues in gstreamer" (number mark "U       hanno@hboeck Feb  1   80/2521  " thread-indent "\"[oss-security] Multiple memory access issues in gstreamer\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17696 invoked by uid 550); 1 Feb 2017 10:56:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17666 invoked from network); 1 Feb 2017 10:56:30 -0000
Date: Wed, 1 Feb 2017 11:56:16 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20170201115616.08660970@pc1>
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] Multiple memory access issues in gstreamer

Hi,

https://gstreamer.freedesktop.org/releases/1.10/#1.10.3

gstreamer 1.10.3 got released, from the release notes:
"Various fixes for crashes, assertions, deadlocks and memory leaks on
fuzzed input files and in other situations"

Here they are (at least the ones I reported):

https://bugzilla.gnome.org/show_bug.cgi?id=3D775450
gst-plugins-good/aacparse: invalid memory read in
gst_aac_parse_sink_setcaps

https://bugzilla.gnome.org/show_bug.cgi?id=3D775451
gst-plugins-good/qtdemux: out of bounds read in qtdemux_tag_add_str_full

https://bugzilla.gnome.org/show_bug.cgi?id=3D777262
gst-plugins-base/riff-media: floating point exception in
gst_riff_create_audio_caps

https://bugzilla.gnome.org/show_bug.cgi?id=3D777263
gstreamer core/datetime: out of bounds read in
gst_date_time_new_from_iso8601_string()

https://bugzilla.gnome.org/show_bug.cgi?id=3D777265
gst-plugins-base/riff: stack overflow in gst_riff_create_audio_caps

https://bugzilla.gnome.org/show_bug.cgi?id=3D777469
gst-plugins-good/qtdemux: out of bounds heap read in
qtdemux_parse_samples


https://bugzilla.gnome.org/show_bug.cgi?id=3D777500
gst-plugins-good/avidemux: gst_avi_demux_parse_ncdt heap out of bounds
read

https://bugzilla.gnome.org/show_bug.cgi?id=3D777502
gst-plugins-base/samiparse: heap oob in html_context_handle_element

https://bugzilla.gnome.org/show_bug.cgi?id=3D777503
gst-plugins-bad/mxfdemux: use after free in gst_mini_object_unref /
gst_tag_list_unref / gst_mxf_demux_update_essence_tracks

https://bugzilla.gnome.org/show_bug.cgi?id=3D777525
gst-plugins-base: floating point exception in gst_riff_create_audio_caps
(different than #777262)

https://bugzilla.gnome.org/show_bug.cgi?id=3D777532
gst-plugins-good/avidemux: invalid memory read in
gst_avi_demux_parse_ncdt

https://bugzilla.gnome.org/show_bug.cgi?id=3D777937
gst-plugins-ugly/asfdemux: invalid memory read in
gst_asf_demux_process_ext_stream_props()



And more that didn't make it into 1.10.3:

https://bugzilla.gnome.org/show_bug.cgi?id=3D777955
gst-plugins-ugly/asfdemux: out of bounds read in
gst_asf_demux_process_ext_content_desc

https://bugzilla.gnome.org/show_bug.cgi?id=3D777957
gst-plugins-bad/mpegdemux: Invalid memory read in gst_ps_demux_parse_psm


(example files are always attached or linked in the bug reports)

I also reported multiple other issues like memory leaks or hangs which
I consider have no security relevance.


--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
