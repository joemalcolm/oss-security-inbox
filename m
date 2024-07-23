Received: (qmail 17801 invoked by uid 550); 23 Jul 2024 14:56:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15910 invoked from network); 23 Jul 2024 13:59:18 -0000
ARC-Filter: OpenARC Filter v1.0.0 mx.pao1.isc.org 8E8FD3AB275
Authentication-Results: mx.pao1.isc.org; arc=none smtp.remote-ip=149.20.2.31
ARC-Seal: i=1; a=rsa-sha256; d=isc.org; s=ostpay; t=1721743148; cv=none; b=Gn8P27zM+Ms/4xoZ93bJPMZvgqEcS2dlOxDP4AjrYYyLmFYueo81YKVQgwnJrps1O81GnsA0KqEt6Z/7MzJUjbpuTl7R2bFiHn2mcWixCZjaJIQzBpg7yAj/N2KHzpRGew5xjBVmEay9GKW7TIat/WLlwFxI09J3htcWqC9MFIg=
ARC-Message-Signature: i=1; a=rsa-sha256; d=isc.org; s=ostpay; t=1721743148;
	c=relaxed/relaxed; bh=//s9tFWi9tjRRBMGofR//qtX5qOyX1dxx/SwSCSVio4=;
	h=DKIM-Signature:DKIM-Signature:Date:From:To:Message-ID:Subject:
	 MIME-Version; b=EAQMIdNYK+eCAt8+JYO9X9pv+wdhJXSeQ9n8ziRWBnNug4xkp2pTgdeoDA4g41Q2wOlkSk+flVsHz8AzcXuTnpxKmUop57VQUj2W53vuCp/EbyOBdNJYKpvfVBlvfiYokgWLn/ZfVZi4VWe1T07Eu3gE5bz4hVafD1vDfHVYf/8=
ARC-Authentication-Results: i=1; mx.pao1.isc.org
DKIM-Filter: OpenDKIM Filter v2.10.3 mx.pao1.isc.org 8E8FD3AB275
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=isc.org; s=ostpay;
	t=1721743148; bh=8QnJlOYJJKQAYb7vnKM7QULw/u8uHzLBiYhNIN3JZ94=;
	h=Date:From:To:Cc:Subject;
	b=AH3TVhe/7dhLAtfLHFZHvCMeo/XWsKXi1rNnjtuNnn0NBGTgQrngr/3Jl3fLZWIGF
	 umwS9rRHcCT62r1ccJA2GStxBj7ir9RzvstHoZVm22aqE5zKRamMn9x5j6bMtAUCyH
	 QqY+AU3MRVGAI1ZIYAA5gS8IWTMLpj2M1pA0Izjk=
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbrang.isc.org 60E75E64607
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=isc.org;
	s=05DFB016-56A2-11EB-AEC0-15368D323330; t=1721743148;
	bh=//s9tFWi9tjRRBMGofR//qtX5qOyX1dxx/SwSCSVio4=;
	h=Date:From:To:Message-ID:MIME-Version;
	b=jLFkkJEolmmf/QpSqLst8Qd1W25FBXpDil9zaEn1tSjn9s6ds+Uqj6asE0MuXdBMl
	 ++oAI8Zx5LaCD7JhFVQnVrBETx7SuqI0h4/oMRENPSMLEP+JIWfU4XreoJ4nHsXhm8
	 OnmXpZaAZl1svSYLUEAIOqLarO8gAvXgOz1duFmA=
Date: Tue, 23 Jul 2024 13:59:07 +0000 (UTC)
From: Aram Sargsyan <aram@isc.org>
To: oss-security@lists.openwall.com
Cc: security-officer@isc.org
Message-ID: <2129473434.508234.1721743147880.JavaMail.zimbra@isc.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [149.20.2.31]
X-Mailer: Zimbra 9.0.0_GA_4612 (ZimbraWebClient - FF128 (Linux)/9.0.0_GA_4612)
Thread-Index: JD9DE4HOiTiZqdjZh295DI/KQ8Zi6g==
Thread-Topic: ISC has disclosed four vulnerabilities in BIND 9 (CVE-2024-0760, CVE-2024-1737, CVE-2024-1975, CVE-2024-4076)
Subject: [oss-security] ISC has disclosed four vulnerabilities in BIND 9 (CVE-2024-0760,
 CVE-2024-1737, CVE-2024-1975, CVE-2024-4076)

On 23 July 2024 we (Internet Systems Consortium) disclosed four vulnerabilities affecting our BIND 9 software:

- CVE-2024-0760:        A flood of DNS messages over TCP may make the server unstable https://kb.isc.org/docs/cve-2024-0760
- CVE-2024-1737:        BIND's database will be slow if a very large number of RRs exist at the same name https://kb.isc.org/docs/cve-2024-1737
- CVE-2024-1975:        SIG(0) can be used to exhaust CPU resources https://kb.isc.org/docs/cve-2024-1975
- CVE-2024-4076:        Assertion failure when serving both stale cache data and authoritative zone content https://kb.isc.org/docs/cve-2024-4076

New versions of BIND 9 are available from https://www.isc.org/downloads

Operators and package maintainers who prefer to apply patches selectively can find individual vulnerability-specific patches in the "patches" subdirectory of each published release directory:

- https://downloads.isc.org/isc/bind9/9.18.28/patches/

With the public announcement of these vulnerabilities, the embargo period is ended and any updated software packages that have been prepared may be released.
