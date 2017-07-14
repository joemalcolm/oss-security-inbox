X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3057" "Friday" "14" "July" "2017" "11:09:39" "-0700" "Anthony Liguori" "anthony@codemonkey.ws" "<CA+aC4ktnyUy1KExK-zi8ptYFa-P1CQrWBRsQutue0vODuwCqVA@mail.gmail.com>" "73" "Re: [oss-security] accepting new members to (linux-)distros lists" "^Date:" nil nil "7" "2017071418:09:39" "[oss-security] accepting new members to (linux-)distros lists" (number mark "        anthony@code Jul 14   73/3057  " thread-indent "\"Re: [oss-security] accepting new members to (linux-)distros lists\"\n") "<20170714175607.GA19141@openwall.com>" ("<20170628200239.GA25525@openwall.com>" "<20170708141125.qbk5lsuq6o6bkiwy@eldamar.local>" "<20170714175607.GA19141@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26165 invoked by uid 550); 14 Jul 2017 18:12:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24347 invoked from network); 14 Jul 2017 18:09:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=codemonkey-ws.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=z9qi3pPnEHA5HZB65abA33K++kevHq7F1/KMinCSQ+4=;
        b=TkzR83gSihQaXzoNMW8GRUwByJAuFJ/orFEvl58a5mS8weyMhtIMYoo28cvcCJdDoD
         Wxep82+3pWVAYrO1pVvn2TDEYd32nz1faoxRV8YORYiHJSscV7QigQguTu2a7rOS62ss
         C6tt+aKiFLpMWJoeINVGLT/zRJcdJInsTUwGkBStvFrZjyx/pwd58hFagYhAovboXaL5
         Yi5vHHKDLf3yWFDiuoqP7CEBd6CBUjGsqOhtxursjIum85TTy4pIaYfFpmTBUGM+H1Ts
         jxIzV5/JONkVyPSifMk3f0mGPl1S7ncu76/E0UWop3k6MSrhk4G/xuMst1oQpCB3uCbI
         16Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=z9qi3pPnEHA5HZB65abA33K++kevHq7F1/KMinCSQ+4=;
        b=fYaYJYaYGQvI8veBLyOlpd6GJvBi55tG+lXbvhqTVu8iBF1qjMPv2mNDEExkpXOyMl
         6Mxl1Hhm/L5acUCk+Dblral1UDTnNScQZPMOUzszhy3/qTNkfiy9AE5CIam5LCcEAZFj
         GkVQRF9rB8gbHY7FQaDU+2ofwEAnMdainP/V1U5lJuqTd3BHDPQlHRvrGeMfhjfpcxbI
         IETadA8Qg/aoF8eGidQTsZfc5aKJNPwkIm5oWhUJKDrFs0IMcI+je1fGXz+P7mTZNShv
         WDuhBUMd8bKamSRRlHrHp9JMKqAofKQj0G3r9FAmHrTqmXotePmffDqlw22IJk+FcHgW
         BgYw==
X-Gm-Message-State: AIVw111PpyY4qrtHEJX/aWOxX59JJtKXSyidEMKCfBS7KMa1hIHUmLN5
	e91WGpMjw3y5TD2kN19q0az98CyeUwgF
X-Received: by 10.46.33.149 with SMTP id h21mr1360105lji.83.1500055780844;
 Fri, 14 Jul 2017 11:09:40 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170714175607.GA19141@openwall.com>
References: <20170628200239.GA25525@openwall.com> <20170708141125.qbk5lsuq6o6bkiwy@eldamar.local>
 <20170714175607.GA19141@openwall.com>
Message-ID: <CA+aC4ktnyUy1KExK-zi8ptYFa-P1CQrWBRsQutue0vODuwCqVA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Fri, 14 Jul 2017 11:09:39 -0700
From: Anthony Liguori <anthony@codemonkey.ws>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] accepting new members to (linux-)distros lists
To: oss-security@lists.openwall.com

On Fri, Jul 14, 2017 at 10:56 AM, Solar Designer <solar@openwall.com> wrote:
> On Sat, Jul 08, 2017 at 04:11:25PM +0200, Salvatore Bonaccorso wrote:
>> On Wed, Jun 28, 2017 at 10:02:40PM +0200, Solar Designer wrote:
>> > 6. If CVE IDs are requested, the report is valid, and you're a CNA,
>> > assign those (requesting any required information from the reporter
>> > first)
>> >
>> > 7. If the report does not mention CVE IDs (neither requests nor provides
>> > them, and doesn't mention the reporter having requested them elsewhere),
>> > yet the report is valid and it looks like distros will need CVE IDs, and
>> > you're a CNA, ask the reporter whether they have already requested CVE
>> > IDs elsewhere, then assign those if they haven't been requested
>> > elsewhere
>>
>> Speaking for Debian: Debian beeing a CNA can *help* monitoring those
>> explicitly and assign where needed CVEs from the assigned pool.
>
> I've listed Debian as backup for the two CVE tasks above.  I've also
> listed Red Hat as primary for these two tasks, based on Red Hat's
> contributions so far.  And I've listed Cloud Linux and Gentoo beside
> the tasks they kindly volunteered for in postings in here.
>
> I see that Gentoo is already active at their tasks, including reminding
> reporters to post to oss-security and taking care of the SPICE posting
> (when the reporter wasn't available to make it on time):
>
> http://www.openwall.com/lists/oss-security/2017/07/14/1
>
> as well as collecting statistics.  Thanks!
>
>> We are already as well contributing to other tasks, and will continue
>> to do so as time permits.
>
> Thank you!
>
> However, many tasks remain vacant, with no distro responsible for them.
> This doesn't mean they're not getting done - just that no particular
> distro is responsible - yet that's something I'd like to see change.
>
> Specifically, all 6 of the technical tasks and 5 of 13 administrative
> tasks are now fully vacant.  Additionally, 11 of the administrative
> tasks have no backup.

We (Amazon Linux) are very happy to fill in whatever gaps are needed.

Most of the places where that can be done most effectively already
have a primary.  I hate to just sign up to be backup but if we did
that, we would track independently to ensure nothing got missed.

So maybe backup for administrative tasks 9-13 and then we can be
primary for technical task 3?  We already test all of these fixes so
responding with a report of the testing we've done is straight forward
enough.

Regards,

Anthony Liguori

>
> These distros have no task assigned: ALT Linux, Amazon Linux AMI, Arch
> Linux, Chrome OS, Openwall, Oracle, Slackware, SUSE, Ubuntu, Wind River,
> FreeBSD, NetBSD/pkgsrc.
>
> Openwall might be exempt for now for us running the lists and being the
> last resort fallback for most tasks. ;-)  The rest should volunteer for
> some tasks now!
>
> Red Hat almost made this list, except that I listed them for the two CVE
> tasks on my own.
>
> http://oss-security.openwall.org/wiki/mailing-lists/distros#contributing-back
>
> Alexander
