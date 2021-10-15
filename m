X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/10/16/1
Message-ID: <CAKQ1sVPSjUzdxyb7n7xa5bPzPV4xwXg7cgniwNeuyhg46dBjwQ@mail.gmail.com>
Date: Sat, 16 Oct 2021 01:31:50 +0200
From: Yann Ylavic <ylavic.dev@...il.com>
To: Roman Medina-Heigl Hernandez <roman@...labs.com>
Cc: oss-security@...ts.openwall.com
Subject: Re: CVE-2021-42013: Path Traversal and Remote Code Execution in Apache HTTP Server 2.4.49 and 2.4.50 (incomplete fix of CVE-2021-41773)
Content-Type: text/plain; charset=utf-8

Hi Román,

On Fri, Oct 15, 2021 at 8:01 PM Roman Medina-Heigl Hernandez
<roman@...labs.com> wrote:
>
> Re [1], I think this:
>
> "critical: Path traversal and file disclosure vulnerability in Apache HTTP Server 2.4.49 (CVE-2021-41773)"
>
> is still misleading and should read:
>
> "critical: Path traversal and Remote Code Execution vulnerability in Apache HTTP Server 2.4.49 (CVE-2021-41773)"

I (for one) would argue that admins/vendors that ship a RCE-vulnerable
custom configuration should reserve a CVE like this to notify their
users.
httpd does not, at least.

Cheers;
Yann.
