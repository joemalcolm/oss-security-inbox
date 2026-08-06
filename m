X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/06/4
Message-Id: <DKHYUYT29ZY0.29UIF03ZMHF70@redcoat.dev>
Date: Thu, 06 Aug 2026 16:29:42 +0100
From: "Emily Shepherd" <emily@...coat.dev>
To: <oss-security@...ts.openwall.com>
Subject: Re: CVE-2026-64564: Linux SCTP ASCONF transport UAF leading to local privilege escalation and container escape
Content-Type: text/plain; charset=utf-8

On Thu Aug 6, 2026 at 12:33 PM BST, Fourie Zhang wrote:
> Hi all,
>
> We are publishing details of SCTPhantom, CVE-2026-64564, a use-after-free
> in Linux SCTP Dynamic Address Reconfiguration.
>
> Impact:
> - Local low-privileged user -> root on affected systems.
> - Container -> host root.

I notice there is no mitigation section in the write up. Can you confirm 
if unloading / blacklisting the sctp module - on a system where this 
isn't built into the kernel - would protect against this exploit.

Thanks,

Emily
