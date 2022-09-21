Received: (qmail 28454 invoked by uid 550); 21 Sep 2022 09:51:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23989 invoked from network); 21 Sep 2022 09:46:46 -0000
ARC-Filter: OpenARC Filter v1.0.0 mx.pao1.isc.org 87FBC3AB009
Authentication-Results: mx.pao1.isc.org; arc=none smtp.remote-ip=149.20.1.12
ARC-Seal: i=1; a=rsa-sha256; d=isc.org; s=ostpay; t=1663753593; cv=none; b=RNSPR8BI3FPGRxHLgkOpswfVVn9VbKxTwQmppXD8gM/gRXVS83nD9irkkXpPKjVg+vB0Ug4Hf/QN9seaekGaI01UOrj0w6KCPuxybsW0s4g8Z+WKXp/KSzhVK2aI2Q9Y6BRYIqrDfSlOaaCO3ZGFPApJ+L+VvDzjO+xP9i9MoO4=
ARC-Message-Signature: i=1; a=rsa-sha256; d=isc.org; s=ostpay; t=1663753593;
	c=relaxed/relaxed; bh=sfNHPSY8qWNSUY0nPssiJsX+tgGKBm62hdI4XjFlVYw=;
	h=DKIM-Signature:DKIM-Signature:Date:From:To:Subject:Message-ID:
	 MIME-Version; b=XkQl3IovLgycNKYUrRmnytn653UQbG/yGuHaKBL65XuKfOKlGNMdfzs8pi6oTsh1+d1UG8+WlVXfr/MfIY/iNai8q8zt2GWTi6k5/asqn5IokQ9FsM3SnHGsnDyYBvJHeaqQ/gbrnz18xMMUzMiY5IHdCyQCRO3EdBf/1LChQuw=
ARC-Authentication-Results: i=1; mx.pao1.isc.org
DKIM-Filter: OpenDKIM Filter v2.10.3 mx.pao1.isc.org 87FBC3AB009
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=isc.org; s=ostpay;
	t=1663753593; bh=J9LmwkYmhuQx6xJCwGrhmXbLUF8kYAgFzWZRfzqG0Ok=;
	h=Date:From:To:Cc:Subject;
	b=GkjBxtnw1JDwXG0HrGavsiBVxDnNjfpi7Bv+mfffIsuE4AQUwSIyS5azwso6hWlYC
	 nLvUu05BaLOWZRjdukpEfJXO3FlPBbzONkkB6vzU2gYGsowDHdMnf8V3b7Rbx492W+
	 2UNITlRtCFeK7c+xLLdS59Jjl6cx2b5qpsPPS49g=
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbrang.isc.org 1005BDCC33A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=isc.org;
	s=05DFB016-56A2-11EB-AEC0-15368D323330; t=1663753593;
	bh=sfNHPSY8qWNSUY0nPssiJsX+tgGKBm62hdI4XjFlVYw=;
	h=Date:From:To:Message-ID:MIME-Version;
	b=HK8LkqpM7nrf2zVcIJF435btDlYIJMKhVLuT+aRL93fbV/Ho/RKp1Na6d4qXx89rl
	 1pw9H66iR7wgRcj7Kp+ldWr40Yz+d0S6cJr9YXtVLXZqstC5Dp5QA82DiwpUYWAZPS
	 pvKViNFF3hmSPfeLN/v9IeOWa2LjrOk7a9FiOkfE=
Date: Wed, 21 Sep 2022 11:46:28 +0200
From: =?utf-8?B?TWljaGHFgiBLxJlwaWXFhA==?= <michal@isc.org>
To: oss-security@lists.openwall.com
Cc: security-officer@isc.org
Message-ID: <YyrddDfDHLntRmJk@larwa.hq.kempniu.pl>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] ISC has disclosed six vulnerabilities in BIND (CVE-2022-2795,
 CVE-2022-2881, CVE-2022-2906, CVE-2022-3080, CVE-2022-38177, CVE-2022-38178)

On 21 September 2022 we (Internet Systems Consortium) disclosed six vulnera=
bilities affecting our BIND 9 software:

- CVE-2022-2795:	Processing large delegations may severely degrade resolver=
 performance https://kb.isc.org/docs/cve-2022-2795
- CVE-2022-2881:	Buffer overread in statistics channel code https://kb.isc.=
org/docs/cve-2022-2881
- CVE-2022-2906:	Memory leaks in code handling Diffie-Hellman key exchange =
via TKEY RRs (OpenSSL 3.0.0+ only) https://kb.isc.org/docs/cve-2022-2906
- CVE-2022-3080:	BIND 9 resolvers configured to answer from stale cache wit=
h zero stale-answer-client-timeout may terminate unexpectedly https://kb.is=
c.org/docs/cve-2022-3080
- CVE-2022-38177:	Memory leak in ECDSA DNSSEC verification code https://kb.=
isc.org/docs/cve-2022-38177
- CVE-2022-38178:	Memory leaks in EdDSA DNSSEC verification code https://kb=
.isc.org/docs/cve-2022-38178

New versions of BIND are available from https://www.isc.org/downloads

Operators and package maintainers who prefer to apply patches selectively c=
an find individual vulnerability-specific patches in the "patches" subdirec=
tory of the release directories for our stable release branches (9.16 and 9=
.18):

- https://downloads.isc.org/isc/bind9/9.16.33/patches/
- https://downloads.isc.org/isc/bind9/9.18.7/patches/

With the public announcement of these vulnerabilities, the embargo period i=
s ended and any updated software packages that have been prepared may be re=
leased.

--=20
Best regards,
Micha=C5=82 K=C4=99pie=C5=84
