X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/17/7
Message-ID: <alnpb1x67vrzO5ru@kasco.suse.de>
Date: Fri, 17 Jul 2026 10:35:59 +0200
From: Matthias Gerstner <mgerstner@...e.de>
To: oss-security@...ts.openwall.com
Subject: Re: SELinux Userspace Utilities: Local Denial-of-Service Attack Vectors in seunshare in release 3.10
Content-Type: text/plain; charset=utf-8

Hello,

On Wed, Jul 15, 2026 at 12:48:22PM +0200, Matthias Gerstner wrote:
> 5) CVE Assignments
> ==================
> 
> We approached the upstream SELinux userspace utilities developers and
> suggested to assign CVEs for the two issues discussed above. Upstream
> informed us that they don't take care of CVE assignment themselves,
> however. Since Red Hat developers are also involved with upstream
> development, we are currently waiting for an agreement on who will
> assign CVEs to avoid duplicates.

we got a response from upstream devs by now and as a result assigned
CVEs on our end as follows:

> 3.1) Local File Deletion Attack Vector in rm_rf()

CVE-2026-59676

> 3.2) Process Kill Attack Vector in killall()

CVE-2026-59677

Best Regards

Matthias

-- 
Matthias Gerstner <matthias.gerstner@...e.de>
Security Engineer
https://www.suse.com/security
GPG Key ID: 0x14C405C971923553
 
SUSE Software Solutions Germany GmbH
HRB 36809, AG Nürnberg
Geschäftsführer: Jochen Jaser, Andrew McDonald

Download attachment "signature.asc" of type "application/pgp-signature" (871 bytes)
