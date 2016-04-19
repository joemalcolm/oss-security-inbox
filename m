X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/04/19/4
Message-ID: <CAOp4FwSKvWciC-4K3ob7kT5-Ytm2SkmgPbPEc0qJKL0NAtEHPA@mail.gmail.com>
Date: Tue, 19 Apr 2016 18:37:34 +0400
From: Loganaden Velvindron <loganaden@...il.com>
To: oss-security@...ts.openwall.com
Cc: CVE Assignments MITRE <cve-assign@...re.org>
Subject: Re: CVE Request: imlib2: integer overflow resulting in insufficient heap allocation
Content-Type: text/plain; charset=utf-8

I think that this shows how useful it is for any libc to have a
function like OpenBSD's reallocarray(), which prevents these.
