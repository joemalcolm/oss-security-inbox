Received: (qmail 20270 invoked by uid 550); 13 Feb 2024 14:23:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15955 invoked from network); 13 Feb 2024 13:36:51 -0000
ARC-Filter: OpenARC Filter v1.0.0 mx.pao1.isc.org 7B3E83AB1B3
Authentication-Results: mx.pao1.isc.org; arc=none smtp.remote-ip=149.20.2.31
ARC-Seal: i=1; a=rsa-sha256; d=isc.org; s=ostpay; t=1707831578; cv=none; b=VD4HHpayWHs36OpxRGcznWWXc6r7RD9oqz17DkUzd3QKJksj85fnAUIL/gNICxAPVagoKYPap0ONVU3UjsCTQCW32U45qe7u20UO6rWjLFV5jOXcyjCKwArsIDnVOyzY3fF2zihqYWu5aOgAFLAFDDus5ponY4lAadaQzkjrrhE=
ARC-Message-Signature: i=1; a=rsa-sha256; d=isc.org; s=ostpay; t=1707831578;
	c=relaxed/relaxed; bh=Beq/+2TP19TvCdFrsGcoeDnniLDTkmkvc/Yf6k66x7o=;
	h=DKIM-Signature:DKIM-Signature:Date:From:To:Subject:Message-ID:
	 MIME-Version; b=mF+w7e0yDecdGd5bazHs20vt7atthevOWWo4Nu4i9vbho5BykmY8aF6OHHkZQH1Dvf8rTkXeFu3Vt6NMAOJSkRIbdEAlK9KQmUmGLtI0AuhxGneQgmJLQy2LfmbdFBiXNNbXk5RbHFiCjqF9cwfzBv2WE3meed0c35xArWfewEg=
ARC-Authentication-Results: i=1; mx.pao1.isc.org
DKIM-Filter: OpenDKIM Filter v2.10.3 mx.pao1.isc.org 7B3E83AB1B3
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=isc.org; s=ostpay;
	t=1707831578; bh=2EGybwvzX0OxNvL8XJjm5wWZ5eZlOF+9C5jSywtqxuI=;
	h=Date:From:To:Subject;
	b=GZtgmK/P9QMs3MJLwGp9jNAOoW0z5PCYVs5zJTw9CxDyh8T4GWsszufNoQ6VyXKdS
	 bYFbZjGshwt3OZLTp79h+CDpAtvpy7tsNCsUlR4O22JGQ9VP/kpP2ZLvMr9Gm8GGT1
	 TtMybQmmfH7+T7NZNQVTAOf01GObwQoiVB9nE8YY=
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbrang.isc.org 55FE9F67A0C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=isc.org;
	s=05DFB016-56A2-11EB-AEC0-15368D323330; t=1707831578;
	bh=Beq/+2TP19TvCdFrsGcoeDnniLDTkmkvc/Yf6k66x7o=;
	h=Date:From:To:Message-ID:MIME-Version;
	b=hVOqrhE1IRnGsTmd3YIqWVqLvUtOo/OduqSF9dJizE3YmflJ2k6jGI5GC2OzAsQ+D
	 4kF3p5U9meQ9sDrpRAZKCiyuLlbGEo2RxGJEJjCoNR2Y6Y1wQ3KEd7L2t7slOdN9tj
	 cdRlwivMmILzWHbamJ04ShgJRJaYM9TCY1Plh06M=
Date: Tue, 13 Feb 2024 14:39:32 +0100
From: =?utf-8?B?TWljaGHFgiBLxJlwaWXFhA==?= <michal@isc.org>
To: oss-security@lists.openwall.com
Message-ID: <ZctxFAF_2oiVps82@larwa.hq.kempniu.pl>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] ISC has disclosed six vulnerabilities in BIND 9 (CVE-2023-4408,
 CVE-2023-5517, CVE-2023-5679, CVE-2023-6516, CVE-2023-50387, CVE-2023-50868)

On 13 February 2024 we (Internet Systems Consortium) disclosed six vulnerab=
ilities affecting our BIND 9 software:

- CVE-2023-4408:        Parsing large DNS messages may cause excessive CPU =
load https://kb.isc.org/docs/cve-2023-4408
- CVE-2023-5517:        Querying RFC 1918 reverse zones may cause an assert=
ion failure when "nxdomain-redirect" is enabled https://kb.isc.org/docs/cve=
-2023-5517
- CVE-2023-5679:        Enabling both DNS64 and serve-stale may cause an as=
sertion failure during recursive resolution https://kb.isc.org/docs/cve-202=
3-5679
- CVE-2023-6516:        Specific recursive query patterns may lead to an ou=
t-of-memory condition https://kb.isc.org/docs/cve-2023-6516
- CVE-2023-50387:       KeyTrap - Extreme CPU consumption in DNSSEC validat=
or https://kb.isc.org/docs/cve-2023-50387
- CVE-2023-50868:       Preparing an NSEC3 closest encloser proof can exhau=
st CPU resources https://kb.isc.org/docs/cve-2023-50868

New versions of BIND 9 are available from https://www.isc.org/downloads

Operators and package maintainers who prefer to apply patches selectively c=
an find individual vulnerability-specific patches in the "patches" subdirec=
tory of each published release directory:

- https://downloads.isc.org/isc/bind9/9.16.48/patches/
- https://downloads.isc.org/isc/bind9/9.18.24/patches/
- https://downloads.isc.org/isc/bind9/9.19.21/patches/

With the public announcement of these vulnerabilities, the embargo period i=
s ended and any updated software packages that have been prepared may be re=
leased.

--=20
Best regards,
Micha=C5=82 K=C4=99pie=C5=84
