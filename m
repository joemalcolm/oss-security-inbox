X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1369" "Wednesday" "4" "August" "2021" "11:49:51" "-0500" "Tyler Hicks" "code@tyhicks.com" nil "35" "Re: [oss-security] Pop!_OS Membership to linux-distros list" nil nil nil "8" nil nil (number mark "U       code@tyhicks Aug  4   35/1369  " thread-indent "\"Re: [oss-security] Pop!_OS Membership to linux-distros list\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Pop!_OS Membership to linux-distros list" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32047 invoked by uid 550); 4 Aug 2021 17:06:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22107 invoked from network); 4 Aug 2021 16:50:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tyhicks-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=fJhKKJ+5l1d85WY9rd8manhQaZTPjstq5peWsthaXf4=;
        b=JKbf0paZ6kdx8DhjPSo59h4Ea3n5LS3tH8ZkneT3SRjsm23lC7+9grSJ7BQr/1h/vh
         iDAXW7Pv4qk23PnfEqpwuU9OQ3q9QILp7cgMJn5Bmm4Ss7upuSPiM86oNbtl3CJpzVIY
         BPZemLiNdN24irDRhPz8ay/h6mtQsO9l+O82OldyMUYrxMkylTOumIv3N6/5tg5TQVlP
         D4f/SPPvLA/laC5h/3PAv/1iQl+qiYT7JKhrWD69xZSAvh8YDZeu+lZLzuCxhVn0ZAS8
         GEBXLyFWuUZF1+CLWTxDnB0gr8EjC2eacgFRyzi7Sz8BEbRKtYxkO8EjDjIAUIQS9RBB
         9T0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=fJhKKJ+5l1d85WY9rd8manhQaZTPjstq5peWsthaXf4=;
        b=gBJ20PUzpIJ0j7lAvE6eA7hDcWvqEcxsGHeIRLvR5vE3XV1yC0xOC708j3YytV0wte
         4neXsHJCjm4TOM3Mte6YnPvjZpqKH3+xOogeFjX3nLwi7x7kiXB52Ubxl/qgovYCntd1
         PPOaN2KLvNVVnnZGUTlxS5EXaPbRGmTrX7gcPtWF68aUMQMKoHu3jIOjKMVx7nZtmiBe
         WjsIHPP2Z0oz8PdVh2QD8543wMbsOab8mNvgm3db2xDE0H7oiAe148Nf9YeFzK7hngnv
         x8EfVKmpPsL56Iqi1P+lvtMma8286go92ydxCgw4lTj45LOnFZgo08tNKigtthfZ/k62
         KRhw==
X-Gm-Message-State: AOAM5312KfGfKGvVUphg/DUWQmT4IawImtZKNEh1D7Ap7mzzhK5Uqv5a
	XGCIbnHr1qY+ZeN7nvDwmmKDEv8FfxAOhSoV
X-Google-Smtp-Source: ABdhPJzikOa4ZOrdRsEoKpN9w5AOYe74CvuKXfj5OHHE57jkwMkpMJuAe8Eo/dkOpp7vPl2how2aTw==
X-Received: by 2002:a05:6830:2b23:: with SMTP id l35mr519847otv.21.1628095793844;
        Wed, 04 Aug 2021 09:49:53 -0700 (PDT)
Date: Wed, 4 Aug 2021 11:49:51 -0500
From: Tyler Hicks <code@tyhicks.com>
To: oss-security@lists.openwall.com
Message-ID: <20210804164951.GG5486@sequoia>
References: <cf53fe7b-371e-48dd-90d7-fa2719747d9d@www.fastmail.com>
 <20210727175924.GA16557@openwall.com>
 <26f2884d-ddb7-498a-8a73-ad02e0242ed6@www.fastmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <26f2884d-ddb7-498a-8a73-ad02e0242ed6@www.fastmail.com>
Subject: Re: [oss-security] Pop!_OS Membership to linux-distros list

On 2021-08-04 09:59:02, Jeremy Soller wrote:
> On Tue, Jul 27, 2021, at 11:59 AM, Solar Designer wrote:
> > > 9. Have someone already on the private list, or at least someone else who has
> > > been active on oss-security for years but is not affiliated with your distro
> > > nor your organization, vouch for at least one of the people requesting
> > > membership on behalf of your distro (then that one vouched-for person will be
> > > able to vouch for others on your team, in case you'd like multiple people
> > > subscribed)
> > > 
> > > I do not know if I have contacts that are already on the linux-distros list.
> > 
> > It can also be "someone else who has been active on oss-security for
> > years but is not affiliated".  Anyone?
> 
> I believe Tyler Hicks is willing to do this.

With the caveats that I mentioned in my earlier reply to the thread as
I'm not clear on what "vouch" means here.

In the past, I've vouched for people that I personally know and have
worked closely with.

I need to make it clear that this "vouch" for Jeremy doesn't meet that
bar. I've digitally crossed paths with Jeremy a few times and, based on
those interactions, can believe that he'd be doing security response
work for Pop!_OS. That's all I can say. I'd be a lot more comfortable if
someone could provide a stronger vouch.

Tyler

> 
> > Thanks,
> > 
> > Alexander
> > 
