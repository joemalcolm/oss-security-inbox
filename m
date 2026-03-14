Received: (qmail 5943 invoked by uid 550); 14 Mar 2026 19:27:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5286 invoked from network); 14 Mar 2026 19:27:37 -0000
Date: Sat, 14 Mar 2026 20:27:29 +0100
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: Justin Swartz <justin.swartz@risingedge.co.za>
Message-ID: <20260314192729.GA4355@openwall.com>
References: <20260313043738.8600-1-justin.swartz@risingedge.co.za> <abQO9W_P5gstPcXT@symphytum.spacehopper.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <abQO9W_P5gstPcXT@symphytum.spacehopper.org>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Some telnet clients leak environment variables

On Fri, Mar 13, 2026 at 01:19:49PM +0000, Stuart Henderson wrote:
> On 2026/03/13 06:37, Justin Swartz wrote:
> >   OpenBSD 7.8 [PARTIAL LEAKAGE]
> >   
> >   The client blocks most variables which have not been explicitly
> >   exported, but potentially sensitive variables such as DISPLAY,
> >   XAUTHORITY and PRINTER are leaked without prior export.
> 
> ha, we've had that for a long time.
> 
> ---------------------
> Date: 2005/02/27 15:46:42
> Author: otto
> Branch: HEAD
> Tag: OPENBSD_3_7_BASE
> Log:
> - only send exported vars (based on a diff from Solar Designer)
> - fix some buffer overflows (also some Solar Designer input)
> 
> ok deraadt@ cloder@
> 
> Members:
>         authenc.c:1.6->1.7
>         commands.c:1.47->1.48
>         externs.h:1.13->1.14
>         telnet.c:1.18->1.19
> ---------------------

Oh, I didn't recall.

Looking at this now:

https://cvsweb.openbsd.org/src/usr.bin/telnet

I see that these exports are explicit in commands.c:

	env_export("DISPLAY");
	env_export("PRINTER");
	env_export("XAUTHORITY");

Also, there's support for the TERMINAL-TYPE (RFC 1091) and
X-DISPLAY-LOCATION (RFC 1096) telnet protocol options in telnet.c, which
would send TERM and DISPLAY even if these are not exported.

Looking at RHEL 9 telnet-0.17-85.el9's telnet-0.17-env.patch against
Linux NetKit, I see it also deliberately allows TERM and DISPLAY to be
sent via these protocol options even if not exported.

Perhaps these default exports once made sense, but not anymore... except
maybe for TERM, which still needs to work out of the box?

I also found there's OpenBSD-derived telnet-bsd package in Gentoo
(client and server) and OpenWrt (client only), originally ported by
Thorsten Kukuk of SUSE.  I didn't check when it was forked, nor whether
it already contains the 2005 fixes mentioned above or equivalent.
Someone (perhaps involved with those distros) could want to check.

Alexander
