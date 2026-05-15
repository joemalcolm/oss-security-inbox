Received: (qmail 9487 invoked by uid 550); 15 May 2026 23:07:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26141 invoked from network); 15 May 2026 22:21:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1778883674;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=7Tm+t2CMUxlKZdgDi+mE9tEmNiGKMzXPXspM7GRtTBM=;
	b=RTxh7dya2pB4n0JhiZbtR8UbQ5kFyyfcWVYw9PhrQh4NuUq7g0/2YnxYd3McEf16AasNIP
	h0qiWR31z8gpCTCodsM6ax40424AYQyuZe1f6O2TbPoHAYMM35+0STQvoSJ2+xEdHvxyJV
	U8pm5puxMjdgEBQA/2UynkHCAd4l6W3mdqNpE43u4O3m9qNxHuMPYPnqsroKpaFnnN5BsB
	V4fsa1dAFl6FLkXLBHqIzDSEpVZXCTRjir1dWwArLss03X1wjOnAJ6ZHX5h4Jr9YSawhbC
	DvKSiy4m6prRmYqw4cm2blxQnxapFKUDFISHUAukuaBWvmNKmzMde+WAKeBTzg==
MIME-Version: 1.0
Date: Fri, 15 May 2026 19:21:13 -0300
From: Timothy Legge <timlegge@cpansec.org>
To: Cve Announce <cve-announce@security.metacpan.org>, Oss Security
 <oss-security@lists.openwall.com>
Message-ID: <6e72831ce711b452c238b048cd6e43cb@cpansec.org>
X-Sender: timlegge@cpansec.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
X-GND-Sasl: timlegge@cpansec.org
X-GND-State: clean
X-GND-Score: -100
X-GND-Cause: dmFkZTFPYUue7kn6uvIgIvMs7Ke7uFn5welANU4S0kvDWgcGaEPChikARImYQjqTgPPwVJ55c5ObMNcvzbrONEBrTqbr1UwuRrMe2eQC5lpuD5EBJLdqSmeB19uJ9zzs50sMl3w6Mzj9inRnrpT0RCP+7UFt3JloiTDBDRJbg5U1ab+293UrGEwcHSdGRnv2Hc0iYpCkvp6SSwr5DOZQPgRgifsn16QVEotwmETeuZ9uQcWso5Ve7nW57jEFwabx3j9a12bOlZGwEBYC0cVbVShnB+HgzCzf6D/Q1rDm2HtcFFkAXhaNtshympe7bLlukqwYgeVVGNZfBCMHOjqTCLT0ouGvPktcFLysW9C1m1z4/f8isg4df71ITF4RhXw6E7QJniHFLTLproaDv32/wjYUIxHD9x9vKQwMELUd7KdqfbDofXFJgjhZsdWYexnB2evJonvf1ZKBBZiyWIO2H8PK82D2H1+7QBTM8r+pk3ZloCRBvGbN/ZwKrunbT+2RGYcuBiHIU4+F9ePVAFahsZaizT8JmROCR0JF5Y/gZq+DNk6Nz9pQ7o39zhwfEt0FwHAz/25//iqNCllk3F7swF9H8aNB9TMqFAKTv6EelKe383r7IEkVoF5co1JL0qvdgPcpMlxrl6PmIye61+5irJ028caMiNZ0m6lsZbEt6gTwHUnr8g
Subject: [oss-security] CVE-2026-8704: Crypt::DSA versions through 1.19 for Perl use 2-args
 open, allowing existing files to be modified

========================================================================
CVE-2026-8704                                        CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-8704
   Distribution:  Crypt-DSA
       Versions:  through 1.19

       MetaCPAN:  https://metacpan.org/dist/Crypt-DSA
       VCS Repo:  https://github.com/perl-Crypt-OpenPGP/Crypt-DSA


Crypt::DSA versions through 1.19 for Perl use 2-args open, allowing
existing files to be modified

Description
-----------
Crypt::DSA versions through 1.19 for Perl use 2-args open, allowing
existing files to be modified.

Problem types
-------------
- CWE-552 Files or Directories Accessible to External Parties

Solutions
---------
Upgrade to version 1.20


References
----------
https://metacpan.org/release/TIMLEGGE/Crypt-DSA-1.20/changes
https://metacpan.org/release/TIMLEGGE/Crypt-DSA-1.20/diff/TIMLEGGE/Crypt-DSA-1.19#lib/Crypt/DSA/Key.pm

Timeline
--------
- 2026-05-15: CPANSec identified issue
- 2026-05-15: Author was notified
- 2026-05-15: Version 1.20 released.
