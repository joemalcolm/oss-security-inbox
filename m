Received: (qmail 12100 invoked by uid 550); 17 May 2026 19:54:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17731 invoked from network); 17 May 2026 18:44:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1779043479;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=AZ3946EqKg/1dioAKNX/Bcz0QhuKvHBOcKRfZZbS3o0=;
	b=dV/bXSPSQcgK7pKnBs4Ep0lTuHceTBR7R3vs+8RSrqE8V1oNmyH0O3vYMVI+TCXHPmw15A
	/cryTwOFGp4mThFXINYMK97THlz8seATD0Y23hdG74uM/WGxHZuKLB24AeQe9JPLQXlNEI
	LwzZ6iluIK+R82F+XecnIULhqHG+y0xFq0KxvqMPjsgxS8IWyF5STotfcmw3LsOfYRRi/9
	PQBd5uqkf24pw4U6e7bCRS9EgWS4CwW3fezRDKHztvNfa2rasUQnB2q+cjKdTMv2D9bO5I
	TxVsKEpyBXkU9orQvqPg9LfmOPJGvk57hHRU6T/DZxUBF0BQsVnNzGKzR7D0Gg==
MIME-Version: 1.0
Date: Sun, 17 May 2026 15:44:39 -0300
From: Timothy Legge <timlegge@cpansec.org>
To: Cve Announce <cve-announce@security.metacpan.org>, Oss Security
 <oss-security@lists.openwall.com>
Message-ID: <755ef91e2e9d25d89cd37fc6879de83d@cpansec.org>
X-Sender: timlegge@cpansec.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
X-GND-Sasl: timlegge@cpansec.org
X-GND-State: clean
X-GND-Score: -100
X-GND-Cause: dmFkZTGq9qquRuL5PzA5JX02jaxAFnw3WHPevyxZFDWlya317mUXOW8kV2zTDk9XjMqPpv+Sht2WjWJdUcTTh4m+ZU2gRelVedIvWOG2PDNyk5hnvVPVjP1kZxRudrWi41QhjOnYY+xqCsawdOIOXCNQPXgg/nK6UWt8ac/MZD+6Tcl6LTDQ8QyevaWSGLLk6X2Aq0Mmws7UpbQ4wInkfdclZ+HUzvz6qQ+QDMCuxT9romOh5ty9AAdDvZTu3nONIug/HEhoZldQ3ZsuXuZjHiRfC8rixrm2ivsn+rNAYscjZiPE62jDImbH8v7IOOfU/LJFsOEq/y3RKr0B5rbNYpb6f5GFhAQCRH4vpS/+VfRC8MNsWZlOC3wOmSur4xItrzr0SA+K4eBAH5e+pogN/l2YKp0O1XYmXt457ZgyE5LY8rBn1LC9ceGSanvEkZ0tPrCHDHeHOBUL3eJYFF04bLY09EuMwoYiYMw8CsaxRiC72NV/MyxsLrBaFBTfMy3fG0D8rVFh2g6C+54JQLpGgaZ0sNgIlZsd1bgK9tXma5GDpSdr+3mz0cKjoC0iulSTktzM0LWc3WGb4GZZW4zVXMZHGlAgb15S5Ud143VnPT4m1t5sK3NO+4HyrUBuaPMY4RhKo03VKIMNmdBd5180619w9mojPypZZWB66Qcbboi4QaM+ww
Subject: [oss-security] CVE-2026-8507: Crypt::OpenSSL::PKCS12 versions through 1.94 for Perl
 have out of bound (OOB) write flaws

========================================================================
CVE-2026-8507                                        CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-8507
   Distribution:  Crypt-OpenSSL-PKCS12
       Versions:  through 1.94

       MetaCPAN:  https://metacpan.org/dist/Crypt-OpenSSL-PKCS12
       VCS Repo:  https://github.com/dsully/perl-crypt-openssl-pkcs12


Crypt::OpenSSL::PKCS12 versions through 1.94 for Perl have out of bound
(OOB) write flaws

Description
-----------
Crypt::OpenSSL::PKCS12 versions through 1.94 for Perl have out of bound
(OOB) write flaws.

When parsing a PKCS12 file, with a >= 1 GiB OCTET STRING (or BIT
STRING) attribute on a SAFEBAG, via info() or info_as_hash(), a
heap-OOB-WRITE would be triggered which could have Remote Code
Execution (RCE) potential.

Problem types
-------------
- CWE-787 Out-of-bounds Write

Workarounds
-----------
Do not parse untrusted PKCS12 files via info or info_as_hash.


Solutions
---------
Upgrade to 1.95 or later.


References
----------
https://metacpan.org/release/JONASBN/Crypt-OpenSSL-PKCS12-1.95/view/Changes.md
https://github.com/dsully/perl-crypt-openssl-pkcs12/issues/55
https://github.com/dsully/perl-crypt-openssl-pkcs12/issues/56
https://github.com/dsully/perl-crypt-openssl-pkcs12/commit/b9d0469c6d8f5b5c6c2a45a3d0647a532b749397.patch

Timeline
--------
- 2026-05-13: Issue discovered
- 2026-05-16: Contacted maintainer with the details
- 2026-05-17: Issue disclosed in Github incident
- 2026-05-17: Patched version released by maintainer
