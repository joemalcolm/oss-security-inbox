Received: (qmail 14055 invoked by uid 550); 29 Mar 2025 17:44:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 31825 invoked from network); 29 Mar 2025 17:39:40 -0000
ARC-Seal: i=2; a=rsa-sha256; t=1743269971; cv=pass;
	d=webhostingserver.nl; s=whs1;
	b=sZHopDCfPfJ5l500IX3CjDl6iAclSRWNT5BhLKkVYPqsGLRcMjHKTJH+Z+yJHLMwKXCnpbzNsRw1+
	 vnt0AG3CR91hGLIO2NSEMcYWINkgPDSBZg8t8CPI4KlWyhFi+NATZIlOuGwwgksvv6ImoG4HtCs1R5
	 R60ikiJ+zNs4Vt3jFHOAWi0YNLfr+yWYevNLy9BQjTmG4pKKQk3JnKZ5ZUQN++H68tSppPWwDvMPCl
	 G1+IYSBfGGkXWGeZ9kd+yYBYlrgkq2r17K1HM30lL0qVWNX9qXS97JEAZyV+CSdWieAMgrZlhW1RIs
	 f6Zp0eK96amAlQLTjixfevpHMwqUvcA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
	d=webhostingserver.nl; s=whs1;
	h=subject:from:to:reply-to:mime-version:date:message-id:content-type:
	 dkim-signature:from;
	bh=aurQ9/alYPNRs9qtmiP33ERBYSjI0SN5TWNYg68JLWA=;
	b=sLURuhwJKUnBuXngND6c0TxwWGn3eqQOLWVnthE18v6zUgLBq554Dz0Rz7xNTRbvtUYQqnZXI27cm
	 gbNocUVNibG/Mxus96ajuP5ZxesmnoHLKKQzhfPVAb0oLqSQvIEq4XDoGgfpYxGwOBpZC/t+kficHF
	 jKH6dgbZqzfigy8qMH1ezBRJF9yN+6JfYqgL2vulk7+ELnnkUUqDWK5GkgucWiDErRTPUDTVTycExg
	 U/t1LKW411CTBqwdWsPacW4r6NsSeXA0hv2k+7WjEwp7mAZ8JMwcrWslD0qpBEPABFfBFl0i4a/wa9
	 NywKFI80BmZTrp4lmF15EssF/TOcuYQ==
ARC-Authentication-Results: i=2; mailfilter01.webhostingserver.nl;
	spf=pass smtp.mailfrom=atoptool.nl smtp.remote-ip=141.138.169.208;
	dmarc=pass header.from=atoptool.nl;
	arc=pass header.oldest-pass=0;
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=atoptool.nl; s=whs1;
	h=subject:from:to:reply-to:mime-version:date:message-id:content-type:from;
	bh=aurQ9/alYPNRs9qtmiP33ERBYSjI0SN5TWNYg68JLWA=;
	b=VJ8rOGcitx5S9ucSWo86QVqFrYKo2tfHjI3cfpG0Fyw8KYqes0l0giMN3mBJz9HDi8qXfaddGT5cQ
	 B+xTlCyyH90OEeX4KEYmaWQAsuZBYt54muD4HJtjIwrepLB2cDabEdUR3Fxr4J2QtB5DRy8TdUPipx
	 VGbSmESeDWlOBKanTRc1VBiFiB4SbHlT/XA1LfrJbCI1hbYAVJPrtFeoijrOd39bmcBXwYFUI2wExH
	 w2limiBQkw3DbWb5T/Pc7nAZEDLUjiK3I4M5g30cTrEf1KuoWN0+mz6TG6qovJCjWPuECwYccJFdHr
	 ISWzN+GW3A3GYk8kbDam/C86Z+6/QIQ==
X-Halon-ID: c49c3199-0cc4-11f0-8152-001a4a4cb906
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=webhostingserver.nl; s=whs1; t=1743269970;
	 b=fZVYPa/yuuhUbdErl+bhLOndYtZoezNMtOzoyQtw1y+NgIsN+I+l6n2wBUrvNcDmM8YuxDDa9f
	  o9uIcteabGaFF05NBlphGZeaAYAeNxleLHMNjrjkLSe6aKAmsvQcF8Fv+j5IUYiuBNHZxGZcq1
	  h7OuTaYwvtXVyIB/EaMs1ARMVuAHa1O/PPmRH/DFAsRCA43FY3xzGby0qycHJUGK1s6MC55GUV
	  opV5LtTWCnpW4iP2Iw+hDpl3n5DxZajOtPvqvVLXvKOeF3FGREqkcpzuvZYjut3dysqEGUo/dH
	  d8ZTOjYyiPbwo2dpWEIa2jh2vJKWz73hWfekOFkWX9begA==;
