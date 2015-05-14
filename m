X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2247" "Thursday" "14" "May" "2015" "15:38:57" "+0100" "Simon McVittie" "simon.mcvittie@collabora.co.uk" "<5554B381.7000805@collabora.co.uk>" "46" "[oss-security] security hardening in dbus 1.8.18, 1.9.16: avoiding weak PRNG" nil nil nil "5" "2015051414:38:57" "[oss-security] security hardening in dbus 1.8.18, 1.9.16: avoiding weak PRNG" (number mark "        simon.mcvitt May 14   46/2247  " thread-indent "\"[oss-security] security hardening in dbus 1.8.18, 1.9.16: avoiding weak PRNG\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30497 invoked by uid 550); 14 May 2015 14:37:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30450 invoked from network); 14 May 2015 14:37:16 -0000
Message-ID: <5554B381.7000805@collabora.co.uk>
Organization: Collabora Ltd.
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Icedove/31.6.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
CC: "dbus@lists.freedesktop.org" <dbus@lists.freedesktop.org>
Date: Thu, 14 May 2015 15:38:57 +0100
From: Simon McVittie <simon.mcvittie@collabora.co.uk>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] security hardening in dbus 1.8.18, 1.9.16: avoiding weak PRNG
To: oss-security@lists.openwall.com

dbus <http://www.freedesktop.org/wiki/Software/dbus/> is the reference
implementation of D-Bus, an asynchronous inter-process communication
system, commonly used for system services or within a desktop session on
Linux and other operating systems.

I released dbus 1.8.18 today with a security-hardening change. We are
not treating this as a security vulnerability (and so are not requesting
a CVE ID) because we do not believe the failure mode can be induced by
an attacker.

The bug: while processing Coverity warnings, we noticed that libdbus'
random number generator abstraction would silently fall back to a very
weak PRNG (libc rand()) if /dev/urandom (or Windows equivalent) could
not be read, or if malloc() returned NULL during random number
generation. Among other things, this random number generator is used by
the DBUS_COOKIE_SHA1 authentication mechanism, which reads and writes
random "cookies" in the home directory as a way for peers to prove that
they have access.

Mitigation: in 1.8.18, we have mitigated this by changing the default
session bus configuration on Unix platforms to require EXTERNAL
(credentials-passing) authentication, i.e. disabling the
DBUS_COOKIE_SHA1 authentication mechanism by default.

http://cgit.freedesktop.org/dbus/dbus/commit/?h=dbus-1.8&id=d9ab8931822999336b84cac0499a12e11c11e298

Fix: In the development branch (in which I'm currently doing the release
smoke-testing for 1.9.16), we have removed the fallback entirely.
Unfortunately this change involves adding more error-handling code
paths, so we consider it to be too intrusive for 1.8.x.

http://cgit.freedesktop.org/dbus/dbus/commit/?id=f180a839727981c8896056a35df17768d54eada6
http://cgit.freedesktop.org/dbus/dbus/commit/?id=49646211f3c8dcdc3728f4059c61c05ef4df857c
http://cgit.freedesktop.org/dbus/dbus/commit/?id=f385324d8b03eab13f3e618ce9a0018977c9a7cb
http://cgit.freedesktop.org/dbus/dbus/commit/?id=bcdead0fd4642a5e8985981c1583d40ff779299a

Bug tracked as: https://bugs.freedesktop.org/show_bug.cgi?id=90414
Versions with fix: >= 1.9.16
Versions with mitigation: 1.8.x >= 1.8.18
Versions affected: all older dbus releases
Credit: Ralf Habacker, Simon McVittie

-- 
Simon McVittie, Collabora Ltd.
on behalf of the D-Bus maintainers

