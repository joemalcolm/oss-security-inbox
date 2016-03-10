X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2461" "Thursday" "10" "March" "2016" "05:10:52" "-0700" "Damien Miller" "djm@openbsd.org" "<bffeab0724ff5bab@openbsd.org>" "72" "[oss-security] OpenSSH Security Advisory: xauth command injection" nil nil nil "3" "2016031012:10:52" "[oss-security] OpenSSH Security Advisory: xauth command injection" (number mark "U       djm@openbsd. Mar 10   72/2461  " thread-indent "\"[oss-security] OpenSSH Security Advisory: xauth command injection\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14041 invoked by uid 550); 10 Mar 2016 12:16:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11446 invoked from network); 10 Mar 2016 12:11:05 -0000
From: Damien Miller <djm@openbsd.org>
Date: Thu, 10 Mar 2016 05:10:52 -0700 (MST)
To: oss-security@lists.openwall.com
Message-Id: <bffeab0724ff5bab@openbsd.org>
Subject: [oss-security] OpenSSH Security Advisory: xauth command injection

OpenSSH Security Advisory: x11fwd.adv

This document may be found at: http://www.openssh.com/txt/x11fwd.adv

1. Affected configurations

        All versions of OpenSSH prior to 7.2p2 with X11Forwarding
	enabled.

2. Vulnerability

	Missing sanitisation of untrusted input allows an
	authenticated user who is able to request X11 forwarding
	to inject commands to xauth(1).

	Injection of xauth commands grants the ability to read
	arbitrary files under the authenticated user's privilege,
	Other xauth commands allow limited information leakage,
	file overwrite, port probing and generally expose xauth(1),
	which was not written with a hostile user in mind, as an
	attack surface.

	xauth(1) is run under the user's privilege, so this
	vulnerability offers no additional access to unrestricted
	accounts, but could circumvent key or account restrictions
	such as sshd_config ForceCommand, authorized_keys
	command="..." or restricted shells.

3. Mitigation

        Set X11Forwarding=no in sshd_config. This is the default.

	For authorized_keys that specify a "command" restriction,
	also set the "restrict" (available in OpenSSH >=7.2) or
	"no-x11-forwarding" restrictions.

4. Details

        As part of establishing an X11 forwarding session, sshd(8)
	accepts an X11 authentication credential from the client.
	This credential is supplied to the xauth(1) utility to
	establish it for X11 applications that the user subsequently
	runs.

	The contents of the credential's components (authentication
	scheme and credential data) were not sanitised to exclude
	meta-characters such as newlines. An attacker could
	therefore supply a credential that injected commands to
	xauth(1). The attacker could then use a number of xauth
	commands to read or overwrite arbitrary files subject to
	file permissions, connect to local ports or perform attacks
	on xauth(1) itself.

	OpenSSH 7.2p2 implements a whitelist of characters that
	are permitted to appear in X11 authentication credentials.

5. Credit

        This issue was identified by github.com/tintinweb and
	communicated to the OpenSSH developers on March 3rd, 2016.

6. Fix

        Portable OpenSSH 7.2p2 contains a fix for this vulnerability.

	Patches for supported OpenBSD releases (5.7, 5.8 and 5.9) have
	been committed to the -STABLE branches and are available on the
	errata pages:

	http://www.openbsd.org/errata57.html
	http://www.openbsd.org/errata58.html
	http://www.openbsd.org/errata59.html
