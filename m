Received: (qmail 1822 invoked by uid 550); 8 May 2026 16:02:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15639 invoked from network); 8 May 2026 07:46:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1778226358;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Lza2Wz+pdfZxFoeQ31Q8IFgBkRt60fXOnUHUYKwaWRc=;
	b=a9kGmEEYiTiy1jMhaj1USQBx/SLxt+ndadAJc18/h3+H3OauhJO3OZWmz3KO8L95T+2os7
	U5i/TTvNWuSxopB1mpWuUgrRavRCRB4zO6JtlKbxQ0GBd3g5Dop5DN3brPWfPXwS5LDXF0
	elWOfpdrFiYTIZoXq00ihhwIM4DIZ1ezl+LnpH07YhqNq4Byfcgg+axK+H3lnkP3z8AmtR
	wH6JeDW0oAFOisbksioyqcmOYEwoCuEC4A/Ydag1PqrlN4Fg/1rb4i2vBmDHF3Ap75U0D4
	0Kl+MgROQiZvCHbv8HkZBhbwKCtbrzzCvEBrN6k9bFDpQTx4y3jmMvyGDRyRww==
Message-ID: <6d030a89-4b22-4b13-950d-ce5a6cd48caf@cpansec.org>
Date: Fri, 8 May 2026 08:45:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Robert Rothenberg <rrwo@cpansec.org>
Content-Language: en-GB, en-ZA
To: cve-announce@security.metacpan.org, oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-GND-Sasl: rrwo@cpansec.org
X-GND-Score: 0
X-GND-Cause: dmFkZTF/L4BH392kdC8tJ+d7X+N792djtR/fok5kgLZ9QzTiYj5kqOVpvfN+BQcpuGdVbUUNYPr0k/jASHyr3bG8RjQcouxCe85R44Xv3+Y41Fb6gvtxZArm1pcjoI/N598wu3HKJTNuPttDd6Wrmgn62lH29PH7U8bFomiK5MDv9799bKP7L5VJbj6PpspaDzKAvVJfcpWARkPwcUXatUilvzxH3Hw7Eh9D3t4wIxgRzKOUu//CJXzcB4gu72H9PzQTLn48rvfOKKiGuKfKtEwBQjmwnB/+KTiTLfzGJ6uF2mN1De3Ukbiqzgu1X/rsmjrt2Mw3dW05YRN/anfI6EWfwuAJpgtTIv4k6iNQspfDNtUU6HjiqNLIuqXepxddhnwMCtKWuX07LnwLszb9gSPAE/su5qp0VKQHTZO5ug6s3TJnYeROwl+LB9OucWh84qMS+erXGlXEDrgz83J+43eB1cwUEUcBxEqaAcjd9dPTCegUTG2zg7iqu6A+ESQ6E9RtVHq9aCzAyCItoiNBiWx/q2Ek8fr/jHKqbJfovldHHNTNyOVqXtnFCsj8wySbg/gsvSwWcqLyzwuvAU7Llum8etMST+WAA3/9ahQUJngbEi/bowXQhBLo10S5EgLJb/UBFqJ/Lcr2A4Da1k4kZa3c8xHbt0dO1olEnI/sRcHS5VSpsg
X-GND-State: clean
Subject: [oss-security] CVE-2013-10075: Apache::Session versions through 1.94 for Perl
 re-creates deleted sessions

========================================================================
CVE-2013-10075                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2013-10075
   Distribution:  Apache-Session
       Versions:  through 1.94

       MetaCPAN:  https://metacpan.org/dist/Apache-Session
       VCS Repo:  http://github.com/chorny/Apache-Session


Apache::Session versions through 1.94 for Perl re-creates deleted
sessions

Description
-----------
Apache::Session versions through 1.94 for Perl re-creates deleted
sessions.

The session stores Apache::Session::Store::File and
Apache::Session::Store::DB_File will create a session that does not
exist.    This can lead to sessions being revived, potentially with data
that was to be deleted.

Problem types
-------------
- CWE-672 Operation on a Resource after Expiration or Release

Workarounds
-----------
Use a database store based on Apache::Session::Store::DBI.


References
----------
https://rt.cpan.org/Public/Bug/Display.html?id=83525

Timeline
--------
- 2013-02-21: Issue reported

Credits
-------
Thomas Sibley, finder



