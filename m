Received: (qmail 3499 invoked by uid 550); 4 Jun 2026 16:29:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 10234 invoked from network); 4 Jun 2026 16:09:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1780589366;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=ysdQk2C4mppkYxzsiDHm3jt1m97tiWTJzWZtW4+sWpk=;
	b=Vji/jKRpOlljqLXfFX8HH/B03trvIwkeunCCd3wb7xTD+P9gEuyhswpRZE59YjfqZmUsGH
	lsvhUUNvB/tshTug5mZKqBJiRwjjw+3B++QnS9hskDzLXn6dA6aMXjgtSiyAOWuEuotR3N
	tkMqg0bqpiGSGoAsAi3cETR2TLgziXV4Q6am/hIS4RJZr91rqLkwZxya18IAwEEgWNpgh+
	DBktBxR3ycOZZ22RBDqN0Z/nKn5jDlpVXwBW+EExxfjXFMg8jz27xddCaQv+iZsUziZnkw
	LWfqk9tCLV0UiRAmIU2+dLYvqVT1RPBbwsNzPmWPSNLSrQT08Wapnz+eovJQ4w==
Message-ID: <de5d8e03-86d3-48d7-a8c3-d26107f2c51f@cpansec.org>
Date: Thu, 4 Jun 2026 17:09:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Robert Rothenberg <rrwo@cpansec.org>
Content-Language: en-GB
To: cve-announce@security.metacpan.org, oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-GND-Sasl: rrwo@cpansec.org
X-GND-Cause: dmFkZTEM/K11n17wMWdAA5heYlMVLKC/r2V+bV2p9ljjNp9D3+zTRgdHocaEOraBaSCPXDdVcaRluhGHDl6nf56BrPiwgOXwEXdmJnbO3TXv2hXnN3yaa/ML9aH2AUuRtgGsBB3sb27Xi9zEYuT/Mb9c7DKY3ggy6nLQkAas/XH0WwTWxVAyw0mU3SP1vGVrzcUTtJhQXqyfNM8Y3NWUh9vvj1COxZvdzj9pOpeyWqd3qALptQ8JkWIi/HoI9s/MBiyvYlwISEVbYHgoVQW5Rr+6YPVzIEUiXRARNeIFEc0WlGr5R3zYwHnpELxAlaFUiyVOUeN9uUg3X7EZmrx2uvCY1WMhbcDAoi8rWb/wwWNo2IiuVNzDuyLqY66RuleyQ4/JVoAsUcpIetdb3YMrHNNt7GHIkh5UM6bZQgGPCqcQmKhk+OtkwDDuR4td5t+hotQVDvARQrxhYq4m1x1MP4iSq/xdX1hvLwKspN4Pcw7HYFSh2LJwROCP1nOg0Mh9KNxAj2o9aAOWk4O4nfDGjx9/0XSrkehL9r2sQvqHKqD/h8TUT8GQjWwUcBuf1sGifPkjlvtVXKimhk2u8l4AHVgrGSltgB72kETK25FtC82SE5+k9NpJqYezecoTbkpICJ24t+GOVjp2Hkv48ktwbV6v6+sldmYwQxlEed9g56HmKy6WIw
X-GND-State: clean
X-GND-Score: -6
Subject: [oss-security] CVE-2026-49940: Net::CIDR::Set versions through 0.20 for Perl accept
 non-ASCII IP addresses and netmasks

========================================================================
CVE-2026-49940                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-49940
   Distribution:  Net-CIDR-Set
       Versions:  through 0.20

       MetaCPAN:  https://metacpan.org/dist/Net-CIDR-Set
       VCS Repo:  https://github.com/robrwo/perl-Net-CIDR-Set


Net::CIDR::Set versions through 0.20 for Perl accept non-ASCII IP
addresses and netmasks

Description
-----------
Net::CIDR::Set versions through 0.20 for Perl accept non-ASCII IP
addresses and netmasks.

Unicode digits such as the Arabic-Indic One (U+0661) were accepted but
not properly parsed as numbers.  This could allow network masks to
accept larger networks.

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

Timeline
--------
- 2026-05-13: Issue reported to CPANSec
- 2026-06-02: Net::CIDR::Set version 0.21 released with fix



