X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/03/07/3
Message-ID: <20130307091905.GA29496@openwall.com>
Date: Thu, 7 Mar 2013 13:19:05 +0400
From: Solar Designer <solar@...nwall.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Requests (maybe): Linux kernel: various info leaks, some NULL ptr derefs
Content-Type: text/plain; charset=utf-8

Kurt -

On Thu, Mar 07, 2013 at 02:13:37AM -0700, Kurt Seifried wrote:
> Bundling the following into a single CVE:
[...]
> Please use CVE-2012-6138 for these issues.

I think this is wrong.  I would understand if those issues were all in
the same subsystem at least (or if you assigned per-subsystem CVE IDs
for these), but this is not the case.  Many distros will fix some, but
not the others, or not all at the same time.  There's room for a little
bit of bundling here, but not that much.

Alexander
