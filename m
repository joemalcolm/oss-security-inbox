Received: (qmail 11716 invoked by uid 550); 29 Apr 2026 00:15:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 31868 invoked from network); 28 Apr 2026 23:53:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1777420390;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=rO1UdDCufYG5318WzHoqz7ROA7mN+Xnswz9TnlKWJdM=;
	b=Ji7EjgMIX72FmJ1937U2vhgxe+7PD6FcjOlLmQDMdPDOL/DtT/1WEJv8O3N73iJG6iXIas
	hUwcXqO0/vdg7GOssnXxKFx2CfSyUuJFUl6ljxSn0um0NEg6Rml+Qmf1aLpiVpN4Y+DR2p
	bdOGesf7qH0C2bZLnK/8YpMFdBF7JvzP8+LPRrO9zsinCVNFptZx93kWqck+DTlwZ6JgcC
	5jlu6onXBheY7w5yOuJu7SrA7rW7/Prdo5VyjUPYeeEb04yigGzrx3TZWGlPWBeuKxfBti
	/5wbQwslsbXlBzcENgpcXTPSG/ojRKaskQHVFwzSBbDfQUOZh2/5BVvE+V5aKw==
MIME-Version: 1.0
Date: Tue, 28 Apr 2026 20:53:09 -0300
From: Timothy Legge <timlegge@cpansec.org>
To: Cve Announce <cve-announce@security.metacpan.org>, Oss Security
 <oss-security@lists.openwall.com>
Message-ID: <2aff9aefaaf12148bbfd43af480ab8f4@cpansec.org>
X-Sender: timlegge@cpansec.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
X-GND-Sasl: timlegge@cpansec.org
X-GND-Cause: dmFkZTGsQYGKqNl8N1ypTUtA2huk/H/OCurz1g4QD4jQ3Ad6dJTZ+FAwCty78Ua08WXUqjej+v9A0g0b17bmWtHNIqHDXTph00AObVZVvoRTDO68LPDp2k0AkBERYvMKnWlaiTIhbf7oiSvQEYdM7eTyXTz6B1yPhdefme/ykVT3OEGSSBxP8cUahRB99jYm9CHXNc3nBLTWE2iKo8H3t2jFg18pfTdDtdTZx3rjgkSoU38rP5XqdSCzDyk5Fpu7L/rzEoij3Oki7fOgBA+C7jzCNNmKD2QEKtaw4+Wn/6pY6tSLfm44omLHc41/HGN6wWoNJ17V9uZQMxQVSqZd3jGh3pwsUVEF5bxu+sGZ/S8P66FI6MTHwJr0RMy/b2Xa8FkQ3zy9Vh0ufjqIzc2r8khv33QdmhrtqOFddz0Z/HdmReJ+Rwt59abuz2r6NjsGBcvsBaI/hCtmT7zj2MFTMLbg0c2ubnoJHGlrWrMx/GoSWoaTfRpeJhk/txgTe4APNaWFJ+Y44CdC7b4dQrGqzAtjkMClDyNTy7dNxh9eU+Nj6+FZnCwYjU3jP/+Low05cFGint8jIZmksOWK5G3zj9CYcHQjbNoAyJxJNw1NVf7OT8PPreBD+sYHHN+3TqQ1yV9wd9fgKTDlmtmbgWvIPsIf3uJWBZa/qeWDxEPEgYpveOu3eg
X-GND-State: clean
X-GND-Score: -100
Subject: [oss-security] CVE-2026-40560: Starman versions before 0.4018 for Perl allows HTTP
 Request Smuggling via Improper Header Precedence

========================================================================
CVE-2026-40560                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-40560
   Distribution:  Starman
       Versions:  before 0.4018

       MetaCPAN:  https://metacpan.org/dist/Starman
       VCS Repo:  https://github.com/miyagawa/Starman


Starman versions before 0.4018 for Perl allows HTTP Request Smuggling
via Improper Header Precedence

Description
-----------
Starman versions before 0.4018 for Perl allows HTTP Request Smuggling
via Improper Header Precedence.

Starman incorrectly prioritizes "Content-Length" over
"Transfer-Encoding: chunked" when both headers are present in an HTTP
request. Per RFC 7230 3.3.3, Transfer-Encoding must take precedence.

An attacker could exploit this to smuggle malicious HTTP requests via a
front-end reverse proxy.

Problem types
-------------
- CWE-444 Inconsistent Interpretation of HTTP Requests ('HTTP
   Request/Response Smuggling')

Solutions
---------
Upgrade to version 0.4018


References
----------
https://github.com/miyagawa/Starman/commit/ced205f0805027e9d9c0731f8c40b104220604ed.patch
https://metacpan.org/release/MIYAGAWA/Starman-0.4018/changes
https://datatracker.ietf.org/doc/html/rfc7230#section-3.3.3

Timeline
--------
- 2027-04-12: Issue identified by CPANSec
- 2027-04-27: Issue reported to software maintainer
- 2027-04-27: Fix committed to public Github repository
- 2027-04-27: Updated version uploaded to CPAN

Credits
-------
CPANSec, finder
