Received: (qmail 17565 invoked by uid 550); 21 May 2026 19:14:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32340 invoked from network); 21 May 2026 18:55:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1779389701;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=VOMMcPsHJ3mc5lnskLOVbCbTh7KXqUVpIjVvccOUdV8=;
	b=dDmHBgVuyrbbUTGupJqdlpXHHq5kmA2c6LrNZVnCzXeDmWZ+RWENI5nMkoIdPB2aFSDwt5
	ZsVV5mFWM/vTEL/yTDwWz/X3nLckxgVDVN0Xu/uqTByn/kM2Z52wHytrnBYpOr1ZVvb2kS
	WRK0BVL0ldXJuIoQ1fu7pZWJ1X4pDPKd/r4skvAC0WXSTrt8n43B+vz9AcG3SXLh6FFeom
	p/3OGBrv3jTyeYccdOWUbZMzEUfeeju21dq638jyVe3Md+N4LikXKHmQcme93lUihMpZ8X
	UFmEJ2PRQiJouQoACucDsDbZFHpmviScQRH5e0ylV9xI0xEDRgMiRBykoO75Ag==
Message-ID: <5e7fd02a-6893-4eaa-ac05-2a56a6926ca2@cpansec.org>
Date: Thu, 21 May 2026 19:55:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Robert Rothenberg <rrwo@cpansec.org>
Content-Language: en-GB, en-ZA
To: cve-announce@security.metacpan.org, oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-GND-Sasl: rrwo@cpansec.org
X-GND-Cause: dmFkZTGqB/w3RL4pSbIQhvQu4mvM3Tqd7EUFyXKSX6s/3j4+BxohX+wko/Tt/w5YCQdV5/tkfj5Ghnq50mrnMuRNsJOfzTjh4DMFPYVkAa5Ttds1t363ZMgGPEyWo4y0XJnU1IwLsvM+e7xWVW+BTW7lsb4exYkLw9t2M5bYyjizWFl3x6pLPUth7VnsDhu1gEvSBzg7yksw1RFmIUEgEp8IcGGQO9KdKhHp/M44Ycanq1KoKRD2DcfGrW4F5CnI51Kpn+QhOGHGTe8bhr8h8M3gj4TeLHX3Rp5J2eME2HQS/7Y368BUNLJVqfkdq/cqblswcdAO3bOd7Aj1COUbMsbfu2SaTNi/IKS0LMh3a7LzCH7/Be2iUtMJYBRlKLll/0zTQCJXufYl968tWUAcyQGkJw4Cf7S4z7qZmv3nILq8OZyWRDkdB9NyEsKUwfTiUp/TDX/EdTWVArlVtykyAnfuJEKkYD2jJ82RFbppl658RmUIb8kzpk6i9KMwGMOaeBymxjZLWE5LgM3rU7zouWcTdL45wef6SsiMQAHlSkSIQflVlnnTNDMpwn+EvlIa+DA0GWnAaENphnXC7+BecWttktVQ55w9avhwDifbqz/lXy8skaJ+AkXpLaFgaIVhtjJlSyceb+ZWCtg/ljRttSM60eWv08MShBSKX6C92pYDcuSSzw
X-GND-State: clean
X-GND-Score: 0
Subject: [oss-security] CVE-2026-46473: Authen::TOTP versions before 0.1.1 for Perl generate
 secrets using rand

========================================================================
CVE-2026-46473                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-46473
   Distribution:  Authen-TOTP
       Versions:  before 0.1.1

       MetaCPAN:  https://metacpan.org/dist/Authen-TOTP
       VCS Repo:  https://github.com/tchatzi/Authen-TOTP


Authen::TOTP versions before 0.1.1 for Perl generate secrets using rand

Description
-----------
Authen::TOTP versions before 0.1.1 for Perl generate secrets using
rand.

Secrets were generated using Perl's built-in rand function, which is
predictable and unsuitable for security usage.

Problem types
-------------
- CWE-331 Insufficient Entropy

Solutions
---------
Upgrade to version 0.1.1 or later.


References
----------
https://metacpan.org/release/TCHATZI/Authen-TOTP-0.1.1/changes
https://github.com/tchatzi/Authen-TOTP/commit/d04f30cc6538d77fc6b6d550da450cf3017b8561.patch



