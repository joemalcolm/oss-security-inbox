X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3561" "Tuesday" "4" "April" "2017" "12:24:57" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty0EX8Za3c_0EL2oVFmZ1Az6pmDBeX7uJ7YNrJAOzf498g@mail.gmail.com>" "100" "Re: [oss-security] Linux kernel ping socket / AF_LLC connect() sin_family race" "^Cc:" nil nil "4" "2017040418:24:57" "[oss-security] Linux kernel ping socket / AF_LLC connect() sin_family race" (number mark "U       kseifried@re Apr  4  100/3561  " thread-indent "\"Re: [oss-security] Linux kernel ping socket / AF_LLC connect() sin_family race\"\n") "<20170404152039.GH3687@suse.de>" ("<20170324202714.GA29241@openwall.com>" "<CAAeHK+yrE7+BZztHVn-2jKgLqgzgbBEa4VWCO8SL45oD0nRxEw@mail.gmail.com>" "<CANn89iK-7r3KozC4K1rmWpJ1jM-bhBqessUrkg8HoftnjOks5g@mail.gmail.com>" "<20170325001057.GA31046@openwall.com>" "<20170404152039.GH3687@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 4081 invoked by uid 550); 4 Apr 2017 18:25:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 4052 invoked from network); 4 Apr 2017 18:25:10 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=/VuVtOblup5DmwYNCljRoktxjyuS14s1H+AgspX0cGM=;
        b=XqSYihb4vNj9P/xGkF5coCnwJ8x68VSz7fNKNPCyZgucGRFzWjWBlyrUSiiIJhHlPR
         i/QS5nX8i+M9zYA2+bZk6gbYWP/1pFILSD+ftp5JxgnpFSpFDgQwzFYkzaU6cKK4wz0W
         T7BEi4XxCspXmehZ0OL1X0aaLawxocvhjfuakOMNhoePrSX7IqRAcCsLHebGXEy7+imI
         zXWnsa2tLFNgcbojzBh+0Ob60YsbmRPNDFJcqfZcuuP3ff/XHYPq64L4HBhhLpDqC3fQ
         PruIVVz/aCtAiRQW49BRHWY2xCd+MWlMCbUXCSgg4JwvEVj5SWB5EN1mGcvi79pR33X3
         yesQ==
X-Gm-Message-State: AFeK/H383ZoeQDfQcdONeG7yIVRZHPYypPIU4Rhmus77m72lBCXtai5dRFl+FelWMBIMt3ShIHq/XZd7FdHVOcDf
X-Received: by 10.157.68.144 with SMTP id v16mr12032029ote.237.1491330298292;
 Tue, 04 Apr 2017 11:24:58 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170404152039.GH3687@suse.de>
References: <20170324202714.GA29241@openwall.com> <CAAeHK+yrE7+BZztHVn-2jKgLqgzgbBEa4VWCO8SL45oD0nRxEw@mail.gmail.com>
 <CANn89iK-7r3KozC4K1rmWpJ1jM-bhBqessUrkg8HoftnjOks5g@mail.gmail.com>
 <20170325001057.GA31046@openwall.com> <20170404152039.GH3687@suse.de>
Message-ID: <CANO=Ty0EX8Za3c_0EL2oVFmZ1Az6pmDBeX7uJ7YNrJAOzf498g@mail.gmail.com>
Content-Type: multipart/alternative; boundary=f4030435448cac645e054c5b64dd
Cc: Eric Dumazet <edumazet@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	"David S. Miller" <davem@davemloft.net>, Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>, 
	James Morris <jmorris@namei.org>, Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>, 
	Patrick McHardy <kaber@trash.net>, netdev <netdev@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, Vasily Kulikov <segoon@openwall.com>, 
	Wade Mealing <wmealing@redhat.com>
Date: Tue, 4 Apr 2017 12:24:57 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel ping socket / AF_LLC connect()
 sin_family race
To: oss-security <oss-security@lists.openwall.com>

--f4030435448cac645e054c5b64dd
Content-Type: text/plain; charset=UTF-8

Assuming MITRE hasn't had a request for this yet, please use CVE-2017-2671
for this issue.

On Tue, Apr 4, 2017 at 9:20 AM, Marcus Meissner <meissner@suse.de> wrote:

> Hi,
>
> did anyone request a CVE yet?
>
> Ciao, Marcus
> On Sat, Mar 25, 2017 at 01:10:57AM +0100, Solar Designer wrote:
> > On Fri, Mar 24, 2017 at 03:21:06PM -0700, Eric Dumazet wrote:
> > > Looks easy enough to fix ?
> >
> > Oh.  Probably.  Thanks.  Need to test, but I guess you already did?
> >
> > > diff --git a/net/ipv4/ping.c b/net/ipv4/ping.c
> > > index
> > > 2af6244b83e27ae384e96cf071c10c5a89674804..
> ccfbce13a6333a65dab64e4847dd510dfafb1b43
> > > 100644
> > > --- a/net/ipv4/ping.c
> > > +++ b/net/ipv4/ping.c
> > > @@ -156,17 +156,18 @@ int ping_hash(struct sock *sk)
> > >  void ping_unhash(struct sock *sk)
> > >  {
> > >         struct inet_sock *isk = inet_sk(sk);
> > > +
> > >         pr_debug("ping_unhash(isk=%p,isk->num=%u)\n", isk,
> isk->inet_num);
> > > +       write_lock_bh(&ping_table.lock);
> > >         if (sk_hashed(sk)) {
> > > -               write_lock_bh(&ping_table.lock);
> > >                 hlist_nulls_del(&sk->sk_nulls_node);
> > >                 sk_nulls_node_init(&sk->sk_nulls_node);
> > >                 sock_put(sk);
> > >                 isk->inet_num = 0;
> > >                 isk->inet_sport = 0;
> > >                 sock_prot_inuse_add(sock_net(sk), sk->sk_prot, -1);
> > > -               write_unlock_bh(&ping_table.lock);
> > >         }
> > > +       write_unlock_bh(&ping_table.lock);
> > >  }
> > >  EXPORT_SYMBOL_GPL(ping_unhash);
> >
> > FWIW, in Pavel's original implementation for 2.4.32 (unused), this was:
> >
> > static void ping_v4_unhash(struct sock *sk)
> > {
> >       DEBUG(("ping_v4_unhash(sk=%p,sk->num=%u)\n", sk, sk->num));
> >       write_lock_bh(&ping_hash_lock);
> >       if (sk->pprev) {
> >               if (sk->next)
> >                      sk->next->pprev = sk->pprev;
> >               *sk->pprev = sk->next;
> >               sk->pprev = NULL;
> >               sk->num = 0;
> >               sock_prot_dec_use(sk->prot);
> >               __sock_put(sk);
> >       }
> >       write_unlock_bh(&ping_hash_lock);
> > }
> >
> > Looks like the erroneous optimization (not expecting concurrent activity
> > on the same socket?) was introduced during conversion to 2.6's hlists.
> >
> > So far this cursed function had 3 bugs, two of them security (including
> > this one) and one probably benign (or if not, then effectively a subset
> > of this bug as it performed some unneeded / stale debugging work before
> > acquiring the lock), with all 3 introduced in forward-porting.  Maybe
> > the nature of forward-porting activity makes people relatively
> > inattentive ("compiles with the new interfaces and still works? must be
> > correct"), compared to when writing new code.
> >
> > Anyhow, I share some responsibility for this mess, for having advocated
> > this patch being forward-ported and merged back then.  I still like
> > having this functionality and its userspace security benefits... but I
> > don't like the kernel bugs.
> >
> > Alexander
> >
>
> --
> Marcus Meissner,SUSE LINUX GmbH; Maxfeldstrasse 5; D-90409 Nuernberg; Zi.
> 3.1-33,+49-911-740 53-432,,serv=loki,mail=wotan,type=real <
> meissner@suse.de>
>



-- 

Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--f4030435448cac645e054c5b64dd--
