Received: (qmail 1488 invoked by uid 550); 21 Jan 2026 16:14:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3263 invoked from network); 21 Jan 2026 14:39:38 -0000
ARC-Filter: OpenARC Filter v1.0.0 mx.pao1.isc.org 6BDA84E52A0
Authentication-Results: mx.pao1.isc.org; arc=none smtp.remote-ip=149.20.2.90
ARC-Seal: i=1; a=rsa-sha256; d=isc.org; s=ostpay; t=1769006368; cv=none; b=pmSz4SZ/m15f+juKMHXWb9jOeT5TSLWzXt6tGnmTfgj5YDbIF6R5NqkLgcTRCVAaffKQo/queg8EM/Ta3b2UqLLAJoqfdT7jaLErvTwi9AA8uIUHdCdLkbsrgF++4eXP2DuW26W3GGvYo2qiI94MmL5U8OggvYGoRYSrYSNCn+0=
ARC-Message-Signature: i=1; a=rsa-sha256; d=isc.org; s=ostpay; t=1769006368;
	c=relaxed/relaxed; bh=1Q3hA8Ukl+jZCCLSo/5ynUQSafXjFCHZ9fF8gcgiX24=;
	h=DKIM-Signature:DKIM-Signature:Date:From:To:Subject:Message-ID:
	 MIME-Version; b=Fg8WNAUHmacQIsBj1FrnD73REur/GK9gnB0J44pW2iXNe9iwlr+MQVhp4ZUZbWWk8QFLrc8zSEV0qOIbioUv14GJu+6FZxy+f0RYPHlIhiLdZrwrPtg2e5A5w6No1bvu6oe0Xbf4J78SY9nwF+ULFJa5Hgxo8WQ/n7iQCiqxR8o=
ARC-Authentication-Results: i=1; mx.pao1.isc.org
DKIM-Filter: OpenDKIM Filter v2.10.3 mx.pao1.isc.org 6BDA84E52A0
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=isc.org; s=ostpay;
	t=1769006368; bh=BblHHIhNYr3//lycBOU3IqzSCcGsM2Q+IXZBszjl6Y0=;
	h=Date:From:To:Cc:Subject;
	b=GmiYbh6jGW3gKp7xkrywjShofbrGypVYKMd8+euqHTEwHludZqdfDRXi2TTV5Okf6
	 2imvpixXZ/IO1yjI6HKTm3+u+qGQL7kCB0qX91of+J9Y8hZpOqvYnhvIgmtLjmiyke
	 M+bi7shzvQaYeQ9SSVeK5exv1fGuMpSZe9dOqgjQ=
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra10.isc.org 59D712E602C8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=isc.org;
	s=05DFB016-56A2-11EB-AEC0-15368D323330; t=1769006368;
	bh=1Q3hA8Ukl+jZCCLSo/5ynUQSafXjFCHZ9fF8gcgiX24=;
	h=Date:From:To:Message-ID:MIME-Version;
	b=WYLflruSSRdLOrp+lwC01mRgQmetpWs0S+/fc19pE2rWnQLbGqySn3vuRgvu536bG
	 EIOKSrDsgdqj/0fcH5rh7tG+mWvDo/mX5GGQcQBIxn+ceUJKORQS40w1cLId+4bwa7
	 e+26bKNSyH4W3QMxZ+L5Sx9179LunJG+jQUIPCu4=
Date: Wed, 21 Jan 2026 15:39:23 +0100
From: =?utf-8?B?TWljaGHFgiBLxJlwaWXFhA==?= <michal@isc.org>
To: oss-security@lists.openwall.com
Cc: security-officer@isc.org
Message-ID: <aXDlG898Su9X3Wbc@larwa.hq.kempniu.pl>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Subject: [oss-security] ISC has disclosed one vulnerability in BIND 9 (CVE-2025-13878)

On 21 January 2026, Internet Systems Consortium disclosed one vulnerability affecting our BIND 9 software:

- CVE-2025-13878:       Malformed BRID/HHIT records can cause named to terminate unexpectedly https://kb.isc.org/docs/cve-2025-13878

New versions of BIND 9 are available:

- https://downloads.isc.org/isc/bind9/9.18.44/
- https://downloads.isc.org/isc/bind9/9.20.18/
- https://downloads.isc.org/isc/bind9/9.21.17/

Operators and package maintainers who prefer to apply patches selectively can find individual vulnerability-specific patches in the "patches" subdirectory of each above directory.

For more information and other release formats, consult the ISC software download page: https://www.isc.org/download/

With the public announcement of these vulnerabilities, the embargo period is ended and any updated software packages that have been prepared may be released.

-- 
Best regards,
Michał Kępień
