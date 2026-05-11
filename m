Received: (qmail 3776 invoked by uid 550); 11 May 2026 19:16:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1130 invoked from network); 11 May 2026 19:14:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1778526871;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=KJaKtuu9PvMvgEfVS8JA831CTboNJs1FZkX5/UYOpjg=;
	b=dDmKkhFSABdwMXuNGSLQIZguDvc5q2WOTglkzfc3mMeZ/84qLFyIjz2mYcVD+ftP3Nchcd
	E6nc5BMk0YKjTwkv2dfWDZt8fknGbMs7nixX3hkfpbHtZgEkcS2w6s3wCEWTcc+bzIGh7+
	uQ6Po9T3svKvy6YpPE3g2CTpJG0tz2OV2LlDCv8si6rhpc538WhKRfoB1bh51pCux/znRR
	nejSMdFRTRSInlHKGHBF+96R5WnV7xKfVrQAs2aUFZ6a+iy6rvMzf51GErE4GzOpL/JIIl
	A0/LdDiLVYuIZLq9xtAi91uQYd4aRCDrBCrL3WD9O/YMBSPJHxSEiL88+4b5Mg==
Message-ID: <f6b35102-dba7-47f6-8a26-64866ba35f13@cpansec.org>
Date: Mon, 11 May 2026 20:14:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Robert Rothenberg <rrwo@cpansec.org>
Content-Language: en-GB, en-ZA
To: cve-announce@security.metacpan.org, oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-GND-Sasl: rrwo@cpansec.org
X-GND-State: clean
X-GND-Score: 0
X-GND-Cause: dmFkZTFmYrTmVF4sz/mV0k1ilGE1oe8ZZOF8ZEhPf4I/ZBaCcMI17AAmafr95zyNBAFrm+Znh0iJaliyscbtDFnsv2xC/XKAz2bsC1lpmch/+o1OqxFW3WRjqRJbCX65PBk6wrG1Qxe9xIRF4fgOKvJWOMWb9Gr495RdYGwM+C5/IyvT20Hp6Qw/7eXXxAQiyA/EE/wLi2ID9fHw1C6M+/3gg1iLQ8z6M/S5DEnvpJRVonMKD7PicWhUn1DwLiO2yocOr/maUqVUD6rPva8+0oHPDRzOhK2qlq9W61764kMLR5qu6ccqPKS8KOaM81RgwJV11Z7T3VQlPNnEJeG5HfYeGmA+cSmIPRbrm/AF4Xn4Wc8w8yZNaxJhsVfHXwR1B7YClvjJzJQ/BKliHshO0UTUgImDwqAEsVE6kXdv35GeoAzsK8KHQLVRPkNUbRjBP6UIqXff5ruy1hbBveT8l1iigABeW47M4IlS3QeLXnZy6KtVo16IUjiaT5+lx9bbkJCoO+oVEaNS86pVpCZ3UpRjuQogZbC53RHjKxphQ3HMlPfnozJbEK4ZR9lDoSUbUb3Qt/rlazFWBtzBcT2oUQxjX3LqCIwfe0G8Sy/7DlTnMFo/+Afw/VpuAh3hUBlcv4zfrU3pLb8byGbVMF+NJI/8md7ihyUUXPjtnZuSVtUl00vtOg
Subject: [oss-security] CVE-2026-6146: Amazon::Credentials versions through 1.2.0 for Perl
 uses rand to generate encryption keys


========================================================================
CVE-2026-6146                                        CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-6146
   Distribution:  Amazon-Credentials
       Versions:  through 1.2.0

       MetaCPAN:  https://metacpan.org/dist/Amazon-Credentials
       VCS Repo:  https://github.com/rlauer6/Amazon-Credentials


Amazon::Credentials versions through 1.2.0 for Perl uses rand to
generate encryption keys

Description
-----------
Amazon::Credentials versions through 1.2.0 for Perl uses rand to
generate encryption keys.

Amazon::Credentials stores credentials in an obfuscated form to prevent
access to the secrets from a data dump of the object.

Before version 1.3.0, the secrets were encrypted using a 64-bit key
that was generated using the built-in rand function, which is
predictable and unsuitable for cryptography.

Problem types
-------------
- CWE-338 Use of Cryptographically Weak Pseudo-Random Number Generator
   (PRNG)

Solutions
---------
Upgrade to version 1.3.0 or later.


References
----------
https://metacpan.org/release/BIGFOOT/Amazon-Credentials-1.2.0/source/lib/Amazon/Credentials.pm#L1415-1418
https://metacpan.org/release/BIGFOOT/Amazon-Credentials-1.3.0/changes



