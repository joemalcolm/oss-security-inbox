Received: (qmail 30209 invoked by uid 550); 16 Mar 2026 03:00:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13763 invoked from network); 16 Mar 2026 02:58:24 -0000
Date: Mon, 16 Mar 2026 03:58:16 +0100
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20260316025816.GA14368@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.4.2.3i
Subject: [oss-security] 10+ CVEs in GStreamer

Hi,

As described on the homepage:

https://gstreamer.freedesktop.org

> GStreamer is a library for constructing graphs of media-handling
> components. The applications it supports range from simple Ogg/Vorbis
> playback, audio/video streaming to complex audio (mixing) and video
> (non-linear editing) processing.

> News - GStreamer 1.26.11 old-stable bug fix release   2026-03-10 17:00
> 
> The GStreamer team is pleased to announce another bug fix release in
> the now old-stable 1.26 release series of your favourite cross-platform
> multimedia framework!
> 
> Please note that the 1.26 old-stable series is no longer actively
> maintained and has been superseded by the GStreamer 1.28 stable series
> now.
> 
> This release only contains bugfixes, and it should be safe to update
> from 1.26.x.
> 
> Highlighted bugfixes:
> 
>     Security fixes for the JPEG, H.265 and H.266 video parsers and the
> DVB subtitle overlay
>     Security fixes for the ASF, RealMedia and QuickTime/MP4 demuxers and
> RIFF library
>     Security fixes for the WAV audio parser and the RTP QDM2 depayloader

> GStreamer 1.28.1 stable bug fix release   2026-02-26 02:00
> 
> The GStreamer team is pleased to announce the first bug fix release in
> the new stable 1.28 release series of your favourite cross-platform
> multimedia framework!
> 
> This release only contains bug fixes as well as a number of security
> fixes. It should be safe to update from 1.28.0, and we recommend you do
> so at your earliest convenience.
> 
> Highlighted bugfixes:
> 
>     Various security fixes and playback fixes

The news story at:

https://www.opennet.me/opennews/art.shtml?num=64964

originally in Russian explains GStreamer usage as follows, translated to
English here:

> The GStreamer library is used to parse multimedia files in Nautilus
> (GNOME Files), GNOME Videos, and Rhythmbox, as well as in the
> localsearch search engine (previously known as tracker-miners) developed
> by the GNOME project. This engine is installed in many distributions as
> a dependency of the tracker-extract package, which GNOME uses to
> automatically parse metadata in new files. Among other things, this
> service indexes all files in the user's home directory without any user
> interaction. Therefore, to perform an attack, simply create a specially
> crafted multimedia file in the user's home directory, and the
> vulnerability will be exploited during its automatic indexing.
> 
> In most GNOME distributions, localsearch components (tracker-miners) are
> enabled by default and loaded as a hard dependency of the Nautilus file
> manager (GNOME Files). Starting with GNOME 46, the localsearch process
> runs in sandbox isolation. To disable metadata extraction, you can
> delete the rules files from the /usr/share/localsearch3/extract-rules/
> or /usr/share/tracker3-miners/extract-rules/ directory.

There are 10 GStreamer CVEs recently listed at:

https://www.zerodayinitiative.com/advisories/published/

and even more at:

https://gstreamer.freedesktop.org/security/

so I'll quote from the latter page:

> GStreamer-SA-2026-0012 	H.265 video parser potential denial-of-service 	2026-02-25 23:59
> 
> GStreamer-SA-2026-0011
> CVE-2026-3084
> ZDI-CAN-28910 	Out-of-bounds write in H.266 video parser when parsing picture partitions 	2026-02-25 23:59
> 
> GStreamer-SA-2026-0010
> CVE-2026-3081
> ZDI-CAN-28839 	Stack buffer overflow in H.266 video parser when parsing pic_timing SEIs 	2026-02-25 23:59
> 
> GStreamer-SA-2026-0009
> CVE-2026-3086
> ZDI-CAN-28911 	Out-of-bounds buffer write in H.266 video parser when parsing Adaptation Parameter Set 	2026-02-25 23:59
> 
> GStreamer-SA-2026-0008
> CVE-2026-3083, CVE-2026-3085
> ZDI-CAN-28851, ZDI-CAN-28850 	Multiple vulnerabilities in RTP QDM2 depayloader element 	2026-02-25 23:59
> 
> GStreamer-SA-2026-0007
> CVE-2026-2923
> ZDI-CAN-28838 	Out-of-bounds read and write in DVB Subtitle Decoder 	2026-02-25 23:59
> 
> GStreamer-SA-2026-0006
> CVE-2026-2920
> ZDI-CAN-28843 	Out-of-bounds write in ASF Demuxer 	2026-02-25 23:59
> 
> GStreamer-SA-2026-0005
> CVE-2026-2922
> ZDI-CAN-28845 	Out-of-bounds write in RealMedia Demuxer 	2026-02-25 23:59
> 
> GStreamer-SA-2026-0004
> CVE-2026-2921
> ZDI-CAN-28854 	Integer overflow in RIFF parser 	2026-02-25 23:59
> 
> GStreamer-SA-2026-0003
> CVE-2026-3082
> ZDI-CAN-28840 	Heap-based Buffer Overflow on Huffman tables reading in JPEG parser 	2026-02-25 23:59
> 
> GStreamer-SA-2026-0002 	Out-of-bounds read in MP4 demuxer 	2026-02-25 23:59
> 
> GStreamer-SA-2026-0001
> CVE-2026-1940 	Out-of-bounds read in WAV parser 	2026-02-25 23:59

Alexander
