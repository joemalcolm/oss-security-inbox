Received: (qmail 5322 invoked by uid 550); 4 Jun 2026 16:29:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26459 invoked from network); 4 Jun 2026 16:10:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1780589445;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=3dl4f2G+OFW4A2b9YSPvrYc+JPq1IWC8bZzMfdXrg/E=;
	b=eVr6Ysush1yDUbDi2oN8YBTPms19SjO5ePfFRs3naRUm4e0X0WWd50Or+3leZwTXuwfiQO
	BJ+rJd0Nq5r2Tq4V5uFam7NyMigXgaovCZVAZeJIJRGkXjzo0p9PhUDCBEBX/n7ZG7SQWB
	0TayxiRMqmniscgCvra4ObZdN2w1j3beYSXjkfGs1Qvl1baryK01u0HG9CodDoB0LRVpK5
	cCG/Hi1i/wjNgXp10dlf6CMh2unrYjqDkN+gw7tUAv0paTWl/83C0BTHvEOB+C6Kvh3GsR
	ux493yc0vvWBEReMevnHyKFuwPJQKaikqo9niSAm/Sa83X2pgPjKPsE7YuCq9A==
Message-ID: <bc840dc9-fef9-4459-afca-3b5551ca30f2@cpansec.org>
Date: Thu, 4 Jun 2026 17:10:44 +0100
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
X-GND-Cause: dmFkZTEntoKqB+TLcXY6eGEyW5lnG+ZS0p9tn+0KZBxSjQM+yIDi+SjDvD3LCozDifpJw8TdqQb+WvS/ViLiCQXNLB9zvKQ28E+vI8Vk199yvK9YIVHUOJeU0XmPXixJS4Szsopcbk7yO7rWi6CFTPjA3ay65b4ichhVmA/FE82ouj1d0bj3dmM2BpKTiAQC5/mLk8+qG3aO0SyJrKKAJ+0XQ3V4CsGzPYzZ9HksoVPEK16xehwZTf+ogCyvxSy9xSh8YmlfRnfPDwL8dCRjJUmboeEaOJNEamQYf31Cj7WT0QEogrzGe3XOcu/+4apWpvG+Xg2gNeYdcoAN/rHd1V4+1KAutjVHWhicsBuswOiJECKTZVOxRnPaSWaXMUx0A8Dqo7xU8qnC7KF4U6Jh1N67dGOVaL+W7nuiUUWPQBjNYTXkA50xDJR9RtAjaMlh6aXzUujTCGXMqmqJYO/7Jnc0KlX/FNEnFyA5hOdGwTUJrLwr4gYT/biO/DQSJrSpgvmLJpJepwYJPujS7XPhiwBP1ZscOCs3Kzu7qZWvX4b9AvPJpLIMCPgBvX8jMX+lliZDkwetwyMqJxoeLB1SiVDQMhaGxB+eScvANUUi0NlodDTrdQ5qbOtoYJ+3IzpI/63084tI0dVkjLdQDZ0iCiiGjd4O52kybrhv1ie1Thh6L12fsQ
Subject: [oss-security] CVE-2026-49941: Net::CIDR::Set versions through 0.20 for Perl did not
 validate IP addresses


========================================================================
CVE-2026-49941                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-49941
   Distribution:  Net-CIDR-Set
       Versions:  through 0.20

       MetaCPAN:  https://metacpan.org/dist/Net-CIDR-Set
       VCS Repo:  https://github.com/robrwo/perl-Net-CIDR-Set


Net::CIDR::Set versions through 0.20 for Perl did not validate IP
addresses

Description
-----------
Net::CIDR::Set versions through 0.20 for Perl did not validate IP
addresses.

The add method called the _encode method to parse addresses. If the
addresses did not look like netmasks or network ranges, then they were
assumed to single IP addresses and passed back to itself as a 32-bit or
128-bit netmask.

If the argument was not a well-formed IP address, then this would lead
to indefinite recursion.

An attacker could use this to cause a denial of service.

Problem types
-------------
- CWE-1287 Improper Validation of Specified Type of Input
- CWE-674 Uncontrolled Recursion

Solutions
---------
Upgrade to version 0.21 of later.


References
----------
https://metacpan.org/release/RRWO/Net-CIDR-Set-0.21/changes

Timeline
--------
- 2026-05-13: Issue reported to CPANSec
- 2026-06-02: Net::CIDR::Set version 0.21 released with fix



