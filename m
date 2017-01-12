X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/01/12/6
Message-ID: <234c46c2-a4a9-4f65-d65e-e3bd5152fd0e@redhat.com>
Date: Thu, 12 Jan 2017 13:10:41 +0100
From: Florian Weimer <fweimer@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: invalid free in GNU ed before 1.14.1
Content-Type: text/plain; charset=utf-8

On 01/12/2017 12:14 PM, Hanno Böck wrote:
> Hi,
>
> ed 1.14.1 fixes an invalid free, reported here:
> https://lists.gnu.org/archive/html/bug-ed/2017-01/msg00000.html
>
> Reproducer:
> echo -e "H\n?\{" | ed
>
> Found with afl. ed 1.14.1 didn't show any more issues with afl/asan
> fuzzing.
>
> Not sure if there's any scenario where ed is used with untrusted input.

There is red/ed -r.  I wouldn't rely on it for security isolation, but 
the functionality does exist.

(Debian's APT uses ed scripts for package list diffs, but it doesn't use 
ed to apply them.)

Thanks,
Florian
