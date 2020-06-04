X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3095" "Thursday" "4" "June" "2020" "11:56:37" "+0100" "Simon McVittie" "smcv@debian.org" "<20200604105637.GA275582@espresso.pseudorandom.co.uk>" "58" "[oss-security] CVE-2020-12049: dbus: denial of service via file descriptor leak" nil nil nil "6" "2020060410:56:37" "[oss-security] CVE-2020-12049: dbus: denial of service via file descriptor leak" (number mark "U       smcv@debian. Jun  4   58/3095  " thread-indent "\"[oss-security] CVE-2020-12049: dbus: denial of service via file descriptor leak\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-12049: dbus: denial of service via file descriptor leak" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32004 invoked by uid 550); 4 Jun 2020 10:56:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31980 invoked from network); 4 Jun 2020 10:56:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	 s=smtpauto.master; h=Content-Type:MIME-Version:Message-ID:Subject:To:From:
	Date:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
	In-Reply-To:References; bh=WmYHuAneX4Do6R2ll9aMkAmBq964w1l55TE6rGT2wbk=; b=Qy
	pO6FSThNHl0YW9YVHZ1RjDWNwLYWrKpqz8F1ixVCAYSeluhGlK3QoMzFnqLga6ACwFDxHC0Mubtwv
	mxJfXQCQoFcMuqarVvzs3T+9PZarCxUhCzJDLitdfzb+3JWLs/3UxrBvohJ8zpKXBq4HBp7L7vdbZ
	N5/VGpyizqazdmbPn21N9R4/PyFHCAAZaBXu18o4nnUlx6rRYL+yZwPKMi0pYSkZhI/33spq8rMsq
	CeRn5Km0644lItgsAs8kZkIHgawUBTyv/dFE1qSg8PU6wsWqxr3YCFors5hPistdXPHc2DSG72KkL
	+DS05lrZ9SfmYsgY6bP+2uptNG5EUDjQ==;
Date: Thu, 4 Jun 2020 11:56:37 +0100
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <20200604105637.GA275582@espresso.pseudorandom.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [oss-security] CVE-2020-12049: dbus: denial of service via file descriptor leak

References: CVE-2020-12049, GHSL-2020-057, dbus#294.

dbus is the reference implementation of D-Bus, a user-space IPC mechanism
originating from freedesktop.org and commonly used on Linux and other
Unix systems.

Kevin Backhouse of the GitHub Security Lab discovered a denial of service
vulnerability[0] in dbus >= 1.3.0. An unprivileged local attacker can cause
the system dbus-daemon (dbus-daemon --system) to leak file descriptors
(fds) by sending messages with a number of fds that exceeds the allowed
number, resulting in truncation. The attacker's connection is (correctly)
disconnected, but the fds that were attached to the truncated message
are (incorrectly) not closed. By repeating this process, the attacker
can make the dbus-daemon reach its RLIMIT_NOFILE limit. When this limit
is reached, new connections will fail, and existing connections will be
unable to send messages with fds attached, causing denial of service.

The same attack is also possible in the uncommon situation where processes
of different privilege levels communicate directly using a private D-Bus
socket (DBusServer) without going via a dbus-daemon.

In the development branch, this has been fixed[1] in version 1.13.16.
Older releases are vulnerable, except where noted below.

In the stable branch 1.12.x, this has been fixed in version 1.12.18.
This is the recommended version of dbus for production use and for
long-term-stable operating systems.

In the old stable branch 1.10.x, this has been fixed in version 1.10.30.
This branch is maintained for the benefit of older long-term-stable
operating systems such as Debian 9, and will reach end-of-life soon[2].

Older stable branches such as 1.8.x have reached end-of-life and will
not receive upstream releases to fix this. Upgrading is recommended.
However, the patch used in supported versions[1] is believed to be
suitable for third-party backports to older releases.

We have received a report[3] that in at least OmniOS (a
Solaris/OpenSolaris/illumos derivative), the solution that was committed
causes a regression due to differences in the behaviour of SCM_RIGHTS
between Linux and OmniOS. This is under investigation. On non-Linux
operating systems such as BSD and Solaris, before deploying a fixed
version, package maintainers should try running the 'test-fdpass'
test case to confirm whether their OS kernel has the Linux-like or
OmniOS-like behaviour. This test-case requires building dbus with the
--enable-modular-tests configure option, with GLib development files
available; GLib is only used for the automated tests, and is not a
dependency of the parts of dbus used in production.

[0] https://gitlab.freedesktop.org/dbus/dbus/-/issues/294
[1] https://gitlab.freedesktop.org/dbus/dbus/-/commit/872b085f12f56da25a2dbd9bd0b2dff31d5aea63
[2] https://lists.freedesktop.org/archives/dbus/2020-June/017873.html
[3] https://gitlab.freedesktop.org/dbus/dbus/-/issues/304

-- 
Simon McVittie, Collabora Ltd. / Debian
dbus security contact:
https://gitlab.freedesktop.org/dbus/dbus/-/blob/master/CONTRIBUTING.md#reporting-security-vulnerabilities
