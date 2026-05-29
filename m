Received: (qmail 32136 invoked by uid 550); 29 May 2026 14:39:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32115 invoked from network); 29 May 2026 14:39:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=nodmarc.schlittermann.de; s=2020-06-19; h=Content-Type:MIME-Version:
	Message-ID:Subject:Cc:To:From:Date:Content-Description:Content-ID:
	Content-Transfer-Encoding:In-Reply-To:References:Resent-Cc:Resent-To;
	bh=y11eNxGQOelDkh3vRfsU+d5xaXXczyA/127CL3dvN5E=; b=HQ59XFAvXAj8e4Q7Cp5srtYGmv
	6TN7lWtvJZjBUSme5J/159kz6h2RqpHo0LFFJCdAQ3bLSO1GOzPbDbl6Pd5SgJGlrD14gdox7iXLU
	As0okLKspY24aIf8LROIaPVQRxwN/wOAy2+sOJHHN4sPqThBKXUbMwZJyc2HYqpk7Eq7Y1O/xuswj
	mk5mgE8f6Xk1HZCfSZM8Epwf/fLYLBzMn57w76Pg3wuI1se9ZVi1SFi+LlCrVk1RKGznjYil8wc9R
	AUAcGvOsenmjPLKM/5wL6pIYBJp5xbWWjlNvqrNrG9zKlaCxDjoYAHsw4+jZaZZNkR0OWrMpBzMXN
	jQrS/BKg==;
Date: Fri, 29 May 2026 16:38:57 +0200
From: Heiko Schlittermann <hs@nodmarc.schlittermann.de>
To: oss-security@lists.openwall.com
Cc: exim-announce@lists.exim.org, exim-users@lists.exim.org
Message-ID: <fxbuuizw5bvmsoafd2rn7ntruzq2yhw7fw3ptvbabxaguozgyv@iwyrf7ed3kgq>
Mail-Followup-To: oss-security@lists.openwall.com, 
	exim-announce@lists.exim.org, exim-users@lists.exim.org
