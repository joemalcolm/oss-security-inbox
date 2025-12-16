Received: (qmail 11916 invoked by uid 550); 16 Dec 2025 14:07:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11856 invoked from network); 16 Dec 2025 14:07:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=ucc.asn.au;
	s=ucc-2016-3; t=1765894035;
	bh=WFycOvYGIS7dVkBh5rb+oMLUhibjQ9+ugOEJmu2PW9s=;
	h=Date:From:To:Subject:From;
	b=cFkoCOe22bk78NcZ6itz0w+VPBBpSuFpXEbH8Od98wRRg0kBc79GFv3IUD8nktm7Z
	 R7N4Ne2haRkQXm5tjcXzymmzGWqZrhe55giChCsbFRt0LShbjGKnNyHDEEa9f7gxDz
	 OdstBaaHhNDW3uy3Og+D2ISwxnPqJEoKl2Q+jokg=
Authentication-Results: OpenDMARC; dmarc=pass (p=none dis=none) header.from=ucc.asn.au
Authentication-Results: OpenDMARC; spf=pass smtp.mailfrom=ucc.asn.au
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=ucc.asn.au;
	s=ucc-2016-3; t=1765894034;
	bh=WFycOvYGIS7dVkBh5rb+oMLUhibjQ9+ugOEJmu2PW9s=;
	h=Date:From:To:Subject:From;
	b=TMC6lqehRP0ROP0Prhwg5EZUScEmH3tIK72zrwlkzcAXPly0m4JjiXOsLnLdOVWFr
	 AHdF2Jq00EVXeni0wKudcE2LyMaDdxPXdeuLctw8AUGz0vr0lCDsMRRNunTbKMP9Zf
	 hQsZ2LJw/uVLHOAsm/8Oy/QJhO/DBrqrbA9TqaM4=
Date: Tue, 16 Dec 2025 22:07:13 +0800
From: Matt Johnston <matt@ucc.asn.au>
To: oss-security@lists.openwall.com
Message-ID: <aUFnkZUz29e7mr8o@ucc.gu.uwa.edu.au>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-snowman: =?utf-8?Q?=E2=98=83_9mIAoXdIBzBQMuAqQoG9pn?=
 =?utf-8?Q?iH2uaG3MzgxgwS2tOjlmPdHsFAPK3wc6jr?=
Subject: [oss-security] Dropbear 2025.89 fixes privilege escalation, CVE-2025-14282

Forwarded from the dropbear list.

---

Dropbear 2025.89 is released. As well as various
improvements, this includes a security fix for privilege
escalation in Dropbear server. This affects versions 2024.84
to 2025.88, allowing any authenticated user to run arbitrary
programs as root (depending on other system programs).

A mitigation for affected versions is to disable unix socket
forwarding, either with  "dropbear -j" runtime argument
(will also disable TCP fowarding) or building with
localoptions.h / distrooptions.h
"#define DROPBEAR_SVR_LOCALSTREAMFWD 0".

The full fix of dropping privileges requires the commits in
https://github.com/mkj/dropbear/pull/391
https://github.com/mkj/dropbear/pull/394

Unix socket forwarding is now disabled when forced command
options are used, since it could bypass command restrictions.
This isn't directly related to the privilege escalation, but
could allow arbitrary commands to be run as the correct
user.

https://matt.ucc.asn.au/dropbear/
https://dropbear.nl/mirror/

Cheers,
Matt

2025.89 - 16 December 2025

- Security: Avoid privilege escalation via unix stream forwarding in Dropbear
  server. Other programs on a system may authenticate unix sockets via
  SO_PEERCRED, which would be root user for Dropbear forwarded connections,
  allowing root privilege escalation.
  Reported by Turistu, and thanks for advice on the fix.
  This is tracked as CVE-2025-14282, and affects 2024.84 to 2025.88.

  It is fixed by dropping privileges of the dropbear process after
  authentication. Unix stream sockets are now disallowed when a
  forced command is used, either with authorized_key restrictions or
  "dropbear -c command".

  In previous affected releases running with "dropbear -j" (will also disable
  TCP fowarding) or building with localoptions.h/distrooptions.h
  "#define DROPBEAR_SVR_LOCALSTREAMFWD 0" is a mitigation.

- Security: Include scp fix for CVE-2019-6111. This allowed
  a malicious server to overwrite arbitrary local files.
  The missing fix was reported by Ashish Kunwar.

- Server dropping privileges post-auth is enabled by default. This requires
  setresgid() support, so some platforms such as netbsd or macos will have to
  disable DROPBEAR_SVR_DROP_PRIVS in localoptions.h. Unix stream forwarding is
  not available if DROPBEAR_SVR_DROP_PRIVS is disabled.

  Remote server TCP socket forwarding will now use OS privileged port
  restrictions rather than having a fixed "allow >=1024 for non-root" rule.

  A future release may implement privilege dropping for netbsd/macos.

- Fix a regression in 2025.87 when RSA and DSS are not built. This would lead
  to a crash at startup with bad_bufptr().
  Reported by Dani Schmitt and Sebastian Priebe.

- Don't limit channel window to 500MB. That is could cause stuck connections
  if peers advise a large window and don't send an increment within 500MB.
  Affects SSH.NET https://github.com/sshnet/SSH.NET/issues/1671
  Reported by Rob Hague.

- Ignore -g -s when passwords arent enabled. Patch from Norbert Lange.
  Ignore -m (disable MOTD), -j/-k (tcp forwarding) when not enabled.

- Report SIGBUS and SIGTRAP signals. Patch from Loïc Mangeonjean.

- Fix incorrect server auth delay. Was meant to be 250-350ms, it was actually
  150-350ms or possibly negative (zero). Reported by pickaxprograms.

- Fix building without public key options. Thanks to Konstantin Demin

- Fix building with proxycmd but without netcat. Thanks to Konstantin Demin

- Fix incorrect path documentation for distrooptions, thanks to Todd Zullinger

- Fix SO_REUSEADDR for TCP tests, reported by vt-alt.


