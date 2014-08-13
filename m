X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/08/13/2
Message-ID: <CALCETrWiPOM40ucrk_YWiYTY=3yk4RhCSBUQ=0s=gXR-tgiMUQ@mail.gmail.com>
Date: Tue, 12 Aug 2014 22:43:00 -0700
From: Andy Lutomirski <luto@...capital.net>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request: ro bind mount bypass using user namespaces
Content-Type: text/plain; charset=utf-8

On Tue, Aug 12, 2014 at 10:04 PM, Andy Lutomirski <luto@...capital.net> wrote:
> On Tue, Aug 12, 2014 at 4:54 PM, Andy Lutomirski <luto@...capital.net> wrote:
>> On 08/12/2014 02:48 PM, Kenton Varda wrote:
>>> Due to a bug in the Linux kernel's implementation of remount, on systems
>>> with unprivileged user namespaces enabled, it is possible for an
>>> unprivileged user to gain write access to any visible read-only bind mount.
>>> It is also possible to bypass flags like nodev, nosuid, and noexec.

...

>
> Yup.  I have a fairly reliable exploit now.  Will post the code in a
> couple of weeks.

To clarify: my exploit has nothing to do with sandboxing.  It roots
default-ish configurations of Fedora 20 and Ubuntu 14.04.

--Andy
