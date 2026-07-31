X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/31/13
Message-ID: <e696b170-4492-40e8-9675-f380a67f6890@oracle.com>
Date: Fri, 31 Jul 2026 11:22:46 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com, Sebastian Pipping <sebastian@...ping.org>
Subject: Re: Some Changes to GNOME Security Tracking
Content-Type: text/plain; charset=utf-8

On 7/31/2026 4:01 AM, Sebastian Pipping wrote:
> On 7/30/26 23:41, Alan Coopersmith wrote:
>> https://blogs.gnome.org/mcatanzaro/2026/07/20/some-changes-to-gnome- 
>> security-tracking/
>> announces some changes to the GNOME project's security bug handling:
>>
>> 1) The disclosure deadline is cut from 90 days to 30 days, as most
>>     GNOME maintainers that fix bugs during the embargo do so within
>>     the first 30 days.  This is effective for new bugs reported starting
>>     August 1.
> 
> I hope that new approach won't be copied by other projects: I would
> certainly not be amused about a 30 days deadline where it affects me, in
> particular not with sometimes multiple cases coming in at nearly the 
> same time. If most issues are resolved within a 30 days window in GNOME,
> that's not saying that cutting down the window will work well for all
> projects involved, and the post seems to lack a good rationale about it.
Notably he's not saying most are resolved within 30 days, just that if
it's not resolved in the first 30 days, the rest of the time is wasted,
with very few being resolved in the 31-90 day window, and most that
missed 30 days going public unfixed after 90 days.  You can look at
https://gitlab.gnome.org/Teams/Releng/security/-/wikis/home to see if
the data backs him up there.

He also points to the growing number of projects, such as the Linux
kernel, not applying embargoes at all to AI generated reports, since
the AI models can regenerate those reports for anyone who asks.

-- 
         -Alan Coopersmith-                 alan.coopersmith@...cle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

