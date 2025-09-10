Received: (qmail 32629 invoked by uid 550); 10 Sep 2025 19:08:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23757 invoked from network); 10 Sep 2025 15:13:57 -0000
ARC-Filter: OpenARC Filter v1.0.0 mx.pao1.isc.org 05F544D075A
Authentication-Results: mx.pao1.isc.org; arc=none smtp.remote-ip=149.20.2.90
ARC-Seal: i=1; a=rsa-sha256; d=isc.org; s=ostpay; t=1757517227; cv=none; b=J8RRpggozXM6fawMPi4sk7nlRFV8ng6c99lz7jJJX9TR2sihJDF09b193WafzD+rFNt3Iwgt+S2Meh1ypNyJPiNAZ7sGHclv9qERvrqx3wGcSXcskt/piq4rKkHbvsMwaRW22WqRagMARdIrJ8Uq990Uu7I1pg3huq7hqmbelpI=
ARC-Message-Signature: i=1; a=rsa-sha256; d=isc.org; s=ostpay; t=1757517227;
	c=relaxed/relaxed; bh=0tfwoqPltCFRlFnSSKf+KRxFYRkSq0Gpgnukkou1/OE=;
	h=DKIM-Signature:DKIM-Signature:Date:From:To:Message-ID:Subject:
	 MIME-Version; b=qrmCxM8+lz4085OBcKjCY7Fuztmf88f8g6xV071qRpzHEQE7TC8ifsMNKqb0hkojxejSR1AFlXLKudnU3jPNmYvwwrFg3oEL2UdefQgD/zIeHwai1msLyFlFVL36Xyrrn6zAyZvskzt1e8IAnHWiUVlMV52Yjem0qEWBZdQEJiQ=
ARC-Authentication-Results: i=1; mx.pao1.isc.org
DKIM-Filter: OpenDKIM Filter v2.10.3 mx.pao1.isc.org 05F544D075A
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=isc.org; s=ostpay;
	t=1757517227; bh=GfwMNLoWIRM6jZYTBU6NX2C+xTgJfPTOTfEJZyns0PY=;
	h=Date:From:To:Cc:Subject;
	b=ZRhGtyFZvSSLl19hws3uf1sNTCG+Nx4U7b619QuITGD6CggELhrPMGqrMEN0xSJM0
	 N3KCfP6G1/FjMSVZ00hIIkt6fDmxG5a3oPFa5rvW/2Q1HSoCTiXaDdl9hZUedQ93Y8
	 ptLwpZZ+TAGdBtJnZ/fGJeVgxwzUW1hjZ9XWc0bg=
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra10.isc.org E212E2E600A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=isc.org;
	s=05DFB016-56A2-11EB-AEC0-15368D323330; t=1757517226;
	bh=0tfwoqPltCFRlFnSSKf+KRxFYRkSq0Gpgnukkou1/OE=;
	h=Date:From:To:Message-ID:MIME-Version;
	b=Wufy0rwKO/K9rgEvjlz0Ve+bCLcAyh08vrTBRRd8+OWrYnWWlaOEbkGnT6ndQ5XIy
	 oKopzSZSLnp+KxGEbiKbo1GS/PMMpILO2DRlDp4PjVBVIKAt/rBrZZQCRGYbZLGFAa
	 /ybVUHad6l/9xlo51kzS0angJZiYXRnG3XZIO/mY=
Date: Wed, 10 Sep 2025 15:13:46 +0000 (UTC)
From: Ben Scott <bscott@isc.org>
To: oss-security@lists.openwall.com
Cc: security-officer@isc.org
Message-ID: <1232558782.642728.1757517226656.JavaMail.zimbra@isc.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [50.187.20.181]
X-Mailer: Zimbra 10.1.10_GA_4785 (ZimbraWebClient - FF142 (Linux)/10.1.10_GA_4785)
Thread-Index: eYsWAPH1Zqj0PJgCSgNuCytt83djPw==
Thread-Topic: ISC has disclosed one vulnerability in Stork (CVE-2025-8696)
Subject: [oss-security] ISC has disclosed one vulnerability in Stork (CVE-2025-8696)


On 10 September 2025 we (Internet Systems Consortium) disclosed one vulnerability affecting our Stork software:

- CVE-2025-8696:        DoS attack against the Stork UI from an unauthorized user https://kb.isc.org/docs/cve-2025-8696

New version(s) of Stork are available at the following URL(s):

Stable: https://downloads.isc.org/isc/stork/2.2.1/

With the public announcement of these vulnerabilities, the embargo period is ended and any updated software packages that have been prepared may be released.

Please note that CVE-2025-8696 also affects the current Stork development version, 2.3.0. Anyone who has Stork 2.3.0 deployed is advised to employ mitigations until 2.3.1 is released, currently planned for October 6, 2025.

-- 
Ben Scott 
Support Engineer
Internet Systems Consortium
