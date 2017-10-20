X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3666" "Friday" "20" "October" "2017" "14:40:50" "+0100" "Ben Tasker" "ben@bentasker.co.uk" "<CABMkiz6X3N8X7nq8eCnNGVUEx8jzd7hNLk3W_8OdW0Pg+UvSYQ@mail.gmail.com>" "109" "Re: [oss-security] CVE-2017-8805: Unsafe symlinks not filtered in Debian mirror script ftpsync" "^Date:" nil nil "10" "2017102013:40:50" "[oss-security] CVE-2017-8805: Unsafe symlinks not filtered in Debian mirror script ftpsync" (number mark "        ben@bentaske Oct 20  109/3666  " thread-indent "\"Re: [oss-security] CVE-2017-8805: Unsafe symlinks not filtered in Debian mirror script ftpsync\"\n") "<CAOfWR+H_UbXfxh=oECSqUEcLmAh+RZciH61q0E5LqskWSOYWKA@mail.gmail.com>" ("<20171017162507.e7lx6fbnleugoxxa@waldi.eu.org>" "<CAOfWR+EHYftu3Hqbu0qGvk_kk3au-Gkj_WEH95syC3n-QuNnxg@mail.gmail.com>" "<CABMkiz5UkRvC7FRFQ_9nAfG=+gqGXTb-67faWu=s4n=mXghZtA@mail.gmail.com>" "<CAOfWR+GW8oR8+uSKeETF3+mzhhzH5-GiRuJr2sGOnhodefHRaQ@mail.gmail.com>" "<20171019194428.GK20315@hunt>" "<CAOfWR+H_UbXfxh=oECSqUEcLmAh+RZciH61q0E5LqskWSOYWKA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9581 invoked by uid 550); 20 Oct 2017 18:34:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22155 invoked from network); 20 Oct 2017 13:41:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bentasker.co.uk; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=KB8IcfU4kY+JrLfxH/qV9ED2BTfwaMmm+EawKm5sUkM=;
        b=fnSlFNNd4c7sK1x3+KvutMwNc+dEBvOhNU+6PugSda+bPxvoaE8asQwNWomxxTlc5s
         AlUdQEfgVsJqJiPACBcs0iRVAwmIUzPCZ+Kr9CbEuveGJNjEZ4rqYk0DILZOT4NH7JoP
         7rGkbWD0cePzL0jZ1aoHzAKJj9kYm3J6U1eP4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=KB8IcfU4kY+JrLfxH/qV9ED2BTfwaMmm+EawKm5sUkM=;
        b=I/iezsO6YAogevXFVU0JJb3W1oACy47NnIzQE6M+keimy7+aDiu6zQZbMpd7/c7WO1
         VjI3WOXapBV3jriqpSlKJUyp6Lj6xtLzrbkL5XrUsW/vdl+RnecSVb9VgC0WIs+PTcaN
         cKeywRBoLjNo6pJu3fIkpRzFmkHRFoG/N14qvMw7RqBnx/x6JX1wmmEkgybRohaGpjJV
         V7+lQHntv+opTfpeF14ayzCW/mUQY6DLst4IQSuwGIohH6VmNryY8XdJu0E0Hf4mLnaD
         xGsQBrBC0/PDn0bq6oKS+vAVJmmx6NPlxMqoe7T14FAxxcf48CCpYeW18BFhAfGDBoJ0
         gfsA==
X-Gm-Message-State: AMCzsaVGetevAVPPntjaqvXpAzyRWdfNufkIoyQ+jxnhFEbuqDxLB4XA
	bwcKHGiWDsezmp9p+/i2jwiVPXqCM0p0MWWHSyi8XQ==
X-Google-Smtp-Source: ABhQp+Qv+wFXXuQVaPLPJSGuU2mwGPR/CP2ASaYwiCksgfznGl7kiCq0n4k+7EEM3DRoSlY00FjBPX95aL37hqGanyY=
X-Received: by 10.55.204.77 with SMTP id r74mr7230150qki.25.1508506850710;
 Fri, 20 Oct 2017 06:40:50 -0700 (PDT)
MIME-Version: 1.0
X-Originating-IP: [46.17.166.68]
In-Reply-To: <CAOfWR+H_UbXfxh=oECSqUEcLmAh+RZciH61q0E5LqskWSOYWKA@mail.gmail.com>
References: <20171017162507.e7lx6fbnleugoxxa@waldi.eu.org> <CAOfWR+EHYftu3Hqbu0qGvk_kk3au-Gkj_WEH95syC3n-QuNnxg@mail.gmail.com>
 <CABMkiz5UkRvC7FRFQ_9nAfG=+gqGXTb-67faWu=s4n=mXghZtA@mail.gmail.com>
 <CAOfWR+GW8oR8+uSKeETF3+mzhhzH5-GiRuJr2sGOnhodefHRaQ@mail.gmail.com>
 <20171019194428.GK20315@hunt> <CAOfWR+H_UbXfxh=oECSqUEcLmAh+RZciH61q0E5LqskWSOYWKA@mail.gmail.com>
Message-ID: <CABMkiz6X3N8X7nq8eCnNGVUEx8jzd7hNLk3W_8OdW0Pg+UvSYQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary="001a114998f2fa7a2b055bfa9e7d"
Date: Fri, 20 Oct 2017 14:40:50 +0100
From: Ben Tasker <ben@bentasker.co.uk>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2017-8805: Unsafe symlinks not filtered in
 Debian mirror script ftpsync
To: oss-security@lists.openwall.com

--001a114998f2fa7a2b055bfa9e7d
Content-Type: text/plain; charset="UTF-8"

On Thu, Oct 19, 2017 at 9:32 PM, Robert Watson <robertcwatson1@gmail.com>
wrote:

> Scripts depend on the underlying functionality of the various utilities
> like rsync that they call. I'm having trouble understanding how a script
> could ever be deserving of a CVE. Maybe I'm wrong. I wish to be educated.
>

Whether you think it applies to the current example is obviously a
different debate, but the simple principle is that the script is (arguably)
using the underlying tool unsafely. The tool (rsync in this case) provides
an argument to prevent the "risky" behaviour, but the calling script isn't
using it, potentially opening a vector for misuse.

So if there should be a CVE, it shouldn't be against rsync (as it provides
the means to avoid, and in other cases you may even find the calling script
is overriding the "safe" behaviour) but against the calling script.

