X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/10/08/2
Message-ID: <09205bd9-a5b6-48db-81ec-064d77e94248@cispa.de>
Date: Sun, 8 Oct 2023 08:55:51 +0200
From: Michael Schwarz <michael.schwarz@...pa.de>
To: Solar Designer <solar@...nwall.com>
CC: <oss-security@...ts.openwall.com>, <fabian.thomas@...pa.de>, <lukas.gerlach@...pa.de>, <ruiyi.zhang@...pa.de>, Daniel Weber <daniel.weber@...pa.de>
Subject: Re: Meltdown-US / Meltdown 3a Remaining Leakage
Content-Type: text/plain; charset=utf-8

Hi Alexander,

On 07.10.23 00:18, Solar Designer wrote:
> In Linux, /proc/interrupts is generally world-readable.  So perhaps
> that's something to fix first, since yes it's known to allow for
> keystroke timing attacks.  Should be fixed in the kernel or/and chmod'ed
> by the userland.  And then:
Yes, that is true. Android, for example, prevents unprivileged access 
since version 8 to this file to prevent such attacks:

https://issuetracker.google.com/issues/37140047?pli=1

If our proposed mitigation is implemented (e.g., as opt-in using a 
kernel command-line parameter), the implementation could additionally 
prevent unprivileged access to /proc/interrupts.

Michael

-- 

Dr. Michael Schwarz
Faculty

CISPA Helmholtz Center for Information Security
Stuhlsatzenhaus 5, Saarland Informatics Campus
66123 Saarbrücken, Germany
Mail: michael.schwarz@...pa.de
Web: https://www.cispa.saarland

