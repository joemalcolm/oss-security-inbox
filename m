Received: (qmail 16158 invoked by uid 550); 20 May 2026 13:56:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19622 invoked from network); 20 May 2026 13:01:41 -0000
ARC-Filter: OpenARC Filter v1.0.0 mx.pao1.isc.org 544E54E40B3
Authentication-Results: mx.pao1.isc.org; arc=none smtp.remote-ip=149.20.2.90
ARC-Seal: i=1; a=rsa-sha256; d=isc.org; s=ostpay; t=1779282091; cv=none; b=I8ke5MyJBAfcpIrphG0BmCc93dyZltSVcq24eqmFnsPmCOFx5++5MOcUl7Swwm8Jew7MlBiEps+oUdIWXdLA1B2XX7E6T3p30NGRCgxvLS/xKNewLzt2Nb3a7K+jVYNsZjLVHHZ6sRFaTjG5DHLJtN1QNvBtVv0XDYONJy/+too=
ARC-Message-Signature: i=1; a=rsa-sha256; d=isc.org; s=ostpay; t=1779282091;
	c=relaxed/relaxed; bh=+c2lCMcu0xe9XBH1j59UISAoCR4O9L8Q5msMhoi+bUk=;
	h=DKIM-Signature:DKIM-Signature:Date:From:To:Subject:Message-ID:
	 MIME-Version; b=lIVK/DOAhTPKkLwNxJXwj0I8Z9tAbENXATk7cDnmKqMY5H9tMSgYjh/g3lgavbhFPCugPHEb8sOhf8ysbrPZhMrH82pKe7R4uEdMnFIrqY3FLC1THQ4OaDoJx13DwFkuqoU1QhrMYvnIAUtT98MFgGdfH1CRaNdGUMY6v7CfpC0=
ARC-Authentication-Results: i=1; mx.pao1.isc.org
DKIM-Filter: OpenDKIM Filter v2.10.3 mx.pao1.isc.org 544E54E40B3
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=isc.org; s=ostpay;
	t=1779282091; bh=JzgU7qNPcH+34kSnY00qbKJasNx9qPNzqOgBK0zZrvE=;
	h=Date:From:To:Cc:Subject;
	b=cKngWmFe2aPpd1AP0oWrjs6WUTkwQF5igXFH34ti/ojwJJPkxXNQ++jCB/myO0Jpt
	 4K2Iw6fvd8ZMOa57QhS2cpc71M3gmTynqc5gRiWrpsKqZCyoPgYRR6q/A2a2g5gAdl
	 RaTce6ZYmm7Fw2S0cH+RooawIZMVf0XqF5OVObDk=
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra10.isc.org 3B0CD2E60076
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=isc.org;
	s=05DFB016-56A2-11EB-AEC0-15368D323330; t=1779282091;
	bh=+c2lCMcu0xe9XBH1j59UISAoCR4O9L8Q5msMhoi+bUk=;
	h=Date:From:To:Message-ID:MIME-Version;
	b=jOJlJfA6eF5IToNSSm/UhrUL5KYD34CkuWhWrdxMX7NUVeVcxr2Jb06SXN74F0C5Y
	 EEVPQd0NrynEDaHDVh9vGsJkQ/eHqNAfbXSa4Gf68POyHvb9l0Sdfs3z+rFJA9IP8J
	 2GkvpR5salf8RZGMFcVq01OUEFp+d1GgHFO4DgmY=
Date: Wed, 20 May 2026 15:01:25 +0200
From: =?utf-8?B?TWljaGHFgiBLxJlwaWXFhA==?= <michal@isc.org>
To: oss-security@lists.openwall.com
Cc: security-officer@isc.org
Message-ID: <ag2wpSF3iv7iKeRO@larwa.hq.kempniu.pl>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Subject: [oss-security] ISC has disclosed six vulnerabilities in BIND 9 (CVE-2026-3039,
 CVE-2026-3592, CVE-2026-3593, CVE-2026-5946, CVE-2026-5947, CVE-2026-5950)

On 20 May 2026, Internet Systems Consortium disclosed six vulnerabilities affecting our BIND 9 software:

- CVE-2026-3039:        BIND 9 server memory exhaustion during GSS-API TKEY negotiation https://kb.isc.org/docs/cve-2026-3039
- CVE-2026-3592:        Amplification vulnerabilities via self-pointed glue records https://kb.isc.org/docs/cve-2026-3592
- CVE-2026-3593:        Heap use-after-free vulnerability in BIND 9 DNS-over-HTTPS implementation https://kb.isc.org/docs/cve-2026-3593
- CVE-2026-5946:        Invalid handling of CLASS != IN https://kb.isc.org/docs/cve-2026-5946
- CVE-2026-5947:        SIG(0) validation during query flood may lead to undefined behavior https://kb.isc.org/docs/cve-2026-5947
- CVE-2026-5950:        Unbounded resend loop in BIND 9 resolver https://kb.isc.org/docs/cve-2026-5950

New versions of BIND 9 are available:

- https://downloads.isc.org/isc/bind9/9.18.49/
- https://downloads.isc.org/isc/bind9/9.20.23/
- https://downloads.isc.org/isc/bind9/9.21.22/

For more information and other release formats, consult the ISC software download page: https://www.isc.org/download/

With the public announcement of these vulnerabilities, the embargo period is ended and any updated software packages that have been prepared may be released.

-- 
Best regards,
Michał Kępień
