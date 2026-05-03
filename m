Received: (qmail 3439 invoked by uid 550); 3 May 2026 00:59:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 29832 invoked from network); 3 May 2026 00:58:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1777769897;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=+eL2AmKoLFzS0SSJXVFkaVqzb+wK7Lg3y76S1Y9oTcU=;
	b=XukrHBQQuAQ93U23/aUtP0HuBpGZrWuKRFFkQtpoleqQcR8h8EQJqq90eGW2KtGqQL9n4I
	gbddxhVOCElSa6zJuFbhVRfOaYmqYDncsmMkbNf95S1WpPrsEqA2gCs5koE24ptCA0SAbp
	kfcRfCmI+yFnWHqQoW7AEnbrZQBxk6SyqBEo9b4itNkpT2v5SFfDll3T+uhSNOgEobkrHV
	QiBlZF3ItW/IlhqC+ffiI3ASOOiAKNjGK6n4OvtjpZ74OLapcMtfMxnnIy38qCpfQyKTzB
	FfxbqRyjX5j/tB1W2xfUUJjjShLISR3vsNI7MxtcNZ8NkcC0G90DA5l3BnRsPQ==
MIME-Version: 1.0
Date: Sat, 02 May 2026 21:58:17 -0300
From: Timothy Legge <timlegge@cpansec.org>
To: Cve Announce <cve-announce@security.metacpan.org>, Oss Security
 <oss-security@lists.openwall.com>
Message-ID: <10082513d5e5a74bb60932ea9550e909@cpansec.org>
X-Sender: timlegge@cpansec.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
X-GND-Sasl: timlegge@cpansec.org
X-GND-State: clean
X-GND-Score: -100
X-GND-Cause: dmFkZTGshT+YwmRwKtpOZKB/9GadlHwun0jCiFAYq6S/d7ntq9GfRCgeHWfzOrpf3v0b7vsKg3GO14hlx0SZr72M/Qrxj14fewOjs8qUmNCF4xGqA/ozSdwI/sLFY56UcNaar5jrh73IbUOx9YqC03WudCQEpxAljIelN+X2B5ajOY2lOZRqfQqm+KFiXJThiNezRQFhO+8V/bdSo0K61i0gqMe8Qth4LNi+fl9xDwVACW7v9rlPhx/L6/GrEJu9DbDp3T+ZJ+rsr6BZ6lmTjYS/RZ9Qtd0q9eHmd8uOycSPBfN6VKxiMJcM4Wzl02hQIVpmhRXRNFL4OWSE2XuIk9FlAQJgcC2gaizdDblanlQ/QBHSVIS/bzeij/JbvzZtLYgMprfHZk94Slr+gjHcloCQKfx4SlWH+vGcAhE1e2EgCNiRoUMwxISQwt68FjftjC5l60yq14e2BTIDQY2KTRdeReZeZCP1gD+RKE9FloE7V2BWzUth3ITgb8pYrSeyBpfiQJMa24s0rUy107HsyLe30rcqy9F1/O6QO5vaJKLNhRoQQrZqw/SkU6C60eVVckWsfiY4UwPACHNmfeiVvhlvi46SUjfXEIN/aym9Ai6j0wC82+3eDYhS3RX1Z/tOPExWUo5cIeC1pBGhqTAoR2bYhJKrUO7uAT2ljhJRZF1xMOJsXg
Subject: [oss-security] CVE-2026-40561: Starlet versions through 0.31 for Perl allows HTTP
 Request Smuggling via Improper Header Precedence

========================================================================
CVE-2026-40561                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-40561
   Distribution:  Starlet
       Versions:  through 0.31

       MetaCPAN:  https://metacpan.org/dist/Starlet
       VCS Repo:  https://github.com/kazuho/Starlet


Starlet versions through 0.31 for Perl allows HTTP Request Smuggling
via Improper Header Precedence

Description
-----------
Starlet versions through 0.31 for Perl allows HTTP Request Smuggling
via Improper Header Precedence.

Starlet incorrectly prioritizes "Content-Length" over
"Transfer-Encoding: chunked" when both headers are present in an HTTP
request. Per RFC 7230 3.3.3, Transfer-Encoding must take precedence.

An attacker could exploit this to smuggle malicious HTTP requests via a
front-end reverse proxy.

Problem types
-------------
- CWE-444 Inconsistent Interpretation of HTTP Requests ('HTTP
   Request/Response Smuggling')

Workarounds
-----------
Migrate to Starman 0.4018 or later which has fixed this issue or apply
the patch.


References
----------
https://datatracker.ietf.org/doc/html/rfc7230#section-3.3.3
https://github.com/kazuho/Starlet/commit/a7d5dfd1862aafa43e5eaca0fdb6acf4cc15b2d0.patch

Timeline
--------
- 2026-04-12: Issue identified
- 2026-04-28: Maintainer notified
- 2026-05-02: Determined that the issue was already public on GitHub

Credits
-------
CPANSec, finder
