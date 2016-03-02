X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2386" "Tuesday" "1" "March" "2016" "21:16:05" "-0700" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty0okTGt0pWufnY4ncChi03Z-xM-MsDO9-=DmJ-dbeJJ0g@mail.gmail.com>" "62" "Re: [oss-security] Re: CVE's for SSLv2 support" "^Cc:" nil nil "3" "2016030204:16:05" "[oss-security] Re: CVE's for SSLv2 support" (number mark "        kseifried@re Mar  1   62/2386  " thread-indent "\"Re: [oss-security] Re: CVE's for SSLv2 support\"\n") "<CAComcpPtkMh2t-19KoUFydMdJXHAgqiCB1m2HSNd3Rfe2WyXhQ@mail.gmail.com>" ("<CANO=Ty0ZOjCGL-iXCZ46FbSQ3i+fpGHBB6X1x2Agy9jftQ3ozA@mail.gmail.com>" "<20160301191235.EDA1852E01C@smtpvbsrv1.mitre.org>" "<CAComcpOd1_+qxMnTdJYLM2dP0W=E95Kn6OZ4yYuUS72EQLBpiQ@mail.gmail.com>" "<CANO=Ty2FD92Oj-ebOJ=dJnO-+Y1zxNJNwW6HUR5mXH+8G64_ag@mail.gmail.com>" "<CAComcpPtkMh2t-19KoUFydMdJXHAgqiCB1m2HSNd3Rfe2WyXhQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3098 invoked by uid 550); 2 Mar 2016 04:16:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3077 invoked from network); 2 Mar 2016 04:16:16 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc;
        bh=/e+8qg+rSd3dIPPXFv5jYSTEcZwSBqP3vaMp8rOwQgA=;
        b=UN8QOBfIEiKpxsjZOeVSy5NA1LrGJIJxvjyR7lyIzrfQrWdZE/+WWU+axaJZQjGOmk
         sqIEKwL0NtBH4WveIN+EoJn2R148ia/2kF6nYrIpUR98qspGvrimqTgbHJtlgCX2PYpx
         EV/lveKm1Dq8eUyLMhTc2ORhwthmrhyf3mrkRSdHvXldqvSssssTa6KSoIhRv42nW0ni
         IvPQP1adG0I/PtZRXIMiPRC0AXjt34lWMLf3MCuCibnjNck42RL4Di7OX+S6mIXA3TOn
         kooy05O4s0t/AClLca4LczFP4tbeaNWrddCPqlF+t0g+2BBlcWr+FGX/OIPvHXqYuq4f
         sOQA==
X-Gm-Message-State: AD7BkJI//b6/Pre86DV8akzsLoB+iMPYbxLj5uIbg6OSO9YqH46i2R/8HQc5j4RvOJMHCFWLDacYCZtQzXmanH1H
MIME-Version: 1.0
X-Received: by 10.13.206.2 with SMTP id q2mr15047229ywd.76.1456892165338; Tue,
 01 Mar 2016 20:16:05 -0800 (PST)
In-Reply-To: <CAComcpPtkMh2t-19KoUFydMdJXHAgqiCB1m2HSNd3Rfe2WyXhQ@mail.gmail.com>
References: <CANO=Ty0ZOjCGL-iXCZ46FbSQ3i+fpGHBB6X1x2Agy9jftQ3ozA@mail.gmail.com>
	<20160301191235.EDA1852E01C@smtpvbsrv1.mitre.org>
	<CAComcpOd1_+qxMnTdJYLM2dP0W=E95Kn6OZ4yYuUS72EQLBpiQ@mail.gmail.com>
	<CANO=Ty2FD92Oj-ebOJ=dJnO-+Y1zxNJNwW6HUR5mXH+8G64_ag@mail.gmail.com>
	<CAComcpPtkMh2t-19KoUFydMdJXHAgqiCB1m2HSNd3Rfe2WyXhQ@mail.gmail.com>
Message-ID: <CANO=Ty0okTGt0pWufnY4ncChi03Z-xM-MsDO9-=DmJ-dbeJJ0g@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a114da67efdf79f052d09234a
Cc: oss-security <oss-security@lists.openwall.com>, CVE ID Requests <cve-assign@mitre.org>
Date: Tue, 1 Mar 2016 21:16:05 -0700
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE's for SSLv2 support
To: Bob Beck <beck@openbsd.org>

--001a114da67efdf79f052d09234a
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 1, 2016 at 9:03 PM, Bob Beck <beck@openbsd.org> wrote:

> > 1) the SSL/TLS protocols encrypt the and the data cannot be read by an
> > attacker
> > 2) the SSL/TLS protocols ensure the data is not altered in transit by an
> > attacker without detection
>
> When used correctly..  SSLv2 is not.


> >
> > Additionally depending on how you configure the servers there are claims
> > that you are talking to the correct server/client (e.g. using
> certificates)
> > but that is not germane to this discussion.
> >
> > SSLv2 is obviously NOT capable of ensuring claim #1 (that data is
> encrypted
> > and cannot be read by an attacker), due to a wide variety of issues, and
> I
> > have no doubt more will be found if people keep looking. Hence my
> thinking
> > is that ANY and ALL use of SSLv2 is CVE worthy, especially when
> considering
> > that many devices/manufacturers are less than transparent about their
> > configurations/security issues.
>
> While you certainly won't see me defending SSLv2 (I think we were the
> first to delete it outright)
> there are many other things that currently fall into that category..
> I'm agreeing with your sentiment
> but if you are to consider usage of SSLv2 as CVE worthy, then you will
> need to do the same for SSH version 1,
> among other things.   So while I certainly appreciate and even agree
> with your sentiment, it seems rather timed
> politically based on a decision made by one implementaiton of SSL/TLS
> that reflects a decision made by most other
> implementations long ago.   So far from me to say what CVE's should
> and shouldn't be used for and issued for, but
> if this is the road we're going down can I please have permission to
> use your above quoted paragraph
> with s/SSLv2/SSH V1/g to request a CVE for *usage or support* of SSH
> version 1? You said it perfectly.
>

I would be totally fine with that, SSH protocol v1 is long overdue for
"needs to be taken out back and shot along with whoever enabled it by
default". From OpenSSH's sshd_config:

# The default requires explicit activation of protocol 1

I think that says it all.

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a114da67efdf79f052d09234a--
