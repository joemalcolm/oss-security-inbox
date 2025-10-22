Received: (qmail 17559 invoked by uid 550); 22 Oct 2025 15:54:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18297 invoked from network); 22 Oct 2025 15:21:44 -0000
ARC-Filter: OpenARC Filter v1.0.0 mx.pao1.isc.org BCE054D078A
Authentication-Results: mx.pao1.isc.org; arc=none smtp.remote-ip=149.20.2.90
ARC-Seal: i=1; a=rsa-sha256; d=isc.org; s=ostpay; t=1761146493; cv=none; b=UWTlnckFxy/Q3ap7FN4+qMlIodvFbpmWo5YDZMxQX1xqvmZHZQHehkZeTEJF00g+hdDH6qyzoEDv5GH37doBLbJ7AVvXxQVp1jn6liDBPxKJJWRnw55qiTNSte3Vp38vI1Zpw9RMVHn69AsMaunFzGDKQbZXNH0oVxAgzXP6Ujw=
ARC-Message-Signature: i=1; a=rsa-sha256; d=isc.org; s=ostpay; t=1761146493;
	c=relaxed/relaxed; bh=UvyASZu+xVByUzOKwK9VnDhX1ZaxW6WkFLXMZo2Fibs=;
	h=DKIM-Signature:DKIM-Signature:Date:From:To:Subject:Message-ID:
	 MIME-Version; b=XFX7WW5HJ+Ln1EFriqya/JoGaFj7wVXze15bNOIwlLit6DulY9W8OBCW1b6BvneW9hkubPpBPLstx1v4jGdSNRU4xtFUFOM5ta4P0a3+Q8EkA6dinkfRR1rRfK6l1N4GcFXAdLeuM3bk7qVuf2Id4flm6NpE9K5MnXWcIMsFFa8=
ARC-Authentication-Results: i=1; mx.pao1.isc.org
DKIM-Filter: OpenDKIM Filter v2.10.3 mx.pao1.isc.org BCE054D078A
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=isc.org; s=ostpay;
	t=1761146493; bh=i+XyrcIMRbzlX0tSXdPjRetTq90a/NeELCHNVswKdlU=;
	h=Date:From:To:Cc:Subject;
	b=fHUrSKKm1d19Kbh4WIDTyt3uaNYERcAjT77IhjLIgm79vlXchYfVydeL17dLx0D7Q
	 ekMv61Y1rpc5lHHC/icnsSTAc20g/Bznzstg9cK2ux7VIHfQpgnOna5vITgKu1yXBY
	 r5qH4YzB+mDdNXT9HZvtDstMMcytPZtLre9T6qO4=
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra10.isc.org A5EE32E601D2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=isc.org;
	s=05DFB016-56A2-11EB-AEC0-15368D323330; t=1761146493;
	bh=UvyASZu+xVByUzOKwK9VnDhX1ZaxW6WkFLXMZo2Fibs=;
	h=Date:From:To:Message-ID:MIME-Version;
	b=bFzmaq2LAYHTz0QIVaaaqKMQQlfSCXCd1dDZ9YgECilMIL62ewr6G3JIf+ROcZZpm
	 U8HR/IUN9a2B/z95spqw5P+v6l/zi8WPOFQqmOyRV7Zm+loCe3y8kOLL+TSPbQYnwo
	 vgc3Bd7xPVEbCUMp0QGMQAWKNUMUXL0vnfWvFa8M=
Date: Wed, 22 Oct 2025 17:21:29 +0200
From: =?utf-8?B?TWljaGHFgiBLxJlwaWXFhA==?= <michal@isc.org>
To: oss-security@lists.openwall.com
Cc: security-officer@isc.org
Message-ID: <aPj2effljuW4V1rA@larwa.hq.kempniu.pl>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Subject: [oss-security] ISC has disclosed three vulnerabilities in BIND 9 (CVE-2025-8677,
 CVE-2025-40778, CVE-2025-40780)

On 22 October 2025 we (Internet Systems Consortium) disclosed three vulnerabilities affecting our BIND 9 software:

- CVE-2025-8677:        Resource exhaustion via malformed DNSKEY handling https://kb.isc.org/docs/cve-2025-8677
- CVE-2025-40778:       Cache poisoning attacks with unsolicited RRs https://kb.isc.org/docs/cve-2025-40778
- CVE-2025-40780:       Cache poisoning due to weak PRNG https://kb.isc.org/docs/cve-2025-40780

New versions of BIND 9 are available from https://www.isc.org/downloads

Operators and package maintainers who prefer to apply patches selectively can find individual vulnerability-specific patches in the "patches" subdirectory of each published release directory:

- https://downloads.isc.org/isc/bind9/9.18.41/patches/
- https://downloads.isc.org/isc/bind9/9.20.15/patches/
- https://downloads.isc.org/isc/bind9/9.21.14/patches/

With the public announcement of these vulnerabilities, the embargo period is ended and any updated software packages that have been prepared may be released.

-- 
Best regards,
Michał Kępień
