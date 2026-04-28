Received: (qmail 7344 invoked by uid 550); 28 Apr 2026 16:25:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26309 invoked from network); 28 Apr 2026 11:50:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1777377026;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=d19PzcC/En1yzTxR3MuXxeNkxnmqe67XG6HM66/5WCs=;
	b=EajYmIugY7lT4zsWTqg74poL5UEmC0BhArRXPo9ZREBhiGTcCMWyfesAMHPVKtlw/fmnrC
	PGrIj0iupMeamhcB248Op/ELGWJqhUvlZjo++23ZSa1v7spHr954r7Wawd/P57Su8vbNS3
	T36X+v/1BiFWAL+fN6vTS1lOt7VRBgI=
X-MC-Unique: 3pEmxz-sNuWULZaJTahxNg-1
X-Mimecast-MFC-AGG-ID: 3pEmxz-sNuWULZaJTahxNg_1777377025
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777377024; x=1777981824;
        h=content-transfer-encoding:organization:subject:from:to
         :content-language:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=d19PzcC/En1yzTxR3MuXxeNkxnmqe67XG6HM66/5WCs=;
        b=QnMOG5ESvvV3zCt6Xy+DWnHfduxJARX2Cig3Hj6yQA/hgO/fc8orbWltGj26vFH/Hs
         G19ZqzI42eTO/eHJ3rixM+/O3erBn3H8VYyAEk1OeDZmqNEfpGexN7yalttAibOaZtlr
         Z3DbC8/BqpgdbK8gxcLWrhpTloOWijPQ1IXXaqRplQl9ACdl659xtmvRrHYZ2y28aG9Z
         0J9Y1vrjNJqBCZXkICAGTleucvjTi4Q+fBHrBA/O/ZHzoys+zjRdtbj/mNL8iqUqNPv0
         eQScJroQcN1vyQ+wYTlLnkB7S8HKrMIhmt9a6LwtubCvMzl1ah/px6YoIymP1fTcHaLn
         a2Hw==
X-Gm-Message-State: AOJu0YwVe5hyGqmVlGn/aNrDbnhvqK0Ii/MkfPPua4i7DEW+7GZLuPUr
	ZPXCxdTYMvXuPoyE2rbAWxQUVuFFop2wBhJnZVmFaCLx/GOAF4vTlXpE9YPdVkv2V4xMqLvjdRf
	zLwaLITeh9mUllo0jxY/sp2U2HTTnBF+bnGHBLJPiAEXcE25AhIEiasm+WoH144AJ0/sxdGatmv
	NxMNk8ICFKpo4MtXoDrXjqs7b4X4huYtGPlYn+5WSsNRFLcz7o34k=
X-Gm-Gg: AeBDiesDkLzXO0TkQFYDulcqpiU9Lm8XfxUBcKc7xvG9lsSdGvornq6K1rtWZfWbsDD
	Anmvd7jCQZDNzpywsfj9TwHUFj+P9E6Qq3erKmbEmdAA5qjkWg0sUtiAtnf7YiVChcC8P2wjE+P
	RFzRDLBkysNJLlTePdM0AhN4o3AS+rIDVL/nriO+bEtYfr4o6kFDIiQbMfeq4MRQ0a3SWEYnDdE
	LBLzbHvjoV5O84AKy72Hg/5UT9v6AjS90NUrFtubGQl7U5FSDKG1JyFPdi/YqZ22B/vA6tKPLcD
	Hh/6Lwt1LpmCASm4FbWnVYxAbehmamixB2NJZF7wVrTkZTeJRIf6YozuiuGMyUQ3o9rhAPq92NP
	sfKXjQYKFfAJTDgrFRA/8O34GletVExVMzZliPjxUBDU6MerZTDZz3RFEDUfdtG81NVVFcuNqlF
	OoE0H0FcfJ0tMTczINexOx1304VI4kzJKy
X-Received: by 2002:a05:6214:5098:b0:8ae:6110:7536 with SMTP id 6a1803df08f44-8b3e3000c1fmr43029266d6.19.1777377024247;
        Tue, 28 Apr 2026 04:50:24 -0700 (PDT)
X-Received: by 2002:a05:6214:5098:b0:8ae:6110:7536 with SMTP id 6a1803df08f44-8b3e3000c1fmr43028376d6.19.1777377023457;
        Tue, 28 Apr 2026 04:50:23 -0700 (PDT)
Message-ID: <3e735842-546e-4f11-b69f-208078a87341@redhat.com>
Date: Tue, 28 Apr 2026 07:50:22 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
From: Carlos O'Donell <carlos@redhat.com>
Organization: Red Hat, LLC.
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: IeYoOvjvZLaZS7u2lvhoFwaEFygBk_1uSG-bY_6ANiE_1777377025
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] The GNU C Library security advisories update for 2026-04-28

The following security advisories have been published:

GLIBC-SA-2026-0011:
===================
Potential buffer overflow in ns_sprintrrf TSIG handling path

The deprecated functions ns_printrrf, ns_printrr and fp_nquery in the
GNU C Library version 2.2 and newer fail to enforce the caller-supplied
buffer length, and can result in an out-of-bounds write when printing
TSIG records.

A defect in the TSIG case handling within ns_sprintrrf performs a
formatted write using sprintf without checking the remaining buffer
length, and may write up to 6 bytes past the end of the buffer.  If the
library is compiled with assertions, and the out-of-bounds write doesn't
terminate the process, then a subsequent check for "len <= *buflen" will
trigger an assertion failure.

These functions are for application debugging only and hence not in the
path of code executed by the DNS resolver. Further, they have been
deprecated since version 2.34 (2021-08-02) and should not be used by any
new applications.  Applications should consider porting away from these
interfaces since they may be removed in future versions.

CVE-Id: CVE-2026-5435
Public-Date: 2026-04-02
Vulnerable-Commit: b43b13ac2544b11f35be301d1589b51a8473e32b (2.2)
Reported-by: shinobu

GLIBC-SA-2026-0012:
===================
Buffer overread in ns_printrrf with corrupted RDATA field

The deprecated functions ns_printrrf, ns_printrr and fp_nquery in the
GNU C Library version 2.2 and newer fail to validate the RDATA content
against the RDATA length in a DNS response when processing LOC, CERT,
TKEY or TSIG records, which may allow an attacker to craft a DNS
response, causing a target application to crash or read uninitialized
memory.

These functions are for application debugging only and hence not in the
path of code executed by the DNS resolver.  Further, they have been
deprecated since version 2.34 and should not be used by any new
applications.  Applications should consider porting away from these
interfaces since they may be removed in future versions.

CVE-Id: CVE-2026-6238
Public-Date: 2026-04-11
Vulnerable-Commit: b43b13ac2544b11f35be301d1589b51a8473e32b (2.2)

Notes:
======

Published advisories are available directly in the project git repository:
https://sourceware.org/git/?p=glibc.git;a=tree;f=advisories;hb=HEAD

