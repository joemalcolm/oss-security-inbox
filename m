Received: (qmail 11350 invoked by uid 550); 21 Apr 2026 16:31:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 21756 invoked from network); 21 Apr 2026 15:29:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1776785331;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=NnLcNHk5xy+HQGBfncQKfCg5jAgTJban+Of6kGz721w=;
	b=eEG8gaTNlPHkSyJZFL54ssQ4kBUgoRt2dgCoDQOHGxcuXgwOKCshP/4gdSr9TsjIuGnxHu
	PRNFUtjfGMNGJ2gOH9ShT28zL5Tu+X4OCaVt3m0JTFZ5wqGxrBwP8ARLP6WblWMNR4U+Me
	FRds6LGwjanKiu+FUejYLZG4iV2+2mssXBv7GzWUn/kHbeLLx51VJlwB3oGl5YDVGRD5Gd
	UNzMaQEm2fZsICUN+RAfMv3bBkkAFsyxxDt0yv4Lb/L8fze6cLo+w5GII6dbzCw6bCSu7n
	Mf60vebvMB8kEFU7qJBhLjwkMBf9O9skPy5iP52hjCEPQ3XlEdRiE9EzLwWGRw==
Message-ID: <fb88abe3-8fa4-4b59-954a-b13e1226f7ee@cpansec.org>
Date: Tue, 21 Apr 2026 16:28:50 +0100
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
X-GND-Cause: dmFkZTFvJV6At/gQstTw1tKflecmlSeKf5w36Kvja4Sw2lqDmZItEsa6kBe0pb6BMvZLveJXxhtuYtR/YcN7JbPcbl3nHIkCoRerjv7LV3orkV0Aon2NHipm/oud0jyjZr6FeHCjAIhmPzKHzKzM66iXiS9PuSz1hSjWuqflSWtr+NQCxXsY0QxhrOSNCssX2MukBVupewr/7bdwwHuRzAINjO7pHnRnpQt9rdJeUuH/RuowmXrViDjGzL40JlHdiiAyxexXdeqv3zYYJZ7/YJbguhve6BNkssk0ldox/NKdgCpQFMM+LUncf6FhHMOaXDQC/hqpnGEcpoVj4p4s6zxGJtWmYxDOU0eGBAJxvwq3c4T7FRcsLdrh+ePOahAzTQ1rEz8kglXVe0fdpgXWSwgVIpybncklo7SuM3gJQhCftfzLdN6L/DoXxQ94WpzP9MDSow8tJyuGtTmhNYB3QcAgBxx5V+ChEQmKdH/gUWTvBeIcZ+M2PvWL1uz7DS4S9uzyTLZMdXWUGTjqRfi4TksU1jR+I7oZvF9C3LX7E7R3zPfGLqoHfNh1lcb7el4R8MZMK6EVUlGWlTAmmKgs1DdftaIayL1RCeJOlkYkjX/9YbMswc6FokvPzGW8NENaOiVWE7QHYlpUav8eOk/02oC9rDQW4fcrHcIvPQI6EcXHn++dLg
Subject: [oss-security] CVE-2017-20230: Storable versions before 3.05 for Perl has a stack
 overflow

========================================================================
CVE-2017-20230                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2017-20230
   Distribution:  Storable
       Versions:  before 3.05

       MetaCPAN:  https://metacpan.org/dist/Storable
       VCS Repo:  https://github.com/Perl/perl5/


Storable versions before 3.05 for Perl has a stack overflow

Description
-----------
Storable versions before 3.05 for Perl has a stack overflow.

The retrieve_hook function stored the length of the class name into a
signed integer but in read operations treated the length as unsigned.
This allowed an attacker to craft data that could trigger the overflow.

Problem types
-------------
- CWE-121 Stack-based Buffer Overflow

Solutions
---------
Upgrade to Storable version 3.05 or newer.


References
----------
https://github.com/Perl/perl5/issues/15831
https://github.com/Perl/perl5/commit/a258c17c6937f79529c8319a829310e09cdbd216.patch
https://metacpan.org/release/RURBAN/Storable-3.05/changes
https://www.nntp.perl.org/group/perl.perl5.porters/2017/01/msg242533.html
https://www.nntp.perl.org/group/perl.perl5.porters/2017/01/msg242703.html

Timeline
--------
- 2017-01-24: Perl bug RT#30635 reported.
- 2017-01-25: Patch committed.
- 2017-01-29: Storable version 3.05 released.
- 2018-02-20: Perl v5.27.9 released with Storable 3.06.
- 2018-10-06: issue assigned CPANSA-Storable-2017-01 in the CPANSA
   distribution.



