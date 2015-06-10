X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2980" "Wednesday" "10" "June" "2015" "11:16:17" "-0700" "Alan Coopersmith" "alan.coopersmith@oracle.com" "<55787EF1.2040605@oracle.com>" "82" "[oss-security] Fwd: X.Org/Wayland Security Advisory: Missing authentication in XWayland" nil nil nil "6" "2015061018:16:17" "[oss-security] Fwd: X.Org/Wayland Security Advisory: Missing authentication in XWayland" (number mark "        alan.coopers Jun 10   82/2980  " thread-indent "\"[oss-security] Fwd: X.Org/Wayland Security Advisory: Missing authentication in XWayland\"\n") "<CAPj87rP0um8hp2LWULhy-ZDL5CDSUt740Xr4_wpdLL1SzBCTqA@mail.gmail.com>" ("<CAPj87rP0um8hp2LWULhy-ZDL5CDSUt740Xr4_wpdLL1SzBCTqA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26337 invoked by uid 550); 10 Jun 2015 18:16:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26281 invoked from network); 10 Jun 2015 18:16:32 -0000
Message-ID: <55787EF1.2040605@oracle.com>
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:17.0) Gecko/20150507 Thunderbird/17.0.11
MIME-Version: 1.0
References: <CAPj87rP0um8hp2LWULhy-ZDL5CDSUt740Xr4_wpdLL1SzBCTqA@mail.gmail.com>
In-Reply-To: <CAPj87rP0um8hp2LWULhy-ZDL5CDSUt740Xr4_wpdLL1SzBCTqA@mail.gmail.com>
X-Forwarded-Message-Id: <CAPj87rP0um8hp2LWULhy-ZDL5CDSUt740Xr4_wpdLL1SzBCTqA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Source-IP: userv0022.oracle.com [156.151.31.74]
Date: Wed, 10 Jun 2015 11:16:17 -0700
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Fwd: X.Org/Wayland Security Advisory: Missing authentication in XWayland
To: oss-security@lists.openwall.com




-------- Original Message --------
Subject: X.Org/Wayland Security Advisory: Missing authentication in XWayland
Date: Wed, 10 Jun 2015 16:06:08 +0100
From: Daniel Stone <daniel@fooishbar.org>
Reply-To: xorg@lists.freedesktop.org
To: xorg-announce@lists.freedesktop.org, 
"wayland-devel@lists.freedesktop.org" <wayland-devel@lists.freedesktop.org>

X.Org/Wayland Security Advisory: June 10th, 2015 - CVE-2015-3164
Unauthorised local client access in XWayland
============================================

Description:
============

Ray Strode, a developer at Red Hat, discovered an authentication setup
issue inside the XWayland compatibility server, used to host X11 clients
inside a Wayland compositor's session. XWayland is used by Weston and
Mutter / GNOME Shell's Wayland mode.

Due to an omission in authentication setup, the XWayland server would
start up in non-authenticating mode, meaning that any client with access
to the server's UNIX socket was able to connect to the server and use it
as a regular client. No Wayland compositor was known to start XWayland
with TCP access open, so remote exploitation is not considered possible.

On many systems, all local users would have full access to the XWayland
server, allowing untrusted users to capture contents of, and input
destined for, other X11 clients.

This permission bypass does not extend to native Wayland clients:
XWayland is not given access to the buffers of any Wayland clients in
the host session, nor is any input sent to XWayland unless an X11
client was active at that time.

The resolution was to restrict XWayland connections to the same UID as
the server itself, matching Wayland's default permissions.

This vulnerability has been assigned CVE-2015-3164.


Affected versions:
==================

The separate XWayland DDX was introduced with version 1.16 of the X.Org
Server release, and this vulnerability has been present in all versions
since. Versions prior to these releases used a separate 'xwayland'
module within the Xorg DDX, which is unaffected by this vulnerability.

All Weston versions since 1.5.0 use the new Xwayland server, as well as
all released Wayland versions of Mutter / GNOME Shell.


Fixes:
======

Fixes are available in the patches for these X server git commits:
         c4534a38b68aa07fb82318040dc8154fb48a9588
         4b4b9086d02b80549981d205fb1f495edc373538
         76636ac12f2d1dbdf7be08222f80e7505d53c451

Which are now available from:
         git://anongit.freedesktop.org/git/xorg/xserver
         http://cgit.freedesktop.org/xorg/xserver/

Fixes will also be included in the 1.18 series and its release candidates,
as well as the 1.17.2 stable release.

Thanks:
=======

X.Org and the Wayland community thank Ray Strode of Red Hat for reporting
these issues to our security team and developing the fixes.
_______________________________________________
xorg-announce mailing list
xorg-announce@lists.x.org
http://lists.x.org/mailman/listinfo/xorg-announce


