X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1498" "Sunday" "6" "June" "2021" "07:52:22" "-0400" "Mike O'Connor" "mjo@dojo.mi.org" nil "34" "Re: [oss-security] Re: XScreenSaver 5.45: Disconnecting a video output can cause XScreenSaver to crash and unlock" nil nil nil "6" nil nil (number mark "U       mjo@dojo.mi. Jun  6   34/1498  " thread-indent "\"Re: [oss-security] Re: XScreenSaver 5.45: Disconnecting a video output can cause XScreenSaver to crash and unlock\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Re: XScreenSaver 5.45: Disconnecting a video output can cause XScreenSaver to crash and unlock" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15936 invoked by uid 550); 6 Jun 2021 16:17:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 2027 invoked from network); 6 Jun 2021 14:20:36 -0000
Date: Sun, 6 Jun 2021 07:52:22 -0400
From: "Mike O'Connor" <mjo@dojo.mi.org>
To: oss-security@lists.openwall.com
Message-ID: <YLy29j6QgKnN432K@dojo.mi.org>
References: <YLrLbpUuAbLO3RR8@mail-itl>
 <YLrbf2Yirc4LuA16@mail-itl>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YLrbf2Yirc4LuA16@mail-itl>
X-Greylist: inspected by milter-greylist-4.5.11 (angus.mystery.com [127.0.0.1]); Sun, 06 Jun 2021 10:20:23 -0400 (EDT) for IP:'127.0.0.1' DOMAIN:'localhost' HELO:'angus.mystery.com' FROM:'mjo@dojo.mi.org' RCPT:''
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.11 (angus.mystery.com [127.0.0.1]); Sun, 06 Jun 2021 10:20:23 -0400 (EDT)
Subject: Re: [oss-security] Re: XScreenSaver 5.45: Disconnecting a video
 output can cause XScreenSaver to crash and unlock

:On Sat, Jun 05, 2021 at 02:55:10AM +0200, Marek Marczykowski-Górecki wrote:
:> The issue affects only XScreenSaver version 5.45. Versions 5.44 and
:> older, as well as 6.00, are not affected. The XScreenSaver author was
:> notified about this issue and decided not to publish an advisory, as the
:> issue does not affect the most recent version.
:> 
:> The Qubes Security Team has decided to address this issue in Qubes OS by
:> patching this specific bug rather than immediately upgrading to the 6.00
:> version.
:
:And here is the patch applied in Qubes OS:
:https://github.com/QubesOS/qubes-xscreensaver/blob/master/0001-Fix-updating-outputs-info.patch

Having said that, one of the big changes in XScreenSaver 6.00 involves
security improvements for this situation, so it's worth noting here:

https://www.jwz.org/blog/2021/04/xscreensaver-6-00-out-now/

	I have significantly refactored the XScreenSaver daemon, the
	component of the XScreenSaver suite that provides screen
	locking on X11 systems.

	These changes greatly reduce the amount of code running in the
	"critical" section: the part of the code where a crash would
	cause the screen to unlock. That critical section is now only
	around 1,800 lines of code, a reduction of roughly 87%.

etc.


-- 
 Michael J. O'Connor                                          mjo@dojo.mi.org
 =--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--==--=
"I never look back, darling.  It distracts me from the now."       -Edna Mode
