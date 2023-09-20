Received: (qmail 13387 invoked by uid 550); 20 Sep 2023 12:40:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20339 invoked from network); 20 Sep 2023 12:15:29 -0000
ARC-Filter: OpenARC Filter v1.0.0 mx.pao1.isc.org 724EB3AB014
Authentication-Results: mx.pao1.isc.org; arc=none smtp.remote-ip=149.20.2.31
ARC-Seal: i=1; a=rsa-sha256; d=isc.org; s=ostpay; t=1695212116; cv=none; b=cLdf8xo68qZ0gBghHRoAglmj+oGaHXwhE4yAv/L3CBCXNwYBq2mLyU7XGIATjnqbkADgra/0yP/D4xgbXRh71y0m4rCEv8PXVSr14QoihQE+umEE1hU1R3CEFmoncoJoP06dty+j96Vk9nw5jwBp1NUiQppO+E2eXbpoDSpkOHM=
ARC-Message-Signature: i=1; a=rsa-sha256; d=isc.org; s=ostpay; t=1695212116;
	c=relaxed/relaxed; bh=UEmmoUqgug+o2PMNz2W3WynB3jOVqVQsII2w7vIIVOU=;
	h=DKIM-Signature:DKIM-Signature:Date:From:To:Subject:Message-ID:
	 MIME-Version; b=F5qlcf0PwmdqUMaXj1BC6Ps0aCNAY7Zm/u/eO0c2UaOmwaYsu+eBRubtpQehfJbKzP7VT/4ByiuRutBoUJpowcmtT4YZyGhcLNAx6iWDoY1W61lP6m/UrmDas4gVxEwIYphhcqjzHcFc+ea5HbEJfnagHheHYfRdNiEPe9poveo=
ARC-Authentication-Results: i=1; mx.pao1.isc.org
DKIM-Filter: OpenDKIM Filter v2.10.3 mx.pao1.isc.org 724EB3AB014
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=isc.org; s=ostpay;
	t=1695212116; bh=iCxvv2YIp+jfWP10O4bav/gIx9uIXCkocURGz/mY4Kc=;
	h=Date:From:To:Cc:Subject;
	b=ZN8nBwk+WGn9mCPr+FB9gRAQ/x3gEJ/oIixYLBSBTg2jcZHDFh22K7VfoZXN9Z62a
	 Zfmi9EJcDvYJN+u5CCU1JYjGLskV/uU8/5QHoN70x+52zDhOhjAraomEC4x/Pi5ioU
	 SXQVX/5e+BRDGlFOgkoROypYuEY/3SmtUjwmLLkU=
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbrang.isc.org 47ED9A2260A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=isc.org;
	s=05DFB016-56A2-11EB-AEC0-15368D323330; t=1695212116;
	bh=UEmmoUqgug+o2PMNz2W3WynB3jOVqVQsII2w7vIIVOU=;
	h=Date:From:To:Message-ID:MIME-Version;
	b=MzNygx4938MgLA7cuM2zt7U7oMPftUNSut5JqY/DVumh8LivLdOg8RMlPVFSkPTPy
	 U+CARdIYRRhYK1QBPXW1ILk7UUAxQrrSaFgjtCe91pMg+L9mhZd+mWxczyE+rUXRU4
	 Kb7uQNXH4BAOQGyUAFgd/7vF7IOctbTdCm8ipL4Y=
Date: Wed, 20 Sep 2023 14:15:10 +0200
From: =?utf-8?B?TWljaGHFgiBLxJlwaWXFhA==?= <michal@isc.org>
To: oss-security@lists.openwall.com
Cc: security-officer@isc.org
Message-ID: <ZQriTiZWE_r8Mkpe@larwa.hq.kempniu.pl>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] ISC has disclosed two vulnerabilities in BIND 9 (CVE-2023-3341,
 CVE-2023-4236)

On 20 September 2023 we (Internet Systems Consortium) disclosed two vulnera=
bilities affecting our BIND 9 software:

- CVE-2023-3341:        A stack exhaustion flaw in control channel code may=
 cause named to terminate unexpectedly https://kb.isc.org/docs/cve-2023-3341
- CVE-2023-4236:        named may terminate unexpectedly under high DNS-ove=
r-TLS query load https://kb.isc.org/docs/cve-2023-4236

New versions of BIND 9 are available from https://www.isc.org/downloads

Operators and package maintainers who prefer to apply patches selectively c=
an find individual vulnerability-specific patches in the "patches" subdirec=
tory of each published release directory:

- https://downloads.isc.org/isc/bind9/9.16.44/patches/
- https://downloads.isc.org/isc/bind9/9.18.19/patches/
- https://downloads.isc.org/isc/bind9/9.19.17/patches/

With the public announcement of these vulnerabilities, the embargo period i=
s ended and any updated software packages that have been prepared may be re=
leased.

--=20
Best regards,
Micha=C5=82 K=C4=99pie=C5=84
