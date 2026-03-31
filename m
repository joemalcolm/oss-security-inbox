Received: (qmail 21777 invoked by uid 550); 31 Mar 2026 16:35:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9962 invoked from network); 31 Mar 2026 11:36:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1774956950;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=l2QRT+IfMkW0NchDnMueDX+mZt1XzZMIQTx4neCtK6s=;
	b=BWDKJhO3XF/Q2R3eJ89gv0Lst6lv2h1Nf8R+XB7nt2veReFnMPR7RSitoKyMmqdrByvX2w
	gL55I/SFS2TREZVLOxyUZaIVagix5Z6NiESAO1DpcFClWp9wwy2To4GXbI+G08TywhkSUH
	7nIY+qZ0TRs3CSnReiJADNz8nWVNmSpen2mfHt1LQm2Q4B9RPwEPZhIuf/b/trgFuKkZev
	Jo0WNwTY2XIzqSCeEQFiLBjAv1bJkhEhNc8fgGwHXn8Aq9xmV0EdmFJ7lnQwIw5JUNUx/Y
	9uWQGmj7g7Weuh3u61hlT3CBqk2+lTg1k5O9yqBeyazNyRteOK9H3ORD9VCqbg==
Message-ID: <637c6490-f8cf-42d7-8799-bbe0de4136ea@cpansec.org>
Date: Tue, 31 Mar 2026 12:35:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB, en-ZA
References: <39915ea0-a83f-429c-8cff-62c38b73ce5c@cpansec.org>
From: Robert Rothenberg <rrwo@cpansec.org>
To: oss-security@lists.openwall.com
In-Reply-To: <39915ea0-a83f-429c-8cff-62c38b73ce5c@cpansec.org>
X-Forwarded-Message-Id: <39915ea0-a83f-429c-8cff-62c38b73ce5c@cpansec.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-GND-Sasl: rrwo@cpansec.org
X-GND-State: clean
X-GND-Score: 0
X-GND-Cause: dmFkZTFg0k3dYb5XdUNZgUE69VHVa77Zmy8nHKtPkukVktCNvuqlyndi5v5ogG+ByPHRztOxAAtxyafWOhai6VbPhTmGdpNfgU8WotmzhitmoIP/5ajVhlnu6IKcO8qwymH4xoxGFWeO/7/6eqhZKLjliL4FDrW3ppS6ZT1Se0W0vRtz0FQQr0ahz/S6KCPaQaXKeR4kVG2MkwxX0auwMTNs7qZEQcp4DhfZPlnPgBPux3Ke9Vzh8wg3qoUHnavvC+HJ7TBSi+rFhCNQpSm1meWUv17luSOX+yPbztM6pH85T8zVZwSHDJdsYge89v+b0ivbZoGnHlTLdg2/AwYZyPq++ZMHr4tntrXXvAbv+Gwr+gLZpEIvBzWWOuygakMug/e37Wxud5G/XEFFV8GkX2V5OO0zSkG2oHR+h8LLRS3tLYfr3TWlZMpEtWE+MWaXkdsgdg2X/mnYXBiPUsrffO8WHG2vzM9fUOzRoHnLb2vyHtT771AtaRw60R6lkA0/RQCLNO4XOh0/qxYc1H9m3WEY24NFYOqiIixkWTmXONjQUb6nvAlirfuHuwQvP6JV4iUAL639+f4xOX/dlIyF/ELoMx2xKTxT4hUYssI+Ng3/sl//TGBaNloyt54KxXzAWr2qmhtdqyJkMqiFdljLhcKEXcfP0UjNwuwQngbMY+Y+Ei0trw
Subject: [oss-security] CVE-2024-14031: Sereal::Encoder versions from 4.000 through 4.009_002
 for Perl is vulnerable to a buffer overwrite flaw in the Zstandard library

========================================================================
CVE-2024-14031                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2024-14031
   Distribution:  Sereal-Encoder
       Versions:  from 4.000 through 4.009_002

       MetaCPAN:  https://metacpan.org/dist/Sereal-Encoder
       VCS Repo:  https://github.com/Sereal/Sereal


Sereal::Encoder versions from 4.000 through 4.009_002 for Perl is
vulnerable to a buffer overwrite flaw in the Zstandard library

Description
-----------
Sereal::Encoder versions from 4.000 through 4.009_002 for Perl is
vulnerable to a buffer overwrite flaw in the Zstandard library.

Sereal::Encoder embeds a version of the Zstandard (zstd) library that
is vulnerable to CVE-2019-11922.  This is a race condition in the
one-pass compression functions of Zstandard prior to version 1.3.8
could allow an attacker to write bytes out of bounds if an output
buffer smaller than the recommended size was used.

Problem types
-------------
- CWE-1395 Dependency on Vulnerable Third-Party Component

Solutions
---------
Upgrade to Sereal::Encoder version 4.010 or later.


References
----------
https://github.com/advisories/GHSA-w77f-wv46-4vcx
https://www.cve.org/CVERecord?id=CVE-2019-11922
https://metacpan.org/release/YVES/Sereal-Encoder-4.010/changes

Timeline
--------
- 2017-02-06: Sereal::Encoder version 4.001_001 released.
- 2028-12-27: Zstandard 1.3.8 released.
- 2019-07-25: CVE-2019-11922 for Zstandard published
- 2020-02-04: Sereal::Encoder version 4.010 released.
- 2023-02-09: Advisory added to the CPANSA database.
- 2024-02-17: Advisory updated in the CPANSA database.



