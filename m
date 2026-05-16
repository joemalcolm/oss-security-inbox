Received: (qmail 5567 invoked by uid 550); 16 May 2026 18:18:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 29966 invoked from network); 16 May 2026 13:39:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1778938735;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=lJRhUNkEgLrV7hKrEH1hxZ/t0i+62lcB0sMJvKNx1EU=;
	b=exxBorty5OkAM5Jpm8RvJo+6z6un14FFpdEQPQNmIpVx4sqV31NX4ud6PRe/loqOozwi9U
	kHdh40u1+WPOdftgdCAthAq1Le1NRYksHbhT0UV9VTrz9LpoV93OOs0ZHruxmUwaB0+jRs
	okiQR4ovvuR4dPRo02lQ5vWhvzd/QMWXZnijQMT6joY0HA1H1OBpujmX8hPrzKJQWgb5U+
	YB7H3EfUbEuzRjJjBrABzkFULgkI6eDx65q+prfiG68p8Xdtcq24jwkgIMMGvddY7VObEL
	8UyXJWMxF6eZglusTWL+LR7uI+GKNmu/QWwXom/sAO0ae5fhz3G8WzomYzjcvw==
Message-ID: <d8728694-98be-4f17-ab76-f02d3d311c7d@cpansec.org>
Date: Sat, 16 May 2026 14:38:54 +0100
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
X-GND-Cause: dmFkZTE62fF6IqwBuHF7QQSZYgjTPoTWI8di6BBh0p5zyZrpGKw5EQXUMnxFs7v5AgaYI8hk/4Dzs+POTVciqU7kcPascS65aozjcVP8MYredrjMZKM4NS4O8dvQK8OTG0errZSyMwFrWZfBcrLdll6+dgbtyxlIeJ9oM2lUOo+YiAdGkbbtZCu2k6EoLrXnGYJSXHy5l8w0LZKMLUNXPMS7M2/C55DIw1x13YJSpkbTCSjpLIapjLlVQXrypMhbc/LDudS1wDsqSMTH+KzwYv19t3HYQxsAOt2q4GEIG8qfxf37/MWMcZaM5vh6nnF4P1cxrNUCG4IUR91uauvC/QKo1fp0lTUnV0/l1CnroekzzoRziq5qN7mx2iDfkiyRS8itJ+b4rdBGE0rTT1xVOlu1IEvtL+nHbUDuno3zzJVUHlaLtFvlKDp6+POsaDo9rwFLMIGSezmmeuSr7ys65nYNSwduZj5FSoZOYRj/ChP3GdE36Ci5lcSHNnRkCnu2/jIqt3HrOv61S60yF+FfLz9G07dGCo8oJ72P6DeAGvsqWdlAo20Bqbatzc+L2E/f+CrFgvey4fsq8+VymVm2slv1N6uDrpkOsWZCKE6Q8nqUmEIYErBzekMBrZpsWVqK5HmSvomIZ7eU9YWHCE+aXljOJZmMbEusoT6WeKwVkchIR4IiMQ
Subject: [oss-security] CVE-2026-46719: Net::Statsd::Lite versions before 0.9.0 for Perl
 allowed metric injections

========================================================================
CVE-2026-46719                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-46719
   Distribution:  Net-Statsd-Lite
       Versions:  before 0.9.0

       MetaCPAN:  https://metacpan.org/dist/Net-Statsd-Lite
       VCS Repo:  https://github.com/robrwo/Net-Statsd-Lite


Net::Statsd::Lite versions before 0.9.0 for Perl allowed metric
injections

Description
-----------
Net::Statsd::Lite versions before 0.9.0 for Perl allowed metric
injections.

The metric names were not checked for newlines, colons or pipes.
Metrics generated from untrusted sources could inject additional statsd
metrics.

Problem types
-------------
- CWE-93 Improper Neutralization of CRLF Sequences

Workarounds
-----------
Apply the patch.

Alternatively, validate that all metrics sent to the client based on
untrusted data do not contain metric injections.


Solutions
---------
Upgrade to Net::Statsd::Lite version 0.9.0 or later.


References
----------
https://metacpan.org/release/RRWO/Net-Statsd-Lite-v0.9.0/changes
https://github.com/robrwo/Net-Statsd-Lite/commit/e1a8ab866d75c2827982134e9cf7e51a7f771153.patch

Timeline
--------
- 2026-05-14: Issue reported to CPANSec
- 2026-05-15: Author notified
- 2026-05-16: Fix released