To give a fairly limited example, both of these scripts rely on the same
functionality, but one is riskier (albeit not from a security perspective)
- in neither case is the tool at risk

fname=$1
rm -rf "/$1"

...

fname=$1
rm -rf --no-preserve-root "/$1"


Obviously it's quite easy for there to be more severe connotations to other
scripts (for example, think about some of the things you might pass
adduser) which may well be worthy of a CVE by nature of them effectively
misusing a tool.

Back on topic, I can see potential for abuse, though I'm also not convinced
whether it's CVE worthy.



>
> We are overwhelmed with more vulnerabilities than can be fixed quickly
> already.
>
> Are "just to be safer" type things really a wise use of our resources?
>
>
The problem there is setting the threshold. It's not unheard of for a "just
in case" fix to later have proved to have mitigated a more severe (and at
the time, unknown) issue. But gain, whether it needs a CVE is something
else.




> Does a proliferation of a large number of low-caliber problems make
> monitoring these lists more trouble than it's worth? Does it cause
> high-impact problems to be lost amongst low-impact ones?


> On Thu, Oct 19, 2017, 15:46 Seth Arnold <seth.arnold@canonical.com> wrote:
>
> > On Wed, Oct 18, 2017 at 04:55:07PM -0400, Robert Watson wrote:
> > > Removing the ability for rsync to copy symlinks pointing to targets
> > outside
> > > the mirror tree would greatly cripple it. I need to understand how the
> > > danger is worth the loss of this functionality.
> >
> > Note that the fix isn't modifying rsync, the fix is modifying the ftpsync
> > script that calls rsync:
> >
> > +    RSYNC_OPTIONS=${RSYNC_OPTIONS:-"-prltvHSB8192 --safe-links
> --timeout
> > 3600 --stats --no-human-readable"}
> >
> >
> > https://anonscm.debian.org/cgit/mirror/archvsync.git/commit/?id=
> d1ca2ab2210990b6dfb664cd6776a41b71c48016
> >
> > Of course for people who run this mirroring tool as a specific user
> > account and set file permissions appropriately this is more or less a
> > no-op. But this is a useful hardening for people who run the ftpsync
> > command as a user with too many privileges. (I wouldn't have bothered
> > filing for a CVE for this change; I see it as a simple hardening change.)
> >
> > This option shouldn't cripple ftpsync as a well-run repository is highly
> > unlikely to have symlinks pointing out of the tree. A repository with
> > symlinks pointing out of the tree is already not a suitable rsync source.
> >
> > Thanks
> >
> --
>
> Robert "DocSalvager" Watson
> ... trust in truth keeps hope alive
> www.DocSalvage.info
>



-- 
Ben Tasker
https://www.bentasker.co.uk

--001a114998f2fa7a2b055bfa9e7d--
