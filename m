X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5004" "Tuesday" "3" "May" "2016" "14:05:36" "-0500" "Scott Balneaves" "sbalneav@ltsp.org" "<CAJC6uyt4Wa4=-_o_89ck-1gOgNSLE9AB7eGEvw4z4T6VRVrqcw@mail.gmail.com>" "128" "[oss-security] Re: CVE Request: libpam-sshauth: local root privilege escalation" nil nil nil "5" "2016050319:05:36" "[oss-security] Re: CVE Request: libpam-sshauth: local root privilege escalation" (number mark "U       sbalneav@lts May  3  128/5004  " thread-indent "\"[oss-security] Re: CVE Request: libpam-sshauth: local root privilege escalation\"\n") "<87k2jb0yc3.fsf@aikidev.net>" ("<20160501054304.GA31390@eldamar.local>" "<20160501140215.AED64332069@smtpvbsrv1.mitre.org>" "<20160503145713.GA9004@eldamar.local>" "<87k2jb0yc3.fsf@aikidev.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17639 invoked by uid 550); 3 May 2016 19:09:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14277 invoked from network); 3 May 2016 19:05:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ltsp-org.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc;
        bh=CNegTts28hhJvP0TdEgpBx2c3NXqx3i7qdjmMMul1+8=;
        b=YPdHTOOgS6bZYzknRQZphoo+/e8SZF7pjIyQr3cpr7otYhKwl8ddwyM4ARAxDYpm8t
         V0j791ck76kLWc9brwd64uZ5RgFoJ0FZuHHELW9nCwto/H/o6DmJoHHATgiDWEPuoKVG
         zRaPBo5whWromBrsTsgX2DfuDmN9ABFPC01k6vNq7McJ2xOaoAE/kszcAQkz+ZOp1suV
         TbKpbYFnaP0yfBDo4JofiwqgIQw2x2uxUJKLdM8dyBQUNj/8kf5pvoUDIAWbg9rxESQJ
         OZmTAO3L79DlJYXS8YPoWC47Fb+KdEH2Ot3jdgEPX//111/56aHUc/zSB6UPwayeMqiB
         W1GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc;
        bh=CNegTts28hhJvP0TdEgpBx2c3NXqx3i7qdjmMMul1+8=;
        b=QQGsoZkCtGhTU3n+8MvhF+FKehSQzwlC3D7ilZIOw726wPG7rRbM9XXyeIaF9nad4d
         7oSbeKLGjSsYOkUAlDJ5uj29O4TZcZIN0BqgNZAPN+fXPUhz+B+WVKKfIqW2somzw4my
         kTfAnzOdz/hEgHqQcbv9B6/yGkrnpLivpBr0mTLX0i+hLoPa7WmAmnmy6aj9wPtaAS8m
         s4Kcq4e39/ieVDqdmuxirAJmfghvGiBi18yV+yp7f+x9PmOB3kxZXgH4CrGTAJb14thU
         5TtP7uGmSHscLfQ98qX2n4b8XbbcLg4qxye1ubAfh2j0/ardpuWMFIbuOhHCV5y3lvLE
         At9A==
X-Gm-Message-State: AOPr4FUl7uC04aay4PYnfoaR9Sd08uju8Mrr5mAQuSbMvLnfRNJP+nUZ/M9URG6EhPp6I4mohz+8Y4d4B1dVww==
MIME-Version: 1.0
X-Received: by 10.107.183.139 with SMTP id h133mr5897297iof.97.1462302336127;
 Tue, 03 May 2016 12:05:36 -0700 (PDT)
X-Originating-IP: [209.171.88.141]
In-Reply-To: <87k2jb0yc3.fsf@aikidev.net>
References: <20160501054304.GA31390@eldamar.local>
	<20160501140215.AED64332069@smtpvbsrv1.mitre.org>
	<20160503145713.GA9004@eldamar.local>
	<87k2jb0yc3.fsf@aikidev.net>
Date: Tue, 3 May 2016 14:05:36 -0500
Message-ID: <CAJC6uyt4Wa4=-_o_89ck-1gOgNSLE9AB7eGEvw4z4T6VRVrqcw@mail.gmail.com>
From: Scott Balneaves <sbalneav@ltsp.org>
To: Vagrant Cascadian <vagrant@debian.org>
Cc: Salvatore Bonaccorso <carnil@debian.org>, cve-assign@mitre.org, 
	oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=94eb2c0ba1824cae770531f4cbad
Subject: [oss-security] Re: CVE Request: libpam-sshauth: local root privilege escalation

--94eb2c0ba1824cae770531f4cbad
Content-Type: text/plain; charset=UTF-8

>> Here, the commit message for revision 93 was "Succeed for system
>> accounts."
>>
>> We don't know why introducing the undocumented behavior of "Is it a
>> system user? Fail" would be better than simply not checking
>> "pwent->pw_uid < UID_MIN" at all. Also, is there any risk that, with
>> this libpam-sshauth update, a system's PAM configuration might
>> suddenly provide no way for root to login via SSH?
>>
>> Is it possible that the original motivation for revision 93 was that
>> the PAM_SUCCESS from pam_sm_authenticate was supposed to be specially
>> handled elsewhere in the "pwent->pw_uid < UID_MIN" case?

The problem was, quite bluntly, an incomplete understanding of PAM
mechanics on my part.

The original idea was that it was supposed to be used in conjunction
with other modules; specifically, pam_unix.  So my *thinking* (if you
could call it that) was that it would be used as such:

auth required pam_unix.so  ...
auth required pam_sshauth.so ...

Since (in my mind), accepting the root user would be handled by pam_unix,
I should simply succeed, since if the root account password was
incorrectly entered, the pam_unix result would be a FAIL, and thus
then entire pam auth stack would fail.  Therefore, in my (incorrect)
thinking,
I should simply succeed on systems accounts.

I didn't, at the time, know about the ability to skip with [success=N], or
even
consider that I would use it as the only pam module.

TL;DR: I didn't know what I was doing, and misunderstood how I should
handle systems accounts.  Mea culpa, mea maxima culpa.

Cheers,
Scott

On Tue, May 3, 2016 at 1:51 PM, Vagrant Cascadian <vagrant@debian.org>
wrote:

> On 2016-05-03, Salvatore Bonaccorso wrote:
> > On Sun, May 01, 2016 at 10:02:15AM -0400, cve-assign@mitre.org wrote:
> >> > Due to a programming error, libpam-sshauth returned PAM_SUCCESS where
> >> > it should fail with PAM_AUTH_ERR. This was fixed in Debian in the last
> >> > upload to unstable with the attached patch.
> >> >
> >> >
> https://bazaar.launchpad.net/~ltsp-upstream/ltsp/libpam-sshauth/revision/114
> >>
> >> We can assign a CVE ID because it appears that something definitely is
> >> wrong from the Debian perspective, either the code itself or
> >> documentation/lack-of-documentation about how the code was supposed to
> >> be used.
> >>
> >> Use CVE-2016-4422.
> >
> > Thanks for assigning the CVE identifier.
> >
> >>
> >> However, we don't completely understand the issue:
> >>
> >> > Introduced with:
> >> >
> https://bazaar.launchpad.net/~ltsp-upstream/ltsp/libpam-sshauth/revision/93/src/pam_sshauth.c
> >>
> >> Here, the commit message for revision 93 was "Succeed for system
> >> accounts."
> >>
> >> We don't know why introducing the undocumented behavior of "Is it a
> >> system user? Fail" would be better than simply not checking
> >> "pwent->pw_uid < UID_MIN" at all. Also, is there any risk that, with
> >> this libpam-sshauth update, a system's PAM configuration might
> >> suddenly provide no way for root to login via SSH?
> >>
> >> Is it possible that the original motivation for revision 93 was that
> >> the PAM_SUCCESS from pam_sm_authenticate was supposed to be specially
> >> handled elsewhere in the "pwent->pw_uid < UID_MIN" case?
> >>
> >> Although not directly applicable to libpam-sshauth, the examples
> >> section of the
> >> http://www.linux-pam.org/Linux-PAM-html/sag-pam_succeed_if.html man
> >> page shows that a set of rules is sometimes designed with UID_MIN
> >> special cases.
> >
> > It might be right that revision 93 cannot be considred the introducing
> > revision for the problem. By following the example as given in the
> > README.
> >
> > https://sources.debian.net/src/libpam-sshauth/0.3.1-1/README/#L75
> >
> > $ cat /etc/pam.d/testservice
> > auth    required        pam_sshauth.so host=127.0.0.1 nostrict # or
> wherever
> > auth    required        pam_exec.so expose_authtok /usr/bin/ltsp-session
> > session required        pam_exec.so /usr/bin/ltsp-session
> > $ pamtester -v testservice root authenticate open_session close_session
> > pamtester: invoking pam_start(testservice, root, ...)
> > pamtester: performing operation - authenticate
> > Password: <anypassword>
> > pamtester: successfully authenticated
> > pamtester: performing operation - open_session
> > pamtester: successfully opened a session
> > pamtester: performing operation - close_session
> > pamtester: session has successfully been closed.
> >
> > I want though to add the Debian maintainer for libpam-sshauth to more
> > accurately answer the raised questions, Vagrant Cascadian
> > <vagrant@debian.org>.
>
> Also bringing the primary upstream developer, Scott Balneaves
> <sbalneav@ltsp.org> into the conversation, who has better understanding
> of the code.
>
> For this issue, I've largely just discovered it and made some small
> effort to backport the patch.
>
>
> live well,
>   vagrant
>

--94eb2c0ba1824cae770531f4cbad--
