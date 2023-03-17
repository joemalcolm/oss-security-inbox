Received: (qmail 13466 invoked by uid 550); 17 Mar 2023 09:57:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13445 invoked from network); 17 Mar 2023 09:57:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:Content-Type:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=R7p4TToqMPJw339bjPt2Kt04L3GxoiND9Zm7tJMgipw=; b=JNKbvxEj84HRtHQNWYdjGZ+3Cy
	9rInoHlaGI7T83HUiyFGoKmP7MwAMU/JlvqN+NSuP5BQlUaKxa8SCi47kRTMBldYWQo4dRZQ1Y+Kv
	5oMQhp+hMC75x7uE9Y2XWCW3sA1ujxf5OaKO56gNauTqsNji9xjJuGBzMipxeF0j+3FY4+uqBf0R/
	+CQK5FRcr7BZ/6oE+QKB68ZIgTbtCVpA1HCChDgGgCGSV6F1cgI9rlJg76u8DWeLwHMgjYBTOZqrR
	25GhTJoqE3tLvx+G1VKHkfng8c52dthHaGf/gYr89WSijiQCcuyhZq/40oGTtqEsm4igfj2EIClk8
	UWWfvdBw==;
Date: Fri, 17 Mar 2023 09:56:55 +0000
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <ZBQ5Z9wfWqONphtz@momentum.pseudorandom.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Debian-User: smcv
Subject: [oss-security] flatpak: CVE-2023-28100: TIOCLINUX can send commands outside sandbox
 if running on a virtual console

https://github.com/flatpak/flatpak/security/advisories/GHSA-7qpw-3vjv-xrqp
Vulnerable: all < 1.10.8, 1.12.x < 1.12.8, 1.14.x < 1.14.4, 1.15.x < 1.15.4
Fixed: 1.15.4, 1.14.x >= 1.14.4, 1.12.x >= 1.12.8, 1.10.x >= 1.10.8

Flatpak is a system for building, distributing, and running sandboxed
desktop applications on Linux.

Jakub Wilk mentioned on the oss-security mailing list that various
projects' mitigations for the problematic design of the TIOCSTI ioctl
are not sufficient in all cases, because Linux virtual terminals
implement copy/paste via the TIOCLINUX ioctl, which can have a similar
effect. Flatpak is one of the projects affected by this.

If a malicious Flatpak app is run on a Linux virtual console such as
/dev/tty1, it can copy text from the virtual console and paste it back
into the virtual console's input buffer, from which the command might
be run by the user's shell after the Flatpak app has exited. This is
similar to CVE-2017-5226, but using the TIOCLINUX ioctl command instead
of TIOCSTI.

This has been fixed in Flatpak upstream releases 1.14.4, 1.15.4, 1.12.8
and 1.10.8 by preventing the TIOCLINUX ioctl via a seccomp filter,
in the same way that was already done for the TIOCSTI ioctl.

Mitigation: ordinary graphical terminal emulators like xterm,
gnome-terminal and Konsole are unaffected. This vulnerability is specific
to the Linux virtual consoles /dev/tty1, /dev/tty2 and so on, which are
not commonly used to run Flatpak apps: Flatpak is primarily designed
to be used in a Wayland or X11 graphical environment, either with no
controlling terminal (the most common case) or from a graphical terminal
emulator (while debugging or developing).

Workaround: avoid running untrusted Flatpak apps (`flatpak run ...`)
from the text-mode virtual consoles.
