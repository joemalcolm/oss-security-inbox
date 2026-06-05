Received: (qmail 1349 invoked by uid 550); 6 Jun 2026 02:57:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5657 invoked from network); 5 Jun 2026 14:34:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1780670043;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=KSaCMVVvpvWo8zNeg5gFYbuKi+4cgqHypLYGGQI6aZg=;
	b=hyM4YJiglT5t2sgLb+4XmmTHpEP8ob0heHO915vHuh4etUXnbYdQD1mzQJ9A2CUpQcL0uG
	sEyXED6l9LlBNFG6EQC7O1qww9nN7BVSuy/k94OcgVM2jQzTgVusEt1IOMYhCXYf+BaTGH
	F2v/4s2dwpEcV+6kbEezD/Tq31nJrbmw3VtY5fjsuqRcvqu/MWd0B0+ow/E5K8z/SCZK0p
	L03FpI6qPueYsaDLs8FcW0RzHXdqEV+uft3UwqQFQtCzoY4h17+A4Exlyo/TgeHUS9cUoT
	oD+5FU/PqJnREQ14D2Xw7F1hFsTRpGVVj+N0odkRY7BQMZ5T1WQTKnxzioNunw==
Message-ID: <d6e2f20d-5a3e-416b-b625-90ebf5904fe1@cpansec.org>
Date: Fri, 5 Jun 2026 15:34:02 +0100
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
X-GND-Cause: dmFkZTG1F2+RLke85L5b53ENwDDAd3shMtJgdh1KnVWIwNru2DU4HCu1z5huhd0E05NsOt9TYKkPjLFKkGkjQ7UItP0lqr+Cpk7+PCTMailK9RacFuKZ8XmH6u5bL2pVsLorORTqXDW9caqSgFqH1yqFgNwLW1mWjR3GZn9hZC0ATqRRS14RFT+yllJ0ReuPl17V8o7O2wrDju5HSiGbwGkj69WZiah0Kxplnli6w1ez/YbB2TiO47xlgHyR/rcI89iB/uimpVgfREF/L4SlrREx9Y+A4EnPMTjkn4AwNVA+kqvRHv+erN7HqsOzTHm6K+QcLcXymAjZd/JucNiIlgab8r32bVZ/gKjk6A7FzLN6mELr0Ja42tel8jXtpKLrXqyQcr3mZ7qAa+VuHE2TdyxqRAtgFXkgJ+yyTqgP5SsR+iqmZApKr2ZaW1VKbKCsT30MrIgm4zZwIqe7LoUofHMp1157QdH8J/IIuSlGbeY0CVI0TAXInFC6o8SaZOVVZozlEM87vOhfTAn5TdkrOH+hYyst7gFktjkQz50rgXVDYjpgHu7SCsSlDuMK9uBqnbTC2sm2FyxbuKpXgEZxo81K5PzvpDXo/mOjozNvX3euK6+B7DyQFJPKitEpHi/gJa9N/zlx4ePJHoAhFiMGotZ1IWhR/a4ubm3M9SqofELXRrwPXA
Subject: [oss-security] CVE-2026-10879: DBI versions before 1.648 for Perl have a heap
 overflow when preparsing SQL statements with more than 9 binders

========================================================================
CVE-2026-10879                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-10879
   Distribution:  DBI
       Versions:  before 1.648

       MetaCPAN:  https://metacpan.org/dist/DBI
       VCS Repo:  https://github.com/perl5-dbi/dbi


DBI versions before 1.648 for Perl have a heap overflow when preparsing
SQL statements with more than 9 binders

Description
-----------
DBI versions before 1.648 for Perl have a heap overflow when preparsing
SQL statements with more than 9 binders.

The preparse method expands SQL placeholder characters to numbered
binders of the form :pN, but only allocates three characters per binder
in the buffer.    Placeholders 10-99 require four characters, 100-999
require five characters, et cetera.

Problem types
-------------
- CWE-787 (Out-of-bounds Write)

Solutions
---------
Upgrade to DBI 1.648 or later.


References
----------
https://metacpan.org/release/HMBRAND/DBI-1.648/changes
https://github.com/perl5-dbi/dbi/commit/af79036c07aa9a457971c0f4136e37c85dc20978.patch

Timeline
--------
- 2026-04-25: Issue reported to CPANSec.
- 2026-05-28: Commit fixed the issue in DBI.
- 2026-06-04: DBI 1.648 released.



