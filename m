Received: (qmail 20336 invoked by uid 550); 20 May 2026 13:57:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 29942 invoked from network); 20 May 2026 13:10:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=powerdns.com; h=
	cc:content-transfer-encoding:content-type:content-type:date:from
	:from:message-id:mime-version:reply-to:subject:subject:to:to; s=
	s1dus; bh=mu6+We8+wjlhdZ1czczcdalFM0MOr0EfdqrZm/VOFuc=; b=AZGB88
	YgEhYyD4ymEkjoK/Rz8JLVDk1tBXwVqboB35CoGjsuRHY/U67G3Ip7QAMCqSgp1n
	L2d80LinvvC1Ax05+qS2hteY2JyQymlExnituJFDx+fUgkHn/DDRwHQ16vEy4nPn
	/+2phpUEkMkksfj0Rr4VHWvCv/PHmH90HYhEV3JYpnZOun03aE+sb2cUL7U/sZnd
	vJloyMNkfzM8nzmjX9j6VUir3XxmGzNpzcjDGiItndOAGwGg/h2DffoRtVla9mja
	SRJY/4h4XcL3X63w3LuPCoXzUBrj3FW6ljangK9pARrJjpuNGKLZ20VRe69/0gvS
	VU1rOdEhpgYrGymg==
Message-ID: <4b16a206-f0eb-47d8-a793-50878f9c66c8@powerdns.com>
Date: Wed, 20 May 2026 15:10:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Miod Vallat <miod.vallat@powerdns.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: [oss-security] PowerDNS Security Advisory 2026-06: Multiple Issues

Today, we are releasing two new versions of the PowerDNS Authoritative
Server. These 4.9.15 and 5.0.5 versions provide fixes for the following
PowerDNS Security Advisory:
   * [1]PowerDNS Security Advisory 2026-06: Multiple Issues

The security issues being fixed with these releases are low or
medium-severity, and most of them involve specific backends and/or
configurations. They are:
   * CVE-2026-41999 (only concerns 5.0.x) When using views, queries sent
     using TCP Proxy Protocol will select the view according to the
     address of the proxy, rather than the address of the initial query.
     This can lead to wrong data being returned.
   * CVE-2026-42000 Missing escaping of special characters (such as $ or
     @) in DNS names received during an AXFR operation can lead to an
     incorrect (non-parseable) Bind backend configuration to be written,
     causing this backend to fail until manual operation is performed to
     fix the configuration.
   * CVE-2026-42001 Missing sanity checks of the answer to the initial
     SOA query, when running in autosecondary mode and receiving a
     notification for an not-yet-known domain may cause the server to
     crash.
   * CVE-2026-42002 Multiple concurrency and locking defects in the
     GSS-TSIG code can lead to memory corruption due to accidental data
     structure sharing, which can in turn lead to a program crash.
     Moreover, the lack of bounds on the number of in-flight GSS-TSIG
     contexts can lead to unbounded memory consumption in case of an
     excessive number of requests at a given time. A limit of 1000
     contexts is now enforced, and can be modified with the
     “gss-max-contexts” parameter in server configuration.
   * CVE-2026-42396 Missing proper escaping of double-quote characters
     when computing labels will cause AXFR of a catalog zone with a
     member whose producer group option contains such a character to
     fail.

Please make sure to read the [2]Upgrade Notes before upgrading.

The tarballs ([3]4.9.15, [4]5.0.5) and their signatures ([5]4.9.15,
[6]5.0.5) are available at [7]downloads.powerdns.com. Packages for
various distributions are available from [8]repo.powerdns.com.

Please send us all feedback and issues you might have via the
[9]mailing list, or in case of a bug, via [10]GitHub.

References

1. 
https://doc.powerdns.com/authoritative/security-advisories/powerdns-advisory-2026-06.html
2. https://doc.powerdns.com/authoritative/upgrading.html
3. https://downloads.powerdns.com/releases/pdns-4.9.15.tar.bz2
4. https://downloads.powerdns.com/releases/pdns-5.0.5.tar.bz2
5. https://downloads.powerdns.com/releases/pdns-4.9.15.tar.bz2.sig
6. https://downloads.powerdns.com/releases/pdns-5.0.5.tar.bz2.sig
7. https://downloads.powerdns.com/releases/
8. https://repo.powerdns.com/
9. https://mailman.powerdns.com/mailman/listinfo/pdns-users
10. https://github.com/PowerDNS/pdns/issues/new/choose

