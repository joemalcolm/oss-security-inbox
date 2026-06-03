Received: (qmail 1193 invoked by uid 550); 4 Jun 2026 00:51:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26255 invoked from network); 3 Jun 2026 23:48:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1780530475;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=KDzPSTnExe7rAwieBq763EhXaK+PLmnIFxxvv1QozNk=;
	b=Iym5wYtQCJzRI9Ib6Y2YmxkTFeOSSGsf8qlwtk31dOS0swbQ5pMsVZ0CN/WqI9waHqr5JU
	57+ih6ty2oSUCrV/9fXyyyf56aGlyh+CuulRESnMyYFQZLznPJPMwFNoj2OeHC7bBpgbNx
	bJGPNccPYyvXPLoYYU+Oq42MVOHoHw8WtdT0ueVvhxxjH/2m1t6LBPR14C9wfTLHFCb+y8
	VNPu6Bk8BfJe1eZh0UI5WiUsK200N3nj9a5ES45drQO58qKJPjADOdAjdfpjfKP8ZdYMby
	2M2rnLaBx5XeKwiQpSvZ3wz//BSC7WIBR9/KwR+N6YbmaIuTLB8oiy9L7ZZPzw==
Message-ID: <5836cd5d-b38f-4423-9948-044464690a84@cpansec.org>
Date: Thu, 4 Jun 2026 00:47:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Robert Rothenberg <rrwo@cpansec.org>
Content-Language: en-GB
To: cve-announce@security.metacpan.org, oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-GND-Sasl: rrwo@cpansec.org
X-GND-State: clean
X-GND-Score: 0
X-GND-Cause: dmFkZTFZTc7B1HTkbsJXY5eEpuJwptbFZZdgx7nBZg6frPNiE/GYu8eMi1ApxItnBql8KF6EgrrwNRoYxHYXGtLrJQEthLoY/vFr+upmdVslScr4LYgUslTtLyJHHo6Xc3jP7+fkaGR5wLW4zoqLdDBl6IJlQLf4l99TnMPC/ARn0zjOF1RARKX74PCV4Zb0mAaiGVwqzd7PIVag4yytpcnoQka1+8ygpGn1jErMqBDUNWFETpTt0x2zZpVE6I+DgXQHXO8RhtR98q1qMm0BriVhJlSQdMeYN+Q856BCnWfIpV4+jwvZM7Me9CvKfYaw19BOxjiRWMSMmXaW5ABeXiEjHpkPQSNVEDG+h0Vi6Am0rdQYWPgS7VMa6FUcE6CmVaykPjwg3oSwFp9XsvGOVfdk2ze5IxzZkPQq36GukVn7jev+IcpHy/NkfmHHXnvxdbRQkLrDGJdHWX5ympZ6e84MXmjyohZCaDRnPil7XYibMIBucTzs8Ae0ssRFfcocxtz/oBtiD6Ix8NuDBN/OA0KtS+it74g/rS2G2APb2VFfIN2jrfAGd1Zp7ljz+03smWv1lDDI7Zul3ufCtEmjLOn3VhBiMxQfBSS0Z7WUAqgh+KaErpvs0KZ0goBLMpK7kI4lhLiJ7NfEM4MxGHV9SdPvPF5pkU/1F5OxGHWWOXjobpDagQ
Subject: [oss-security] CVE-2026-8722: Net::Async::Statsd::Client versions through 0.005 for
 Perl allow metric injections

========================================================================
CVE-2026-8722                                        CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-8722
   Distribution:  Net-Async-Statsd
       Versions:  through 0.005

       MetaCPAN:  https://metacpan.org/dist/Net-Async-Statsd
       VCS Repo:  https://github.com/team-at-cpan/Net-Async-Statsd


Net::Async::Statsd::Client versions through 0.005 for Perl allow metric
injections

Description
-----------
Net::Async::Statsd::Client versions through 0.005 for Perl allow metric
injections.

The metric names are not checked for newlines, colons or pipes. Metrics
generated from untrusted sources could inject additional statsd
metrics.

Problem types
-------------
- CWE-93 Improper Neutralization of CRLF Sequences

Workarounds
-----------
Ensure only trusted data is submitted to metrics.


References
----------
https://www.cve.org/CVERecord?id=CVE-2026-46719
https://www.cve.org/CVERecord?id=CVE-2026-46720



