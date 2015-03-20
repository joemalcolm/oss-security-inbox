X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4673" "Friday" "20" "March" "2015" "08:16:24" "-0700" "Anthony Liguori" "anthony@codemonkey.ws" "<CA+aC4kt54Z-17hjZ6JOLONFBeqRyFFUAn4+O7TL8fUrqrSeQ8g@mail.gmail.com>" "102" "Re: [oss-security] membership request to the closed linux-distros security mailing list" nil nil nil "3" "2015032015:16:24" "[oss-security] membership request to the closed linux-distros security mailing list" (number mark "        anthony@code Mar 20  102/4673  " thread-indent "\"Re: [oss-security] membership request to the closed linux-distros security mailing list\"\n") "<20150320145413.GA10416@openwall.com>" ("<550C19ED.9030901@enea.com>" "<20150320145413.GA10416@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13868 invoked by uid 550); 20 Mar 2015 15:16:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13847 invoked from network); 20 Mar 2015 15:16:36 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:content-type;
        bh=AD47FBgTea4CFpu7ZVEHmyMhxJ6uEZAgT0UAWmRmHPA=;
        b=chNpdzrZXma+k1CI10N7eE/pNadxvr1T57fA/LAtO5FimdH+EXUIIHbCiTyr3jf1b3
         mOOC41B+mWMnwJ7wpKcipeGg6nxjGrpmxY7+UspTT0HEWzSmiuzzZj1rDnnIvtZL7znn
         87lNOw7+CtgtNRjC//XEwbebZH0XJsSICZBSLUdTVV2INiEed7GJj411B4YAiRFLBHkT
         k0pjSI3U+GzCyP27TBhzmY+voMxw7pFuzXZUrn+e5Adt/NDwKfj01hdLYI77Rg//HyQy
         0MNZy4REwAWgD9dqSV4UkePna9Og0B+xqNPEBUPk47QXdt4Bi6UQqhfUOTS6kWbtWVps
         F5ig==
X-Gm-Message-State: ALoCoQmStLJifuM+aQIDuVlhkTto44QMqrL4FWHZy+elHz8Rle8kd7cHAbmFgabkFUMFc5OR4dMM
MIME-Version: 1.0
X-Received: by 10.140.150.79 with SMTP id 76mr60463360qhw.66.1426864584449;
 Fri, 20 Mar 2015 08:16:24 -0700 (PDT)
In-Reply-To: <20150320145413.GA10416@openwall.com>
References: <550C19ED.9030901@enea.com>
	<20150320145413.GA10416@openwall.com>
Message-ID: <CA+aC4kt54Z-17hjZ6JOLONFBeqRyFFUAn4+O7TL8fUrqrSeQ8g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Fri, 20 Mar 2015 08:16:24 -0700
From: Anthony Liguori <anthony@codemonkey.ws>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] membership request to the closed linux-distros
 security mailing list
To: oss-security@lists.openwall.com

On Fri, Mar 20, 2015 at 7:54 AM, Solar Designer <solar@openwall.com> wrote:
> On Fri, Mar 20, 2015 at 02:00:29PM +0100, Sona Sarmadi wrote:
>> On behalf of Enea  Software AB, I would like to request membership to
>> the closed linux-distros security mailing list.
>
> Oh, recent attention to OpenSSL does wonders.  I already got off-list
> reminders from IBM and VMware this same week.
>
> Of course, this is primarily about PR, and only secondarily about
> security.  But should this be stopping us, if early security updates are
> also, unsurprisingly, good for security?
>
> OK, we got to handle these requests, and more.  Yes, there were several
> more off-list requests (obviously, they would not be handled without
> bringing them to oss-security first) during the 11 months that distros
> list membership has essentially been locked (in terms of which distros
> are represented; there were minor changes in who is subscribed for
> distros already on the list).
>
> Oh, and I need to announce that one distro left the list earlier this
> month: the person previously subscribed for Android determined that "the
> mail going to those lists hasn't been actionable" for Android.

(Full disclosure, while I am sending this from my personal mail
account, I'm on distros@ representing Amazon Linux AMI)

I have noticed that there are two types of disclosures on distros.
Most disclosures are sent directly to the list with or without an
embargo date attached.  These are usually low impact.  The second are
higher impact and typically sent as "there is a vulnerability in X,
please contact this person directly for more information."  The recent
OpenSSL disclosure fell into the later category.

I actually like this model a lot.  I think more upstreams will be
inclined to use distros@ if they can maintain veto power over who
actually gets the disclosure.  I also think that this allows distros@
to increase its membership in a reasonable way while not making the
list not useful.

I think it might even make sense to have a stated policy that high
impact vulnerabilities should be sent to the list in such a way.
There have been a number of issues sent to the list where I explicitly
did not request more details because I knew we were not affected
because of what we package.  I would prefer not to be disclosed on
things that we do not need to take action on (and I suspect upstreams
prefer this too).

> So, our options are:
>
> 1. Shut down the (linux-)distros lists and be done with this. ;-)  To me,
> they were more clearly doing more good than bad when they were a subset
> of the old vendor-sec.  With more membership requests coming in, and
> with simply ignoring such requests being unfair, maybe the time of these
> lists is over.  No, this does not mean that's my current opinion, but
> when doing something as controversial as this, I think we should at all
> times be reconsidering whether the "more good than bad" condition is
> possibly no longer met.  (Of course, some people are convinced that it
> never was.  I am not.  Rather, I am unsure.)

Definitely not good.

>
> -OR-
>
> 2. We can just go ahead and review each request for acceptance for the
> existing (linux-)distros lists.  In this case, we'd be less likely to
> satisfy all of the pending requests.  And maybe we should question the
> subscription of Amazon Linux AMI, MontaVista, and Wind River, which are
> now linux-distros members.

I think this is fair.  If we do this, I think having clear guidelines
on what is required to be on linux-distros is helpful although I can
see being a long and difficult discussion.

>
> -OR-
>
> 3. Setup a separate list for primarily non-free software and primarily
> non-software vendors.  Of the existing linux-distros members, maybe
> Amazon Linux AMI, MontaVista, and Wind River should be moved there.

I have to object to being labelled with either of those tags :-)

> (Maybe also Chrome OS?)  And then maybe Enea and VMware would reasonably
> be added, too.  Not sure if IBM is non-free enough to be restricted to
> that list.
>
> The idea behind such list is that we'd let people decide who they want
> to notify: all distros (including this separate list) or just the more
> free'ish subset (not including this separate list).

I think the alternative is to formalize what already appears to be the
existing practice: disclose distros@ on the existence of a
vulnerability but require direct contact for the details of the
vulnerability if the submitter/upstream thinks the impact is high.

I think this is both simple and defers decisions on scope of
notification to upstreams which are both seemingly good goals.

Regards,

Anthony Liguori
