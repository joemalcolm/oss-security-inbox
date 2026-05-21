Received: (qmail 32229 invoked by uid 550); 21 May 2026 23:38:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15745 invoked from network); 21 May 2026 21:08:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1779397696;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Q/GAxyhocitMO5CfKQwI4UstLWA8jm5nipkFHm0c7rY=;
	b=QNdlb7PC3BZ2qbx4V6IsuZlEwhbDRAQsItg81Fqq7czwr6Oc8am4de9x2UNSfdf1GfiDz6
	M4QhcbJz4FtCVPmQgejvpgvFl8UJpfAn4WOybcy4nmE3IRAyhmdq5gGhL/uVyT03uqIGLd
	H2ykOTg+JLicMnjr65MwlREcYEtX3MzoUA1sP1lUdQsEtxj4qqYJE4kN53FcuzHpFYF0XV
	h/KUZGKGfKhHjh8tHHfH6n2sNLG3YxzQt9eZGTPDa/zuqjgsJNjkkvmsFavQcEpk+X2wNe
	edQuodHLhK0xZ3AkMKPmpBAIESpd7vtcDZhBDNcFsjfmwfKRTZhiVkuJiMmzmA==
Message-ID: <d0effbe5-53cf-4a02-a7e2-5a90ff875cc9@cpansec.org>
Date: Thu, 21 May 2026 22:08:15 +0100
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
X-GND-Cause: dmFkZTFFBAVWcgt4TTifyUVD/GG686ydMH4Wf6Ye8CBFj4wQJs0N39yCfhgXS8p/0cE2noH6RSGjMBdzeMwVs8yaaaKIpmPD6Mm2H9+HTIJ+wWNBDpOQ0yr/pFhdQrCJsfGxCbD357eA/u/vm8qeUU4MnVrwnZF/jkHbsfB3hhWmm5WdL1PEwLeNUQSHV3Qt0PvDG4eLZY/V1NeXi9Y0V76jNTr/KuWsFgMcLWwzHyRDgt84sEKDdB0VkzN7ezBJkY5Fbwunb2Id/Bl6JzyNc0F7sJ6z9L75aJZsSYAh4hbHiLAw3nQcRiZmJEvyn+5aAJQnEJdfE8LfTPVsaUPPfAaQkbToVpeklRwl2j4/g5fxIK6G4FVFIjfoZZDDA71kQ0ZFLvS2Klay90swBqO953XNQEGm0XDFV69P/1AnLKQygo7VgiGIh2bojx8nGTWNzklFigcWbyeJ6YIJRbl0WeUF/63Y+XH34oCzzTEov2gV04/QcTvD6dCfg8sJ17Ctk72XqftkGRcnVvu/hqLskktgcwup7WCY+OAhlnbNvuXjTKBMcJaV4QI9hwby8NY80J4slUCUqYIqUY0h9etyctw4OAoL0xj+8hFsJrWd17Cgu/wDN0exwEXG6RSOcqt2O3sB8W7t2yR2/ZamE26+0U/RE0i3G+taXhubqB61xaB6HNyTtg
Subject: [oss-security] CVE-2026-5091: Catalyst::Plugin::Authentication versions through
 0.10024 for Perl is susceptible to timing attacks

========================================================================
CVE-2026-5091                                        CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-5091
   Distribution:  Catalyst-Plugin-Authentication
       Versions:  through 0.10024

       MetaCPAN: https://metacpan.org/dist/Catalyst-Plugin-Authentication
       VCS Repo: 
https://github.com/perl-catalyst/Catalyst-Plugin-Authentication


Catalyst::Plugin::Authentication versions through 0.10024 for Perl is
susceptible to timing attacks

Description
-----------
Catalyst::Plugin::Authentication versions through 0.10024 for Perl  is
susceptible to timing attacks.

These versions use Perl's built-in eq comparison. Discrepencies in
timing could be used to guess the underlying hash or password.

Problem types
-------------
- CWE-208 Observable Timing Discrepancy

Solutions
---------
Upgrade to version 0.10026 or later.


References
----------
https://metacpan.org/release/ETHER/Catalyst-Plugin-Authentication-0.10_025/changes
https://github.com/perl-catalyst/Catalyst-Plugin-Authentication/commit/b0515f492257438cf07082acf1e10d06e8088a5e.patch



