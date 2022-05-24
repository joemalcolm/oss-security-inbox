X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/05/24/11
Message-ID: <trinity-4c518dcc-751b-4893-82dc-b2f80734eb9d-1653430844824@3c-app-gmx-bap13>
Date: Wed, 25 May 2022 00:20:44 +0200
From: Norbert Slusarek <nslusarek@....net>
To: Solar Designer <solar@...nwall.com>
Cc: oss-security@...ts.openwall.com, peterz@...radead.org
Subject: Re: CVE-2022-1729: race condition in Linux perf subsystem leads to local privilege escalation
Content-Type: text/plain; charset=utf-8

Hello Alexander,

>Since you shared actual exploit code on linux-distros, you're supposed
>to also post that to oss-security within 7 days of your first posting
>above, so by or on May 27. Do you intend to?

I don't intend to share the exploit to the public, mainly because
the issue was fixed only few days ago. Instead, anyone wanting to check
his own system for the bug should resort to the attached PoC repro.

>I realize this is one of the aspects that not everyone is happy about.

Yes, you got that right.


Norbert
View attachment "repro.c" of type "text/plain" (1613 bytes)
