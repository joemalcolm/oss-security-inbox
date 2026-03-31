Received: (qmail 23972 invoked by uid 550); 31 Mar 2026 16:35:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 14206 invoked from network); 31 Mar 2026 11:36:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1774956984;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Tds6UfgJfyDC0ngIPxxBHs2jbx2E/CIvljJUUi9iqow=;
	b=RESdzmtqZVwJazZa0t1Gt+fVeKMbN/CuvKCgQCjC1npiqWBDMbNexnBRXaPvbCaAT4WXco
	5GyUuBtNUrMG3IEIj2gTiK9tCW3kFSY1B8o1ZCYygvHjGJLc4IELHD6BwdkNWGttli6GpT
	FVxQK6Y6vJeltoWqNEbqRMrA3yOcg8X32oJo4A37VcKBP8pgivUurdcVeUPJ+BgDgn6q6E
	u21FFXV+OPrma+MDwa2AyAXhoV0LYaF6IxzufOMC2InRIcXNuokRCG0w3XwRG5ceRKogoI
	oDBfoG1qYF3A7wqubYDL72MuKA34f3XrufrEo16LziS3iQm97gBfAyhDtkE81g==
Message-ID: <e4d08601-6d5e-4130-a2f1-178c5ef94a0b@cpansec.org>
Date: Tue, 31 Mar 2026 12:36:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB, en-ZA
References: <9d859d29-9d7e-4460-998a-10634a8f04ee@cpansec.org>
From: Robert Rothenberg <rrwo@cpansec.org>
To: oss-security@lists.openwall.com
In-Reply-To: <9d859d29-9d7e-4460-998a-10634a8f04ee@cpansec.org>
X-Forwarded-Message-Id: <9d859d29-9d7e-4460-998a-10634a8f04ee@cpansec.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-GND-Sasl: rrwo@cpansec.org
X-GND-Cause: dmFkZTFg0k3dYb5XdUNZgUE69VHVa77Zmy8nHKtPkukVktCNvuqlyndi5v5ogG+ByPHRztOxAAtxyafWOhai6VbPhTmGdpNfgU8WotmzhitmoIP/5ajVhlnu6IKcO8qwymH4xoxGFWeO/7/6eqhZKLjliL4FDrW3ppS6ZT1Se0W0vRtz0FQQr0ahz/S6KCPaQaXKeR4kVG2MkwxX0auwMTNs7qZEQcp4DhfZPlnPgBPux3Ke9Vzh8wg3qoUHnavvC+HJ7TBSi+rFhCNQpSm1meWUv17luSOX+yPbztM6pH85T8zVZwSHDJdsYge89v+b0ivbZoGnHlTLdg2/AwYZyPq++ZMHmSM96gayPm2r19wKe5NFd0Pw8Nen31EjOpknKtVQk0P+UWQO6k+7GdgL4yhtrnVcFNKoez80qCtBVnDNQmW8pL7HJoYwFox89CLjm/1TEFDJZ6wrpLu4mIlRaHDzvqmZVhlLb3EgjxF/C3sw+NgkJT0RCRbPJNHCnppnLKAia4EjsrElhOw6CD9qJkRmorRhTfN94l63H8SzpLXTCzFwF2rfe2mXKgpAmnQTtoNnqyvk9DoMwCAseC15Wx0jtsQvsGK7y8zhdAOlD8xmHChoxN3+Z0CTz/S7Vz7wXxfUWKzh5U0+IktpfbB4cY3XAX6bnSIe9yfdloFU9i4ypZxKLw
X-GND-State: clean
X-GND-Score: 0
Subject: [oss-security] CVE-2024-14030: Sereal::Decoder versions from 4.000 through 4.009_002
 for Perl is vulnerable to a buffer overwrite flaw in the Zstandard library

=======================================================================
CVE-2024-14030                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2024-14030
   Distribution:  Sereal-Decoder
       Versions:  from 4.000 through 4.009_002

       MetaCPAN:  https://metacpan.org/dist/Sereal-Decoder
       VCS Repo:  https://github.com/Sereal/Sereal


Sereal::Decoder versions from 4.000 through 4.009_002 for Perl is
vulnerable to a buffer overwrite flaw in the Zstandard library

Description
-----------
Sereal::Decoder versions from 4.000 through 4.009_002 for Perl is
vulnerable to a buffer overwrite flaw in the Zstandard library.

Sereal::Decoder embeds a version of the Zstandard (zstd) library that
is vulnerable to CVE-2019-11922.  This is a race condition in the
one-pass compression functions of Zstandard prior to version 1.3.8
could allow an attacker to write bytes out of bounds if an output
buffer smaller than the recommended size was used.

Problem types
-------------
- CWE-1395 Dependency on Vulnerable Third-Party Component

Solutions
---------
Upgrade to Sereal::Decoder version 4.010 or later.


References
----------
https://github.com/advisories/GHSA-w77f-wv46-4vcx
https://www.cve.org/CVERecord?id=CVE-2019-11922
https://metacpan.org/release/YVES/Sereal-Decoder-4.010/changes

Timeline
--------
- 2017-02-06: Sereal::Decoder version 4.001_001 released.
- 2028-12-27: Zstandard 1.3.8 released.
- 2019-07-25: CVE-2019-11922 for Zstandard published
- 2020-02-04: Sereal::Decoder version 4.010 released.
- 2023-02-09: Advisory added to the CPANSA database.
- 2024-02-17: Advisory updated in the CPANSA database.