Organization: schlittermann -- internet & unix support
X-Face: =y#&-VlCH8uT|8#-#JE_^c<:+qPbYxFD`}8`m)xjyA$93tpwm-vKsa(V,0?906(2VIVNQbU
 QzD%zhE+~-AA?\v-v.HY6]ebO4_$vY`l|||Q!EZT5*Xx/>Fj{8E_a.;;#<4S$>&T%n5()2Yt=R5FSC
 y:Na&@T{Rf`kPq^'ffPFA%`mP~>%-LU$d*]]{-%>j={&MsMND.">]H)&#AoSI~(U8Jk;v*;,Pf+l85
 X?H&`
X-Telegram: @HeikoSchlittermann
X-Threema: T5RPWMSS
X-Signal: +49.172.7909055
X-Phone: +49.172.7909055
X-SMS: +49.172.7909055
X-GPG-Fingerprint: E5CA 331D 44AB 8E4C 806F  DBEE 2610 1B62 F693 76CE
X-GPG-Key-ID: F69376CE
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4ouo3nwmjaqjtwvw"
Content-Disposition: inline
Subject: [oss-security] CVE-2026-48840: Exim 4.99.4: PROXY-protocol uninitialised-stack
 information disclosure

--4ouo3nwmjaqjtwvw
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: CVE-2026-48840: Exim 4.99.4: PROXY-protocol uninitialised-stack
 information disclosure
MIME-Version: 1.0

Dear Exim users,

The Exim maintainers are releasing a security fix for CVE-2026-48840.

Identifier:   EXIM-Security-2026-05-19.1 (CVE-2026-48840)
Type:         pre-authentication information disclosure
Component:    Exim
Affects:      4.88 (2017) through the current 4.99.3 release
Corrected in: Exim 4.99.4 (exim-4.99.4)
Credit:       Warisjeet Singh (sin99xx)

Vulnerability Details
---------------------

proxy_protocol() declares hdr as an uninitialised stack union.  For a
PROXYv2 frame, the only length guard is an upper bound: the frame size
must not exceed sizeof(hdr).  No lower bound is checked.

A frame with address family 0x21 (TCPv6) and len=3D0 sets the read size
to 16, causing the read loop to copy exactly 0 bytes into the union.
The TCPv6 dispatch arm then unconditionally calls:

  memmove(tmpaddr6.sin6_addr.s6_addr, hdr.v2.addr.ip6.src_addr, 16)

copying 16 uninitialised stack bytes into tmpip6, which inet_ntop
formats as an IPv6 address string.  That string is written to
sender_host_address and emitted in the SMTP greeting banner:

  250 hostname Hello probe [::68ef:38ad:ffff:0]

The same defect affects family 0x11 (TCPv4) with len < 12 (4 leaked
bytes instead of 16).

The leaked bytes track ASLR entropy across daemon restarts and are
confirmed to be live userspace VA pointers, making this an
ASLR-defeat primitive usable as a chain component.

Fix: add minimum-length checks per address family (12 bytes for
TCPv4/0x11, 36 bytes for TCPv6/0x21) before the union is accessed.
Frames that fail the check are rejected with proxyfail, consistent
with all other malformed-frame handling in the function.

Reported by Warisjeet Singh (sin99xx).  Tested on aarch64 Linux;
architecture-independent (only leaked content varies).


Affected Configurations
-----------------------

Exim compiled with SUPPORT_PROXY (default in Debian, Ubuntu,
RHEL/Fedora packages) and hosts_proxy set to a non-empty value.
The attacker's source IP must match hosts_proxy, or the attacker
must be able to reach the port that expects a PROXY header through
a host already in hosts_proxy.


Mitigations
-----------

- Narrow hosts_proxy to the exact load-balancer IPs (not a CIDR superset).
- Unset hosts_proxy entirely to disable PROXY-protocol parsing on the affec=
ted listener.

Resolution
----------

Upgrade to Exim 4.99.4.  The fix is on branch exim-4.99+fixes,
tag exim-4.99.4, signed by Heiko Schlittermann (HS12-RIPE) <hs@schlitterman=
n.de>,
key 0xDD98D92359DE9E3C2663F291697F0EDD68099F6F.

Downloads
---------

  https://ftp.exim.org/pub/exim/exim4/
  https://code.exim.org/exim/exim/releases

Advisory
--------

  https://www.exim.org/static/doc/security/EXIM-Security-2026-05-19.1/

Timeline
--------

  2026-05-19 12:35 UTC  Report received from Warisjeet Singh (sin99xx)
  2026-05-19 13:26 UTC  Acknowledgement sent to reporter
  2026-05-19 14:06 UTC  Root cause confirmed; fix drafted
  2026-05-25 13:30 UTC  CVE request submitted to Mitre via cveform.mitre.org
  2026-05-25 17:57 UTC  CVE-2026-48840 assigned by MITRE
  2026-05-26 00:41 UTC  Advance notice (distro-pre.txt) sent to distros@vs.=
openwall.org
  2026-05-26 00:47 UTC  Advance notice sent to exim-maintainers@lists.exim.=
org
  2026-05-27 14:00 UTC  Fix branch and tag exim-4.99.4 pushed to exim-distr=
os
  2026-05-29 14:00 UTC  Public release

--=20
Heiko Schlittermann
On behalf of the Exim Maintainers

--4ouo3nwmjaqjtwvw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE3ZjZI1nenjwmY/KRaX8O3WgJn28FAmoZpQAACgkQaX8O3WgJ
n29BXRAAg6mvXCwDl9OeGz+WUiacRiv8CB7VjMi9kQAE1llFPsffI8xUKGOUe+q6
A1ta1yMm9mi+LhffmbfONrjdJMACGhjREovdIoS+Hrl/OiTF20pb9UL8NLyT1a0P
fROWUAYHKPE3qpE3wyJPQt6JHMOI9Vsc0d8tP3yU2NR+C61QS0VhxjgUy44AaWk/
niNiepeWl81nztgRC+XP9WWvCBpWk7jFlDZJuTJ0rPlAX4bs7VO/B89uz0UVfDAn
SJAbzqKh6QLW80BiTThdwxMABEApqUkuKr0/qBn8dmrW/es30aKjebXXuiJyZPP4
CDW+328wnzUrmC6Lb1JdMdQcPT2GpqUhakEQCxC8czX4PtuZ3DFzoBmgt3xQLAnF
gkETDOprp++2cSDLWYIA9CQ5XAYjq1tI5q5bniPhBsPGy0ypJFURtRNagJ4YSeJx
aGE0DTuNBskjpc2NS8auwSSuC781abo8URqL5JEwhcRj/5o39FqPIIp2OIiEhgy1
kjX8IB3mK+5XRM+aNfgm5K8jcZ/OkAB7ToSF5/Zm96tSWe5T1Sa7+zigcM53cDF5
DjS0SJlSDUWahl8RHsW3MrQAaX/VKRvowrrftAyl5UzF3n13yFFJyeX8bE/bNT9e
4mohuhV8Bf9hBi2o/Un9smAbeKkIZ9RaCC/Uo1yP03mjw748U6w=
=Ett8
-----END PGP SIGNATURE-----

--4ouo3nwmjaqjtwvw--
