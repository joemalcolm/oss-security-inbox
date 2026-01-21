Received: (qmail 1185 invoked by uid 550); 21 Jan 2026 18:42:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1140 invoked from network); 21 Jan 2026 18:42:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=orlitzky.com; s=mail2;
	t=1769020944; bh=BU0CqNiJ7Gb1RtMidCyACFIM3NeQPvXgRTzVJ+NfVqc=;
	h=Date:From:To:Subject;
	b=KbZIpbYEW1E5Y3xS/FWt+pX8K7hZXw05YKVVCElurzMQy++JYFKhLWKt7QmFSwe6T
	 CWsDcatOYJeAo/VDHwQ7iiX8KXnOah4m9FGWP7tgaKyj23+/1DeAwwmvT4mJX+h5z8
	 0YrHX81+2LZhemg/SL9SGrGrwZj07MHmyz5N1HM4=
Date: Wed, 21 Jan 2026 13:42:23 -0500
From: Michael Orlitzky <michael@orlitzky.com>
To: oss-security@lists.openwall.com
Message-ID: <aXEeDxLAgzP6oTLP@mertle>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Subject: [oss-security] Vulnerable tmpdir handling in pytest

I've been sleeping on this one because it doesn't affect our package
manager, but if you use pytest on a multi-user system or for CI in the
cloud, then maybe it is of interest.

Bug report: https://github.com/pytest-dev/pytest/issues/13669

I requested a CVE last week from MITRE but haven't heard back yet. The
details are unexciting so I'll keep it short.

Summary
=======

On UNIX, pytest uses a predictable naming scheme under /tmp with a UID
check for added security. The UID check however will follow symlinks,
and is vulnerable to TOCTOU. This leaves pytest vulnerable to several
well-known vulnerabilities on multi-user systems. The risk ultimately
depends on how pytest is used, but denial of service is trivial and
code execution is possible.

Mitigation
==========

In the meantime, I would recommend creating your own temporary
directory securely using, say $(mktemp -d), and then overriding the
default using one of the standard environment variables (check the
docs for python's tempfile.gettempdir) or PYTEST_DEBUG_TEMPROOT.

On linux, it's a good idea to set the relevant sysctls:

fs.protected_fifos = 2
fs.protected_regular = 2
fs.protected_symlinks = 1
fs.protected_hardlinks = 1
