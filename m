X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2015/01/27/12
Message-ID: <CALx_OUBvSjVFY06HYtuRHH-y0R=FD=mBiqTg-EH5uL-ALeWQiw@mail.gmail.com>
Date: Tue, 27 Jan 2015 09:20:21 -0800
From: Michal Zalewski <lcamtuf@...edump.cx>
To: oss-security <oss-security@...ts.openwall.com>
Subject: Re: Qualys Security Advisory CVE-2015-0235 - GHOST: glibc gethostbyname buffer overflow
Content-Type: text/plain; charset=utf-8

Nice work - thanks for the thoroughly investigated and detailed advisory.

Given the constraints, I'm assuming that Exim was the only obviously
remotely exploitable case that you were able to identify? I'd imagine
that you investigated OpenSSH, Apache, other SMTP agents, etc? Would
you be willing to publish the list of the reviewed implementations to
reduce the amount of repeated work?

/mz
