X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/01/29/6
Message-ID: <7835816e-4c5d-94a7-0de3-4b69fe7f4cb7@orlitzky.com>
Date: Mon, 29 Jan 2018 11:29:14 -0500
From: Michael Orlitzky <michael@...itzky.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE-2017-18078: systemd-tmpfiles root privilege escalation with fs.protected_hardlinks=0
Content-Type: text/plain; charset=utf-8

On 01/29/2018 11:13 AM, Florian Weimer wrote:
> On 01/29/2018 05:09 PM, Michael Orlitzky wrote:
>> Correction to the CVE-ID: it's 2017, not 2018. So CVE-2017-18078.
> 
> Isn't it a duplicate of CVE-2013-4392?
> 

They look pretty similar. The symlink issue was fixed as far as I can
tell -- I tried to exploit them, and failed. The tmpfiles code is using
a clever trick:

  xsprintf(fn, "/proc/self/fd/%i", fd);
  ...
  if (chown(fn, ...

On Linux, the proc stuff is magic, and that just does the right thing,
even though a priori it looks like "chown" will follow symlinks.

Hard links were a different story, and there was no attempt made to
avoid them outside of relying on the fs.protected_hardlinks sysctl. So
if the administrator disables that protection, there's no safety net.

Did you cover the hard link problem in CVE-2013-4392, too? Regardless,
there is now some extra protection built-in to tmpfiles to reduce the
risk when the sysctl is disabled.

