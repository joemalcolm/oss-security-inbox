Received: (qmail 27905 invoked by uid 550); 21 Jun 2023 17:14:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16163 invoked from network); 21 Jun 2023 16:12:45 -0000
ARC-Filter: OpenARC Filter v1.0.0 mx.pao1.isc.org 838013AB021
Authentication-Results: mx.pao1.isc.org; arc=none smtp.remote-ip=149.20.2.31
ARC-Seal: i=1; a=rsa-sha256; d=isc.org; s=ostpay; t=1687363952; cv=none; b=CZU21mYErLyIaD9meSnJiyPEo4cax3RIQqqqMj0szPHMiLTVgoKkT3P925PSa5cO0XMqd673kPbxREtUu7DzUhNbjcZ4i/PM8j4bV4pOR/ArMYvv3TlH+o2DYPMSYN+L6lxuI7Vj9lMd+bs4DZfCl8d9w67Jp3AzczqgQ8aSYCI=
ARC-Message-Signature: i=1; a=rsa-sha256; d=isc.org; s=ostpay; t=1687363952;
	c=relaxed/relaxed; bh=67zGdt4MiDUAeKo1/3YA1pD1uZk3fzrTPckpzFdlKYw=;
	h=DKIM-Signature:DKIM-Signature:Date:From:To:Subject:Message-ID:
	 MIME-Version; b=IMI0VmTmG5+qmS0jtB0qW7M8XSX8eASBYo/QwZwD6HgiIhHYfpKj3Sbumuthh6FdrSAgYixZEOmesvMXKCm5hN1bHbvbf0LGM642GKXGS3vp/XXV+ITTWta5NXf5HGOVea7MfoghVvz56FRYXkCzCoFSegQsLeVUOxEznKCh2uI=
ARC-Authentication-Results: i=1; mx.pao1.isc.org
DKIM-Filter: OpenDKIM Filter v2.10.3 mx.pao1.isc.org 838013AB021
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=isc.org; s=ostpay;
	t=1687363952; bh=XDaEtFZWxYUreOZLV/vdy1RvAR8jnXJ1Yg/wCvtd3Fs=;
	h=Date:From:To:Cc:Subject;
	b=bF2YN/0rzeFmtSWL85BI4ZpTLDqT9oGZJ8tOIUhs40zVD3l/k2GE+ptaPPJ4q8gIo
	 SSybFY/UnZBjjt5LIOZnG6nznQ1rW7Ni+N5jxzu3LBed3GPTk6vKFex+YSfEhhx+sM
	 /+ybiQye5d6m6vYr+Cr0LY6jtlO3ifXW77qijHoU=
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbrang.isc.org 5147E984F9A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=isc.org;
	s=05DFB016-56A2-11EB-AEC0-15368D323330; t=1687363952;
	bh=67zGdt4MiDUAeKo1/3YA1pD1uZk3fzrTPckpzFdlKYw=;
	h=Date:From:To:Message-ID:MIME-Version;
	b=oFSivsS//nDf0x/R/XdQHuPYuVRqRm49wHDyjHeef8BYzk/KK0XeU1qPs1RoDqnxm
	 FT9m1iXHJci+aVa8RIrYz7P3kW0cgCuWjMOFRSEED4OzfjIwvcRSyXOHBSusX5PyVN
	 QfLva9636O3heXJarwbidjgc2XIKzWu+oB6CtR88=
Date: Wed, 21 Jun 2023 18:12:26 +0200
From: =?utf-8?B?TWljaGHFgiBLxJlwaWXFhA==?= <michal@isc.org>
To: oss-security@lists.openwall.com
Cc: security-officer@isc.org
Message-ID: <ZJMhapAB3v_6YLmg@larwa.hq.kempniu.pl>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] ISC has disclosed two vulnerabilities in BIND 9 (CVE-2023-2828,
 CVE-2023-2911)

On 21 June 2023 we (Internet Systems Consortium) disclosed two vulnerabilit=
ies affecting our BIND 9 software:

- CVE-2023-2828:        named's configured cache size limit can be signific=
antly exceeded https://kb.isc.org/docs/cve-2023-2828
- CVE-2023-2911:        Exceeding the recursive-clients quota may cause nam=
ed to terminate unexpectedly when stale-answer-client-timeout is set to 0 h=
ttps://kb.isc.org/docs/cve-2023-2911

New versions of BIND 9 are available from https://www.isc.org/downloads

Operators and package maintainers who prefer to apply patches selectively c=
an find individual vulnerability-specific patches in the "patches" subdirec=
tory of each published release directory:

- https://downloads.isc.org/isc/bind9/9.16.42/patches/
- https://downloads.isc.org/isc/bind9/9.18.16/patches/
- https://downloads.isc.org/isc/bind9/9.19.14/patches/

With the public announcement of these vulnerabilities, the embargo period i=
s ended and any updated software packages that have been prepared may be re=
leased.

--=20
Best regards,
Micha=C5=82 K=C4=99pie=C5=84