ARC-Authentication-Results: i=1; webhostingserver.nl; smtp.remote-ip=84.87.167.79;
	iprev=pass (84-87-167-79.fixed.kpn.net) smtp.remote-ip=84.87.167.79;
	auth=pass (PLAIN) smtp.auth=gerlof.langeveld@atoptool.nl;
	spf=softfail smtp.mailfrom=atoptool.nl;
	dmarc=skipped header.from=atoptool.nl;
	arc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed; d=webhostingserver.nl; s=whs1; t=1743269970;
	bh=JPyKTWuLX09eUAY2ZsgM3TnwSSQtNrHOISrWrDl5/8A=;
	h=Subject:From:To:Reply-To:MIME-Version:Date:Message-ID:Content-Type;
	b=TwSiQA667w5+ZFWKVR06cl7hGZTnhscSK8PShX0tN9hC74j31SaVFqax0dVT/30XYpHA4cK77h
	  UDF4bSwPOwr3wqoZmtMYaaV6rnINMjUTxa95TbhTtmzFHxMdDk9iGitFn9vdItcwPDuvlxtuVg
	  AXVOF6VKmzPi1ozv/p3TwaR3aPVL+D+apV7wt1J7Yfcf5aGbw6uUJxr2p58y9NwpZp5h+fyRXX
	  6E8qVXNq8iYk3N7PJgKL+5hTDpL1SC2JGHf/VQhArfYPnUSr8qgKm8Pxvdlg435NNgrz6+8lis
	  KoN09a9SsVrX7nsRbP+kJGzm0w4e5t2RhhWBzYPEEb+xbw==;
Authentication-Results: webhostingserver.nl;
	iprev=pass (84-87-167-79.fixed.kpn.net) smtp.remote-ip=84.87.167.79;
	auth=pass (PLAIN) smtp.auth=gerlof.langeveld@atoptool.nl;
	spf=softfail smtp.mailfrom=atoptool.nl;
	dmarc=skipped header.from=atoptool.nl;
	arc=none
Content-Type: multipart/alternative;
 boundary="------------PGj013U1sJYjLKy4p8L51dqQ"
Message-ID: <53411a5a-3b7f-4993-a66e-8e93cd2efb1c@atoptool.nl>
In-Reply-To: <fcc718ed-ddae-4bdc-868e-9f897bbc98d6@oracle.com>
Date: Sat, 29 Mar 2025 18:39:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Gerlof Langeveld <gerlof.langeveld@atoptool.nl>
X-Antivirus-Scanner: Clean mail though you should still use an Antivirus
Subject: [oss-security] CVE-2025-31160 Atop 2.11 heap problems

--------------PGj013U1sJYjLKy4p8L51dqQ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Introduction:
Atop mainly reads the system level and process level from the /proc and
/sys directories. However, certain counters might be obtained from other
optional sources, that have to be activated explicitly.

One of these sources is the 'atopgpud' daemon, which permanently gathers
metrics about the utilization of GPUs. It offers a local TCP port to which
atop can connect to retrieve GPU-related counters. These counters are
provided as strings that have to be parsed by atop.


Vulnerability:
The vulnerability is caused by the fact that atop always tries to connect
to the TCP port of 'atopgpud' during initialization. When another local
program has been started (instead of 'atopgpud') that listens to this TCP
port, atop connects to that program. Such program is able then to send
unexpected strings that may lead to parsing failures in atop. These failures
result in heap problems and segmentation faults.

Although no additional information has been received about these heap
problems, the described heap problems were reproduced with a custom
developed test program.

The vulnerability is present since the introduction of 'atopgpud'
in atop 2.4.0.


Solution:
1) Most systems will not explicitly activate the 'atopgpud' daemon.
    Therefore, the default behavior of atop is now not to connect to the TCP
    port at all. Only when atop is started with the '-k' flag it will try to
    connect to the TCP port (in case you know that 'atopgpud' is running).

2) When the '-k' flag is used, the parsing of the strings is improved to
    avoid that heap problems can occur.

3) Another optional source for atop might be 'netatop' or 'netatop-bpf'.
    Since most systems will not explicitly install/use these sources, 
the default
    behavior of atop is now not to try to find these sources. Only when 
atop is
    started with the '-K' flag it will try to find 'netatop' or 
'netatop-bpf'.

--------------PGj013U1sJYjLKy4p8L51dqQ--
