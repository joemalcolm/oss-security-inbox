Received: (qmail 12064 invoked by uid 550); 27 May 2026 04:28:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 21779 invoked from network); 27 May 2026 04:26:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stig.io; s=MBO0001;
	t=1779855991;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=4mc7yLtwkMrhWsfPzNTC2td9vmxFzRCVN80jfsqP/fA=;
	b=XD5dFo/gwKXQOOpfKYcgI/glR8hhif4ej/wVTqn7Ho79juv8jZoDLzzAfKD2VEsEiVKqn0
	q1keWa3jn+9Q2mb4F/UVRkqnj+J2TlDMGPez37IhLcUKOkpp/BSNqQaSkCSQBiIZNv+WNb
	lwF1b4UrtVADNylOyHtC80/3EkL9gnh2QA439tibzb33x1SKT32gtlBkhCU2eZVkiMUGBF
	sKOgZboGzyo954lZMIN6+8gZmDDE09xw7ZjOs2u2RmD5GUC5y5sOVQZWeYyhcK+lLfUXnr
	PI8AWdrEhAojnn5FOw9RCFO/EuN2G4m1c7gqkKE1gSrpYoxqGlzvo09j6pI2cg==
From: Stig Palmquist <stig@stig.io>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0
Message-Id: <CCF0070B-80D4-4508-8434-B01BD6B67320@stig.io>
Date: Wed, 27 May 2026 06:26:19 +0200
To: cve-announce@security.metacpan.org,
 oss-security@lists.openwall.com
Subject: [oss-security] CVE-2026-8450: HTTP::Daemon versions before 6.17 for Perl allow OS
 command injection via send_file()

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
CVE-2026-8450                                        CPAN Security Group
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

        CVE ID:  CVE-2026-8450
  Distribution:  HTTP-Daemon
      Versions:  before 6.17

      MetaCPAN:  https://metacpan.org/dist/HTTP-Daemon
      VCS Repo:  https://github.com/libwww-perl/HTTP-Daemon


HTTP::Daemon versions before 6.17 for Perl allow OS command injection
via send_file()

Description
-----------
HTTP::Daemon versions before 6.17 for Perl allow OS command injection
via send_file().

send_file() opens its string argument with Perl's 2-arg open(). The
2-arg form interprets magic prefixes: '| cmd' and 'cmd |' open a pipe
to a subprocess, '> path' and '>> path' open the path for write or
append.

Untrusted input passed to send_file() can run OS commands at the daemon
process UID. The read-pipe form ('cmd |') also leaks subprocess stdout
into the HTTP response body. The write-mode forms can create or
truncate files at attacker chosen paths.

Problem types
-------------
- CWE-78 Improper Neutralization of Special Elements used in an OS
  Command ('OS Command Injection')
- CWE-73 External Control of File Name or Path

Solutions
---------
Upgrade to HTTP-Daemon 6.17 or later.


References
----------
https://github.com/libwww-perl/HTTP-Daemon/pull/89
https://github.com/libwww-perl/HTTP-Daemon/commit/945d35141d94490f749640bd4=
390acd6a2193995.patch
https://metacpan.org/release/OALDERS/HTTP-Daemon-6.17/changes

Timeline
--------
- 2026-05-12: Issue identified.
- 2026-05-19: HTTP-Daemon 6.17 released.



