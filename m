Received: (qmail 6128 invoked by uid 550); 4 Jun 2026 16:29:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1698 invoked from network); 4 Jun 2026 16:11:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1780589497;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=QzurPM3oI1NA4YzYmhRejdeGXfv/qispZiAqio+KRM8=;
	b=X+sehXib4jYczqeanTG0OEWcBT/zNhqQvkW0fYQF6/4sSqYB0xYHs2MQtiUZFfATVjeMOv
	em8QteSAKlwnK/juyqUf2iHL7PhpWWT8Tt+SkvVWi7nxe0OWCaKRgR8uxK/0rtx0IK0R9X
	OM/NVRVBJu0v07e2fvfOcvszcaUQ1J3qw/qyi2+Yd8q/Rg7F4h8GPu688ABR4i4osGRcXB
	dRzMPG2NInejPOxgT8KPF/HbgWqETw+IZ4qZdnATwaXNdrLSesTchZbqXTXH4rAsOlZSl6
	SZ4FtWY7U1Pb4n5abz0t/c2ZyE5woZIja0Wp1+YgKsT43+RO/uXhA/U/xLqWcw==
Message-ID: <fdb31ed1-a264-4450-a35e-faeb57e3f63d@cpansec.org>
Date: Thu, 4 Jun 2026 17:11:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Robert Rothenberg <rrwo@cpansec.org>
Content-Language: en-GB
To: cve-announce@security.metacpan.org, oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-GND-Sasl: rrwo@cpansec.org
X-GND-Cause: dmFkZTE4XO4w5q0DfdQGF2SjyLFRnYY/swnry/P6G9toRxGYJpyqdAo3LtDoGtC4AyUE+59adOBY5uhd6+dx003KPjV+Fjc7WZ/cJROWJl0vyVb/7fQY9EZlic0bfqv56YXiWoR4J0MZGwCwsnyk1u6zzH+HBJ+hxOKr7WF7fmVCKfWLnjYZQuqcJknUy89+6RXL/7XPqnMvPC6YnUTYUX0RxURWzE1OTXA75Dtdeh+E1gURqXJUIHqZamMyDTyEug7KSVh0HSNRaFNT6ficKRpnWDr1ZtHPCnfU1z5MtDpp7VKXZBf7EDxez78A0HxuS6NW3XryERClqIsO1wJ3yjl0SwsEgRbCDmVt7fJPZNt+r0cVDbYX1daWm+Q0bcGJdwhy+MnP8uBF8x/1fyaKUUY9zwjEXudenezxn7xSGW8RPrfr79K5PfxKcith8JE3qf5DFl1pgpl3X3d803y7bipoKdWTx689cjbyoMJ4bM9l2OsZ4ESDLMXxsV/FKppG3DNUtgQ5XYDEJt5Fb90Yty4/3rM6C0Jb+Pa7IyHE29175qqtwb89DTNAspuUXc9ybfO7f+5K7SMYTqtb6BQ034Cqnwu9oqw4vm/GH4K60Rz3JQDA0/e9vY32rvikdonLLTJPU3RC8qMpy4FAXuAgLjxbqQJpnzQ3vtDjGsxPu+xOWL0WIw
X-GND-State: clean
X-GND-Score: -6
Subject: [oss-security] CVE-2026-49942: Net::CIDR::Set versions through 0.20 for Perl did not
 validate network masks

========================================================================
CVE-2026-49942                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-49942
   Distribution:  Net-CIDR-Set
       Versions:  through 0.20

       MetaCPAN:  https://metacpan.org/dist/Net-CIDR-Set
       VCS Repo:  https://github.com/robrwo/perl-Net-CIDR-Set


Net::CIDR::Set versions through 0.20 for Perl did not validate network
masks

Description
-----------
Net::CIDR::Set versions through 0.20 for Perl did not validate network
masks.

The mask portion of a network mask could contain Unicode digits such as
the Arabic-Indic One (U+0661), or non-digits, which were ignored.
This could allow network masks to accept larger networks.

Leading zeros were also accepted, but treated as decimal instead of
octal.    This could lead to confusion about what networks are
acceptable.

Problem types
-------------
- CWE-1289 Improper Validation of Unsafe Equivalence in Input

Solutions
---------
Upgrade to version 0.21.


References
----------
https://metacpan.org/release/RRWO/Net-CIDR-Set-0.21/changes
https://nvd.nist.gov/vuln/detail/CVE-2025-40911
https://nvd.nist.gov/vuln/detail/CVE-2026-45191

Timeline
--------
- 2026-05-13: Issue reported to CPANSec
- 2026-06-02: Net::CIDR::Set version 0.21 released with fix


