Received: (qmail 13732 invoked by uid 550); 17 May 2026 19:54:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7956 invoked from network); 17 May 2026 18:50:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1779043847;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=fTxul90MIPxU7xuyHqX+YmYGW+v3v5tdBt1M4aKClCw=;
	b=jBlzy33pa8I4EFgOui88LgqupqwJohT1FJW+BR/yKKC5i3MsP+jroSqNPH/rC3AUjecQ76
	XnlhIGoF2H6kPuEtci0/TO1tjWJq9jqitjWwbVy0qY3RAyR+dVafexOG4WYXFn1Tkg8cdY
	yApDo/JNOfeGCi0esU2KDT/iNdfsTyaU0j+qDvdOA/i8sgaf+NLfe9PNllwz/DXwbTzFog
	2YOjnQb3XwL/C9n//Z/NxQcxfChIkBQ2TE7coVPA9ac10uPE8YFkmuuZAbRrRyyrlpyXaL
	mlLeF0wswiFRXtPkbRuKs6k6fsyaem1aL5YSueGm10LDZRBhmoJLgmbBN+FIlw==
MIME-Version: 1.0
Date: Sun, 17 May 2026 15:50:47 -0300
From: Timothy Legge <timlegge@cpansec.org>
To: Cve Announce <cve-announce@security.metacpan.org>, Oss Security
 <oss-security@lists.openwall.com>
Message-ID: <804e09e7d8f96e8f3f16bc1c0c5b1fe2@cpansec.org>
X-Sender: timlegge@cpansec.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
X-GND-Sasl: timlegge@cpansec.org
X-GND-State: clean
X-GND-Score: -100
X-GND-Cause: dmFkZTGDiIZmUoUPYJJwrdaeiUljckAlfYMyxk4QEkSl7UNkbg+L5YZ3X4rcthRVIzvVb4EeJ5JL4OOtC7zfm5lGxII1Q/ZW6xtW6IENEP/ZCnfndAUJK4QmOQxr+P8trbtFiCZ+y+Dqk0aKrlMb830Y/HnE1ToSb96sTm33YTKmD8QDCnRiTKyuAq3PXpE999LfNWONsS+aJwjR2zaerOKvIbCyTaGKbcsqp4gGSvjfwQyvlgYFmecobA6W7LrQrwqkQPL8WLGHQFV80IXaCRFWb6MEu9iw9BRd2rXvAPk/0KYrP2k7bDv/6KDOIyR8+wqHyiMIZCkdunuv7bJDVto6q+muVcLeDNairBfUGxiIOP7KuZGmMw+JSDsc2iR0IzrEeIqpDdkFxK52kzRb9obJqoEZNsnXLl9twMQHf+WEVgAe98T1eWRar5oLFoNxhA6BJQ0N47b5jx3TU0+9kkMxQAbw+R02rUQurPWEkBu/rRyRzYLc18FZ5UXoFEwcd8G1WbjvlSh08SHtivOaOtjp5GH3iWjybZE7oMorfnypWPuPubctY/b7haA5w0KZGAzhM6VL5acLOe/osYGkUXICq/cGA2YZaBWIsJbdD7ciy0IhtGoFWZn/TMj++9e3hnfLDvPoNVpCtPAY0HH01YCDTO0gdxKlZX6EG9xEIWBmdX9szA
Subject: [oss-security] CVE-2026-8721: Crypt::OpenSSL::PKCS12 versions through 1.94 for Perl
 truncates passwords with embedded NULLs

========================================================================
CVE-2026-8721                                        CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-8721
   Distribution:  Crypt-OpenSSL-PKCS12
       Versions:  through 1.94

       MetaCPAN:  https://metacpan.org/dist/Crypt-OpenSSL-PKCS12
       VCS Repo:  https://github.com/dsully/perl-crypt-openssl-pkcs12


Crypt::OpenSSL::PKCS12 versions through 1.94 for Perl truncates
passwords with embedded NULLs

Description
-----------
Crypt::OpenSSL::PKCS12 versions through 1.94 for Perl truncates
passwords with embedded NULLs.

Password parameters in PKCS12.xs are declared char *, which routes
through Perl's default typemap to SvPV_nolen.  The Perl length is
discarded.

The C code (or OpenSSL internally) calls strlen() on the buffer.  Any
password byte at or after the first NULL is silently dropped. Binary /
KDF-derived / HMAC-derived passwords lose entropy without any warnings.

Problem types
-------------
- CWE-170 Improper Null Termination

Solutions
---------
Upgrade to 1.95 or later.


References
----------
https://metacpan.org/release/JONASBN/Crypt-OpenSSL-PKCS12-1.95/view/Changes.md

Timeline
--------
- 2026-05-13: CPANSec identified issue
- 2026-05-13: Author was notified
- 2026-05-17: Maintainer released patch version
