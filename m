Received: (qmail 19993 invoked by uid 550); 4 Jun 2026 15:59:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1740 invoked from network); 4 Jun 2026 15:55:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1780588514;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=CFYfnDEaJaLjYkIiQGIidwKu2k2zu/wue7m1hFgNBvM=;
	b=Bbn7hhPRdelRMQztscZeUEs1Zpg/EF3X+QEMUI3VtHWJTkSWaWB3shWr0FFe5R1QbIviU0
	BIG1TAFV3rlArjnADycsgEM59pq40b9MMCAg1kZJ6DNFAfwMSaGtqMzjwhDiBl1DdfYKVp
	p9iapOJpaCQRcGMq6S/9eQdB+s+LUtMY64gpheW7QXDhuM+EksfnxuOhSaHA4m4JVYaSsi
	6iH7EdLNv77Ex2L9H54exjhDkdBR8J5Ix1L9tYyEjQiGDDyr6b96RzGb0HZ8GJstclgjtW
	L9+BQU1+M24WuBYrNcCdbBhiCSFqnEgLGTJ0QuUto2xvX4rBY8AxRDsIGhlMWQ==
Message-ID: <e9a35c0c-a780-40a2-95de-5162caa1af9a@cpansec.org>
Date: Thu, 4 Jun 2026 16:55:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Robert Rothenberg <rrwo@cpansec.org>
Content-Language: en-GB
To: cve-announce@security.metacpan.org, oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-GND-Sasl: rrwo@cpansec.org
X-GND-Cause: dmFkZTGF3URAC5A/DMJx3jZfJE+7LEGP6frXx0LN9nhVCxVhEBAB8+DIDiMO+0fDC1I2WaO2a1wkZhkZ4mcy5USJqy9tbIFrM1/vOeSAzsaiyiiSmH8LDVeFA+SNn8ANMhfQ2946hLebg/bwGGWVYsHzevfX9kQDFOCzQ8IE2D04MTIJKdT1swWYFYseQo6Dl4KbzLFAUPycnGkeplXVy0DZKJkFKQFoGTdwNlzt44hgWYqneKwI8VYYRcx+DP+3eSwHTvJtdnDTvPI6EcXRtLd7WSShNDmqPHJ/ePpgsP9rJAQs1W8OhOckRykbg42yXGJRHjGW+w0BHdwtQ8REM9ATgJ3FY4u6sqoYmgVGq3SPMZTYQ6VXThlkwO4qC9bWbg+/sfqPsDzXTO5+zjYi/BrziWIgfkKNUJQGzXYBT60ZMtnI92Aspi7E1BwfOZi3djCskY4puqK3b6BS2wGUtV9eeqKFs2ek1q184pFsvs8O7fTsbSuNPs1c6956EOT2KV3BdD2BuLvae68s/2vETils9R0DSBrxR/qd4pvA2FhgEbIc40tTwghTJk4YrQOCK1qW7TwsWasKMpX9QdTtm4pDpciR/gcQfvUwr+7DTKV5MA2OvwbbDskQZzxulyDhzBts6cr3MCn9jhRSY7Xl5RaaJsU1d9oPWw+gKboA0W5xQr88xw
X-GND-State: clean
X-GND-Score: 0
Subject: [oss-security] CVE-2026-46741: Etsy::StatsD versions through 1.002002 for Perl allow
 metric injections

========================================================================
CVE-2026-46741                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-46741
   Distribution:  Etsy-StatsD
       Versions:  through 1.002002

       MetaCPAN:  https://metacpan.org/dist/Etsy-StatsD
       VCS Repo:  https://github.com/sanbeg/Etsy-Statsd


Etsy::StatsD versions through 1.002002 for Perl allow metric injections

Description
-----------
Etsy::StatsD versions through 1.002002 for Perl allow metric
injections.

The metric names and values are not checked for newlines, colons or
pipes. Metrics generated from untrusted sources could inject additional
statsd metrics.

Note that the git repository contains an unreleased version with the
gauge and set methods that also do not check for potential metric
injections.

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



