Received: (qmail 22080 invoked by uid 550); 5 Nov 2025 00:09:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20168 invoked from network); 5 Nov 2025 00:09:46 -0000
Date: Wed, 5 Nov 2025 01:09:46 +0100
From: Solar Designer <solar@openwall.com>
To: Amos Jeffries <squid3@treenet.co.nz>
Cc: oss-security@lists.openwall.com
Message-ID: <20251105000946.GA30872@openwall.com>
References: <6b3baf54-147d-4dce-a2c8-3cf77181030d@treenet.co.nz>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6b3baf54-147d-4dce-a2c8-3cf77181030d@treenet.co.nz>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] [CVE-2019-18860] SQUID-2023:6 Cross Site Scripting in cachemgr.cgi

Hi,

Thank you for posting this, but I'm afraid it is confusing:

On Wed, Nov 05, 2025 at 11:26:14AM +1300, Amos Jeffries wrote:
>     Squid Proxy Cache Security Update Advisory SQUID-2023:6

> Advisory ID:       | SQUID-2023:6 (CVE-2019-18860)
> Date:              | November 5, 2025

OK, so it's an advisory from 2023 for a CVE from 2019 (or for an issue
first disclosed in 2019), which was updated in 2025.  This brings up the
question of what those updates in 2025 are...

> Revision history:
> 
>  2019-10-18 20:15:14 UTC Initial Report
>  2019-11-03 16:22:22 UTC Initial Patches Released
>  2020-03-31 11:07:35 UTC Additional Report

...but the revision history starts in 2019 (before the advisory year?!)
and ends in 2020.

I also found this advisory at:

https://github.com/squid-cache/squid/security/advisories

where it's the only one "published" (or updated?) very recently:

> SQUID-2023:6 Cross Site Scripting in cachemgr.cgi
> GHSA-xxrg-5p7x-r66h published 1 hour ago by yadij

I also see a couple of SQUID-2025 advisories, one from July 31 and the
other from October 17, 2025.  Both have Critical CVSS severities.

I don't recall you bringing them to here?  Perhaps do that now?

> SQUID-2025:2 Information Disclosure in Error handling
> GHSA-c8cc-phh7-xmxr published 3 weeks ago by yadij
> Critical
> 
> SQUID-2025:1 Buffer Overflow in URN Handling
> GHSA-w4gv-vw3f-29g3 published on Jul 31 by yadij
> Critical

I think it's unreasonable to go further back now, but posting these two
recent ones should be beneficial.

Thanks,

Alexander
