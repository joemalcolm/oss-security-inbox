Received: (qmail 23829 invoked by uid 550); 1 May 2026 00:00:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 21983 invoked from network); 30 Apr 2026 23:59:49 -0000
Date: Fri, 1 May 2026 01:59:48 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20260430235948.GA31035@openwall.com>
References: <20260316025816.GA14368@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260316025816.GA14368@openwall.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] 10+ CVEs in GStreamer

Hi,

I brought a bunch of GStreamer CVEs in here in March.  In April, there
was a new release with more CVEs announced/fixed.  I'd really rather not
be the one to be taking care of this - I guess we have subscribers who
are involved with the project or its packaging?  Anyone, please?

The new release is "1.28.2 stable bug fix release" with website news
item dated "2026-04-07 23:00" and said to include "Various security
fixes" and a lot more (with specifics).  The security fixes are for:

> GStreamer-SA-2026-0023 	Denial of service in SRT/WebVTT parser 	2026-04-07 23:59
> 
> GStreamer-SA-2026-0022
> CVE-2026-pending 	Heap buffer overflow in Matroska demuxer 	2026-04-07 23:59
> 
> GStreamer-SA-2026-0021
> CVE-2026-pending 	Integer overflow in WAV parser cue handling 	2026-04-07 23:59
> 
> GStreamer-SA-2026-0020 	Assertion failures in FLV demuxer on corrupted streams 	2026-04-07 23:59
> 
> GStreamer-SA-2026-0019 	NULL-pointer dereferences in mDVDsub subtitle parser 	2026-04-07 23:59
> 
> GStreamer-SA-2026-0018
> CVE-2026-pending 	MOV/MP4 demuxer audio channel parsing vulnerabilities 	2026-04-07 23:59
> 
> GStreamer-SA-2026-0017 	Integer overflow in H.266/VVC parser leading to stack overflow 	2026-04-07 23:59
> 
> GStreamer-SA-2026-0016
> CVE-2026-5056
> ZDI-CAN-29392 	Integer overflows and out-of-bounds access in MOV/MP4 demuxer 	2026-04-07 23:59
> 
> GStreamer-SA-2026-0015
> CVE-2026-pending 	Integer overflows in JPEG 2000 decimator 	2026-04-07 23:59
> 
> GStreamer-SA-2026-0014 	Integer overflow in AV1 LEB128 parser 	2026-04-07 23:59
> 
> GStreamer-SA-2026-0013 	H.264 video parser NULL pointer dereference when freeing SPS/MVC data 	2026-04-07 23:59

as listed at https://gstreamer.freedesktop.org/security/ along with
links to "Details" for each (which I have no time to extract and process
into this posting).

On Mon, Mar 16, 2026 at 03:58:16AM +0100, Solar Designer wrote:
> The news story at:
> 
> https://www.opennet.me/opennews/art.shtml?num=64964
> 
> originally in Russian explains GStreamer usage as follows, translated to
> English here:
> 
> > The GStreamer library is used to parse multimedia files in Nautilus
> > (GNOME Files), GNOME Videos, and Rhythmbox, as well as in the
> > localsearch search engine (previously known as tracker-miners) developed
> > by the GNOME project. This engine is installed in many distributions as
> > a dependency of the tracker-extract package, which GNOME uses to
> > automatically parse metadata in new files. Among other things, this
> > service indexes all files in the user's home directory without any user
> > interaction. Therefore, to perform an attack, simply create a specially
> > crafted multimedia file in the user's home directory, and the
> > vulnerability will be exploited during its automatic indexing.
> > 
> > In most GNOME distributions, localsearch components (tracker-miners) are
> > enabled by default and loaded as a hard dependency of the Nautilus file
> > manager (GNOME Files). Starting with GNOME 46, the localsearch process
> > runs in sandbox isolation. To disable metadata extraction, you can
> > delete the rules files from the /usr/share/localsearch3/extract-rules/
> > or /usr/share/tracker3-miners/extract-rules/ directory.

I don't know how good or not the mentioned "sandbox isolation" is, I'd
welcome comments on the risks involved and potential further hardening.

Alexander
