X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3610" "Friday" "20" "March" "2015" "16:49:05" "-0700" "Alan Coopersmith" "alan.coopersmith@oracle.com" "<550CB1F1.6020007@oracle.com>" "62" "Re: [oss-security] membership request  to the closed linux-distros security mailing list" nil nil nil "3" "2015032023:49:05" "[oss-security] membership request to the closed linux-distros security mailing list" (number mark "        alan.coopers Mar 20   62/3610  " thread-indent "\"Re: [oss-security] membership request  to the closed linux-distros security mailing list\"\n") "<44B34D40-6E09-4FEE-A4DE-E06C7FBC9118@oracle.com>" ("<550C19ED.9030901@enea.com>" "<20150320145413.GA10416@openwall.com>" "<44B34D40-6E09-4FEE-A4DE-E06C7FBC9118@oracle.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31809 invoked by uid 550); 20 Mar 2015 23:49:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31789 invoked from network); 20 Mar 2015 23:49:20 -0000
Message-ID: <550CB1F1.6020007@oracle.com>
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:17.0) Gecko/20150125 Thunderbird/17.0.11
MIME-Version: 1.0
References: <550C19ED.9030901@enea.com> <20150320145413.GA10416@openwall.com> <44B34D40-6E09-4FEE-A4DE-E06C7FBC9118@oracle.com>
In-Reply-To: <44B34D40-6E09-4FEE-A4DE-E06C7FBC9118@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Source-IP: userv0021.oracle.com [156.151.31.71]
CC: John Haxby <john.haxby@oracle.com>
Date: Fri, 20 Mar 2015 16:49:05 -0700
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] membership request  to the closed linux-distros
 security mailing list
To: oss-security@lists.openwall.com

On 03/20/15 02:58 PM, John Haxby wrote:
>> On 20 Mar 2015, at 14:54, Solar Designer <solar@openwall.com> wrote:
>>
>> BTW, we may need to discuss whether Oracle's subscription is for their
>> Linux distro only or also for Solaris.  So far, I refused to subscribe
>> an extra person for them who was not involved in their Linux distro,
>> since I felt their subscription had only been approved by this community
>> for Oracle Linux and not for Solaris.
>
> It’s for the linux distro variants, exclusively.  The Solaris team have their own security contacts and I’m not one of them.

I was under the impression that members of the Oracle Security Alerts team were 
representing both Oracle Linux & Solaris on the distros list.  If a specific
Solaris engineer is needed on a list, it would probably be me, as the current
lead engineer for security assurance in Solaris engineering, but I've been okay
letting the security alert team handle it.  If I misunderstood, and Solaris is
not supposed to be getting notified, I'd like to fix it so we can be.

http://oss-security.openwall.org/wiki/mailing-lists/distros doesn't mention
any reason Solaris would be excluded - I do see Apple isn't there, which would
probably be the closest OS to the Solaris model of shipping a lot of FOSS
packages around a proprietary core, but I don't know the history of why they're
not.

If you do need to filter between mostly-open-source OS'es and OS'es that just
ship a lot of FOSS, where is that line drawn?   Admittedly the Solaris core
software (kernel, libc, etc.) is no longer open source, but more than half
of the software in our package repo is FOSS.  Drawing the line at 100% pure
would exclude most Linux distros, so is it somewhere around 90% that you
cut off at?  95%?  How do you measure? Does a 25 million line proprietary
graphics driver & OpenGL stack count as just one package out of 5000, or
as 5% of a 500 million line code base?

I do participate on oss-security both for my role in Solaris and as the co-lead
of the upstream X.Org security team, for which I've sent through advisories &
answered questions.

For the other questions on this thread about why we send embargoed notices to
distros first -- X.Org does it because we've always done it and not had a
reason to change.   Admittedly the world has changed around X11 over the past
three decades - no longer is the most common X11 deployment a cluster of
professionally administered workstations in an engineering firm or University,
where breaching the X server to get root gives you access to hundreds of other
users files, but a single user laptop or desktop where the user logged into
X probably has root already.

Most major distros that ship X11 (Red Hat, SuSE, Debian, Gentoo, Ubuntu,
OpenBSD, Solaris, MacOS, etc.) do know about X.Org vulnerabilities earlier
than the distros list members, since they have X developers participating in
our private security list evaluating the bug reports and reviewing the proposed
fixes, so they wouldn't lose out if we started skipping the distros list and
went public straight away, but the smaller distros that don't participate
upstream would lose advance notice.  Do any of them care if X11 vulnerabilities
go public before they can prepare a patch? If not, it simplifies our life to
remove a stage from the embargo/release process.

[As usual, the preceding is solely my opinion, and is not necessarily
  representative of the rest of either Oracle or the X.Org Foundation.]

-- 
	-Alan Coopersmith-              alan.coopersmith@oracle.com
	 Oracle Solaris Engineering - http://blogs.oracle.com/alanc
