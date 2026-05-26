Received: (qmail 5772 invoked by uid 550); 26 May 2026 23:49:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11732 invoked from network); 26 May 2026 22:49:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1779835786;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Ui/eFzjBUWBAWj8OePjVEB3FpqCTHW+nN2fFv5OwHTc=;
	b=StEUdvQs7SY5fIxWlbzLd08xQaos5xSIDSTOLJ5StBYf3WLH5x5uSHttNX6kzwsvkoIj+c
	p0zNci2nrNvHKaq2GXvz4eEzwgVnCtpGDIndgo0y5U5u7KKQWzQ0jSsrGyqypPgz0T4jc5
	Zn4FF0zoarYFmZZ9Bd1IU1sFYpP0hjMoZOpSRCs+wCCS1UYpdeewsJDXK4GMo+KlE7Wx//
	/fq/fUMU4r3yuS0LDU23c26oM6lkIssHYRKQHbzskPakXpuLbMdd6KMxmIiJNnAX9VVXg7
	W4zrhuouWHS7YNBDdh3z7RW5FJ4IpdwUv2vuxe1yu2nn+uON4jze6zHjZT1K4Q==
Message-ID: <3474d514-d316-49bc-adad-5d1ec4deb970@cpansec.org>
Date: Tue, 26 May 2026 23:49:45 +0100
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
X-GND-Cause: dmFkZTFIQy+D82bRigV1ywzSEFPBTZOjoPHfd2BZrBqyhhRsWhZ+XMYHF8UvK3HgEaIX7CFDNga2u/uGdyU3luPIBq+SnUk70ovWfbNrcvzakFZhNkQjPGWtp+7tx+c46q5iqseXj51aQK0/f8GFZf1qIsy8F45/aDOqj3tnYeMVc4kLynGnabi0WuNEUcm2OYiOJLCtKYZsdHbqNiujvuniP3rywx+NoIWfW91Fj0Z8/rTQpPnGxJJO+uftQb3Cm6IeC/f7bty9nCGM6RguK6ocHxy6gsrkKI6cOAC7k4cAo0+N6mcFwvgT3XgmPYThvDAJZZHQldLtCY+jbYfGM0EwQL8YENSiyGcs6rMYz+XG0JKbEnI+SDbt1V7lbY+tDy3AmB7cnL1fgfiZ0cTMeBMhUZRSNwsXqv9p1u9myRepUDu3bm7yJmck6sSDQAuGzykX9ts7HKc7sVVb/qf57L+ntzjzhPaa98+SY5s9FFCsAQsOocqk/HsMd+tGPBfawjhOLqaCYP2HoBhNq9GnOx99IXSYF5f7vkn5VSkohcLrN0N303fCHIG/aapC3pW6FatRu7ilklNXGKQQ7r9jxxYynqFKwTetedcF2DzSPmL/mEeDNOmPx8ypZWv+ly8aGKGS3vphseIeRgO+KTYxwHnF2JWpSlbFW7tRXG87hgNJeWEm9g
Subject: [oss-security] CVE-2026-46740: Mojolicious::Plugin::Statsd versions through 0.04 for
 Perl allowed metric injections

========================================================================
CVE-2026-46740                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-46740
   Distribution:  Mojolicious-Plugin-Statsd
       Versions:  through 0.04

       MetaCPAN: https://metacpan.org/dist/Mojolicious-Plugin-Statsd
       VCS Repo: https://github.com/robrwo/perl-Mojolicious-Plugin-Statsd


Mojolicious::Plugin::Statsd versions through 0.04 for Perl allowed
metric injections

Description
-----------
Mojolicious::Plugin::Statsd versions through 0.04 for Perl allowed
metric injections.

The metric names and set values were not checked for newlines, colons
or pipes. Metrics generated from untrusted sources could inject
additional statsd metrics.

Version 0.06 changes the module from being a statsd client to using a
separate statsd client. It defaults to using a version of
Net::Statsd::Tiny that fixes a similar issue (CVE-2026-46720).

Problem types
-------------
- CWE-93 Improper Neutralization of CRLF Sequences

Solutions
---------
Upgrade to Mojolicious::Plugin::Statsd version 0.06 or later.


References
----------
https://metacpan.org/release/RRWO/Mojolicious-Plugin-Statsd-0.06/changes
https://github.com/robrwo/perl-Mojolicious-Plugin-Statsd/commit/f049156982a2c0b8050f173e24a04a29ddd64853.patch
https://www.cve.org/CVERecord?id=CVE-2026-46720



