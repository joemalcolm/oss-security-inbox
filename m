X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/15/1
Message-ID: <878q68vzsj.fsf@gmail.com>
Date: Fri, 14 Aug 2026 20:16:28 -0700
From: Collin Funk <collin.funk1@...il.com>
To: oss-security@...ts.openwall.com
Cc: Tristan <TristanInSec@...il.com>,  Simon Josefsson <simon@...efsson.org>
Subject: Re: GNU Inetutils talkd buffer overflow with long DNS names.
Content-Type: text/plain; charset=utf-8

Collin Funk <collin.funk1@...il.com> writes:

> ## Timeline
>
>     2026-07-02: Report sent to inetutils-security@....org
>     2026-07-02: I (Collin Funk) acknowledged the report and asked a few
>                 questions regarding the issue.
>     2026-07-04: Tristan answered those questions.
>     2026-07-06: I reproduced the issue updated Tristan with a planned
>                 timeline for the fix and CVE assignment.
>     2026-07-08: Tristan agreed to the timeline and offered to review the
>                 patch.
>     2026-07-11: I wrote the patch and sent it to Tristan.
>     2026-07-15: Tristan confirmed the patch worked as expected.
>     2026-07-16: Private mail to distros mailing list along with the patch.
>     2026-07-24: I wrote this report and sent it to oss-security.
>
> Note that I also requested a CVE when emailing distros, but haven't
> heard back. I'll probably reach out privately to a CNA in a bit, and
> will update here once one is assigned.

Red Hat assigned CVE-2026-19720 to this issue yesterday, 2028-08-13.

Collin
