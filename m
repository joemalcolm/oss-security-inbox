X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4235" "Friday" "20" "October" "2017" "23:08:14" "+0000" "Robert Watson" "robertcwatson1@gmail.com" "<CAOfWR+Ga88eCNj-cQiBBXzM=S+xBfE5fsbgBWXMWSnN=8_4rFw@mail.gmail.com>" "129" "Re: [oss-security] CVE-2017-8805: Unsafe symlinks not filtered in Debian mirror script ftpsync" "^Date:" nil nil "10" "2017102023:08:14" "[oss-security] CVE-2017-8805: Unsafe symlinks not filtered in Debian mirror script ftpsync" (number mark "        robertcwatso Oct 20  129/4235  " thread-indent "\"Re: [oss-security] CVE-2017-8805: Unsafe symlinks not filtered in Debian mirror script ftpsync\"\n") "<CABMkiz6X3N8X7nq8eCnNGVUEx8jzd7hNLk3W_8OdW0Pg+UvSYQ@mail.gmail.com>" ("<20171017162507.e7lx6fbnleugoxxa@waldi.eu.org>" "<CAOfWR+EHYftu3Hqbu0qGvk_kk3au-Gkj_WEH95syC3n-QuNnxg@mail.gmail.com>" "<CABMkiz5UkRvC7FRFQ_9nAfG=+gqGXTb-67faWu=s4n=mXghZtA@mail.gmail.com>" "<CAOfWR+GW8oR8+uSKeETF3+mzhhzH5-GiRuJr2sGOnhodefHRaQ@mail.gmail.com>" "<20171019194428.GK20315@hunt>" "<CAOfWR+H_UbXfxh=oECSqUEcLmAh+RZciH61q0E5LqskWSOYWKA@mail.gmail.com>" "<CABMkiz6X3N8X7nq8eCnNGVUEx8jzd7hNLk3W_8OdW0Pg+UvSYQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32371 invoked by uid 550); 21 Oct 2017 10:22:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25796 invoked from network); 20 Oct 2017 23:08:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=OPf2dhPG5jDgm/z1MIN+92wet62Vi5nWqqgFcyc3OwA=;
        b=bSTFdz5Grog72O07nHwQc/AE78+cmsKAXLnZNYyY0uqBDjMPOUtP7TJhb9KE51EDGT
         kKJfyQeh4j3Mw9HYCEapCtEoVuFkPnh/0y4y10oLauun4KsuODcThgrddQz/KF6diTqI
         uY1MRKoO0Fw0wvxXNUZPbmlOqboToyBnN2wHweJA/yZAs6xJ7YK6dPPpU68s7dbGjumD
         HOUF5MMmtd2+YtK5sI9c+fFvXY7yGyx4Q45guGQMrbIDu9JkMf7Kr9Vo2fr1LYC8RQrC
         bGNGFwACKXLMBuK6mWPHNG4FhByzcJVriUryFaCPmtnQnrqZcwg/v0N1afhn1tSgP9yX
         sReg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=OPf2dhPG5jDgm/z1MIN+92wet62Vi5nWqqgFcyc3OwA=;
        b=D1E9WJuvs4oM5/OPYe5btOEkcrLt/d4Q2NtyP5+QGON89/pmydH4sBmc1lNlrIdsXl
         +sUGUAfaxU7L6qQE0sBXFYTzklgVAWh420upvTphDyKZhe1PknXrBIW51Kvk8258ml2p
         U7oqjbdRbkT0HZXQXpSPzeoMLUMu7muJFcjeS65JpB/bKsN+mKG3jmoSGomFiL2ILKKY
         7uiIDJJV/hbQfUHRsyE4yGRrALfOtH7EY8xpSz4dF4PJSmlxf8lPyZeR9NuX+Bz4uLiX
         DGx4leyvR0WZxxnP7/6MGQDAkraRi0Rld9gQvId/yp6Ish1mp2orEtYrqb0kKGrLLRHp
         imag==
X-Gm-Message-State: AMCzsaV+Nvk50XdPdIi/QOMRQOp3xmyEZoJTdiudSDQN+SE6sg4jP7pZ
	pfes3KiIuVTIE8A7ZH/pgNaUPAswqLzkz9GkRBc=
X-Google-Smtp-Source: ABhQp+QgNsomSrrYFHETgOJmZQWXz+BUdGuW6JwcoFRvhaIjm2xlRKVQQxOl/3Xyq+78Pg4l6yM7vqF2iNaZd5qOfG4=
X-Received: by 10.28.209.132 with SMTP id i126mr211174wmg.65.1508540905469;
 Fri, 20 Oct 2017 16:08:25 -0700 (PDT)
MIME-Version: 1.0
References: <20171017162507.e7lx6fbnleugoxxa@waldi.eu.org> <CAOfWR+EHYftu3Hqbu0qGvk_kk3au-Gkj_WEH95syC3n-QuNnxg@mail.gmail.com>
 <CABMkiz5UkRvC7FRFQ_9nAfG=+gqGXTb-67faWu=s4n=mXghZtA@mail.gmail.com>
 <CAOfWR+GW8oR8+uSKeETF3+mzhhzH5-GiRuJr2sGOnhodefHRaQ@mail.gmail.com>
 <20171019194428.GK20315@hunt> <CAOfWR+H_UbXfxh=oECSqUEcLmAh+RZciH61q0E5LqskWSOYWKA@mail.gmail.com>
 <CABMkiz6X3N8X7nq8eCnNGVUEx8jzd7hNLk3W_8OdW0Pg+UvSYQ@mail.gmail.com>
In-Reply-To: <CABMkiz6X3N8X7nq8eCnNGVUEx8jzd7hNLk3W_8OdW0Pg+UvSYQ@mail.gmail.com>
Message-ID: <CAOfWR+Ga88eCNj-cQiBBXzM=S+xBfE5fsbgBWXMWSnN=8_4rFw@mail.gmail.com>
Content-Type: multipart/alternative; boundary="94eb2c12e72cccba1a055c028cbb"
Date: Fri, 20 Oct 2017 23:08:14 +0000
From: Robert Watson <robertcwatson1@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2017-8805: Unsafe symlinks not filtered in
 Debian mirror script ftpsync
To: oss-security@lists.openwall.com

--94eb2c12e72cccba1a055c028cbb
Content-Type: text/plain; charset="UTF-8"

Thank You for taking the time to explain the scripting issue.

Okay, so a script adds a symlink to /etc/shadow or something else
confidential. Unless they're root, what good does it do them? They can't
read it.

On Fri, Oct 20, 2017, 14:35 Ben Tasker <ben@bentasker.co.uk> wrote:

> On Thu, Oct 19, 2017 at 9:32 PM, Robert Watson <robertcwatson1@gmail.com>
> wrote:
>
> > Scripts depend on the underlying functionality of the various utilities
> > like rsync that they call. I'm having trouble understanding how a script
> > could ever be deserving of a CVE. Maybe I'm wrong. I wish to be educated.
> >
>
> Whether you think it applies to the current example is obviously a
> different debate, but the simple principle is that the script is (arguably)
> using the underlying tool unsafely. The tool (rsync in this case) provides
> an argument to prevent the "risky" behaviour, but the calling script isn't
> using it, potentially opening a vector for misuse.
>
> So if there should be a CVE, it shouldn't be against rsync (as it provides
> the means to avoid, and in other cases you may even find the calling script
> is overriding the "safe" behaviour) but against the calling script.
>
> To give a fairly limited example, both of these scripts rely on the same
> functionality, but one is riskier (albeit not from a security perspective)
> - in neither case is the tool at risk
>
> fname=$1
> rm -rf "/$1"
>
> ...
>
> fname=$1
> rm -rf --no-preserve-root "/$1"
>
>
> Obviously it's quite easy for there to be more severe connotations to other
> scripts (for example, think about some of the things you might pass
> adduser) which may well be worthy of a CVE by nature of them effectively
> misusing a tool.
>
> Back on topic, I can see potential for abuse, though I'm also not convinced
> whether it's CVE worthy.
>
>
>
> >
> > We are overwhelmed with more vulnerabilities than can be fixed quickly
> > already.
> >
> > Are "just to be safer" type things really a wise use of our resources?
> >
> >
> The problem there is setting the threshold. It's not unheard of for a "just
> in case" fix to later have proved to have mitigated a more severe (and at
> the time, unknown) issue. But gain, whether it needs a CVE is something
> else.
>
>
>
>
> > Does a proliferation of a large number of low-caliber problems make
> > monitoring these lists more trouble than it's worth? Does it cause
> > high-impact problems to be lost amongst low-impact ones?
>
>
> > On Thu, Oct 19, 2017, 15:46 Seth Arnold <seth.arnold@canonical.com>
> wrote:
> >
> > > On Wed, Oct 18, 2017 at 04:55:07PM -0400, Robert Watson wrote:
> > > > Removing the ability for rsync to copy symlinks pointing to targets
> > > outside
> > > > the mirror tree would greatly cripple it. I need to understand how
> the
> > > > danger is worth the loss of this functionality.
> > >
> > > Note that the fix isn't modifying rsync, the fix is modifying the
> ftpsync
> > > script that calls rsync:
> > >
> > > +    RSYNC_OPTIONS=${RSYNC_OPTIONS:-"-prltvHSB8192 --safe-links
> > --timeout
> > > 3600 --stats --no-human-readable"}
> > >
> > >
> > > https://anonscm.debian.org/cgit/mirror/archvsync.git/commit/?id=
> > d1ca2ab2210990b6dfb664cd6776a41b71c48016
> > >
> > > Of course for people who run this mirroring tool as a specific user
> > > account and set file permissions appropriately this is more or less a
> > > no-op. But this is a useful hardening for people who run the ftpsync
> > > command as a user with too many privileges. (I wouldn't have bothered
> > > filing for a CVE for this change; I see it as a simple hardening
> change.)
> > >
> > > This option shouldn't cripple ftpsync as a well-run repository is
> highly
> > > unlikely to have symlinks pointing out of the tree. A repository with
> > > symlinks pointing out of the tree is already not a suitable rsync
> source.
> > >
> > > Thanks
> > >
> > --
> >
> > Robert "DocSalvager" Watson
> > ... trust in truth keeps hope alive
> > www.DocSalvage.info
> >
>
>
>
> --
> Ben Tasker
> https://www.bentasker.co.uk
>
-- 

Robert "DocSalvager" Watson
... trust in truth keeps hope alive
www.DocSalvage.info

--94eb2c12e72cccba1a055c028cbb--
