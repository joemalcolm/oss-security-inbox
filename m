X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2198" "Thursday" "9" "April" "2015" "17:00:08" "+0200" "Yann Droneaud" "ydroneaud@opteya.com" "<1428591608.22575.194.camel@opteya.com>" "82" "Re: [oss-security] Re: CVE Request: libX11: buffer overflow in  MakeBigReq macro" nil nil nil "4" "2015040915:00:08" "[oss-security] Re: CVE Request: libX11: buffer overflow in MakeBigReq macro" (number mark "        ydroneaud@op Apr  9   82/2198  " thread-indent "\"Re: [oss-security] Re: CVE Request: libX11: buffer overflow in  MakeBigReq macro\"\n") "<55266634.3010405@canonical.com>" ("<20150409070930.2B22A1BE1C2@smtpvbsrv1.mitre.org>" "<55265E1D.4050404@redhat.com>" "<55266634.3010405@canonical.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1761 invoked by uid 550); 9 Apr 2015 15:03:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31982 invoked from network); 9 Apr 2015 15:00:30 -0000
Message-ID: <1428591608.22575.194.camel@opteya.com>
In-Reply-To: <55266634.3010405@canonical.com>
References: <20150409070930.2B22A1BE1C2@smtpvbsrv1.mitre.org>
	 <55265E1D.4050404@redhat.com> <55266634.3010405@canonical.com>
Organization: OPTEYA
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.12.11 (3.12.11-1.fc21) 
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 37.161.28.142
X-SA-Exim-Mail-From: ydroneaud@opteya.com
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on ou.quest-ce.net)
Cc: Florian Weimer <fweimer@redhat.com>, Marc Deslauriers
	 <marc.deslauriers@canonical.com>, cve-assign@mitre.org
Date: Thu, 09 Apr 2015 17:00:08 +0200
From: Yann Droneaud <ydroneaud@opteya.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE Request: libX11: buffer overflow in 
 MakeBigReq macro
To: oss-security@lists.openwall.com

Hi,

Le jeudi 09 avril 2015 à 07:44 -0400, Marc Deslauriers a écrit :
> On 2015-04-09 07:10 AM, Florian Weimer wrote:
> > On 04/09/2015 09:09 AM, cve-assign@mitre.org wrote:
> >>> The MakeBigReq macro in libX11 contained a 4-byte buffer overflow:
> >>
> >>> https://bugs.freedesktop.org/show_bug.cgi?id=56508
> >>
> >>> Fixed by the following commit in libX11 1.5.99.901:
> >>
> >>> http://cgit.freedesktop.org/xorg/lib/libX11/commit/?id=39547d600a13713e15429f49768e54c3173c828d
> >>
> >> (for the "#ifdef LONG64")
> >>> - memmove(((char *)req) + 8, ((char *)req) + 4, _BRlen << 2); \
> >>> + memmove(((char *)req) + 8, ((char *)req) + 4, (_BRlen - 1) << 2); \
> >>
> >> (for the "else")
> >>> - memmove(((char *)req) + 8, ((char *)req) + 4, _BRlen << 2); \
> >>> + memmove(((char *)req) + 8, ((char *)req) + 4, (_BRlen - 1) << 2); \
> >>
> >> Use CVE-2013-7439.
> > 
> > Does this assignment cover application code which has to be recompiled
> > because it included an expansion of broken macro?
> > 
> > (The question is hypothetical.  I could find copies of the header file,
> > but not actual users of the macro.)
> > 
> 
> Actually, libx11 contains the following macro also:
> 
> #define SetReqLen(req,n,badlen) \
>     if ((req->length + n) > (unsigned)65535) { \
> 	if (dpy->bigreq_size) { \
> 	    MakeBigReq(req,n) \
> 	} else { \
> 	    n = badlen; \
> 	    req->length += n; \
> 	} \
>     } else \
> 	req->length += n
> 
> which means anything that uses SetReqLen also needs to be rebuilt, and so far
> I've found:
> 
> libxext
> libxrender
> libxi
> libxfixes
> libxrandr
> libsdl1.2
> libxv
> libxp
> texlive-bin
> xserver-xorg-video-vmware
> 

There's more candidates for SetReqLen:

http://codesearch.debian.net/results/SetReqLen/page_0

I've noted in particular cairo.

And then indirectly through a embedded copy of cairo:
firefox (iceweasel), thunderbird (icedove), texlive-bin, indigo,
wine-gecko.

Additionally vnc4 through its own libX11 copy.

Finally open-vm-tools is also a possible candidate.

(Please note I haven't check if the SetReqLen macro is actually used in 
a way that might trigger a buffer overflow in MakeBigReq macro).

Regards.

-- 
Yann Droneaud
OPTEYA


