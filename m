X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3306" "Wednesday" "5" "July" "2017" "11:06:14" "-0400" "Daniel Micay" "danielmicay@gmail.com" "<1499267174.28229.1.camel@gmail.com>" "77" "Re: [oss-security] systemd fails to parse user that should run service" "^Date:" nil nil "7" "2017070515:06:14" "[oss-security] systemd fails to parse user that should run service" (number mark "        danielmicay@ Jul  5   77/3306  " thread-indent "\"Re: [oss-security] systemd fails to parse user that should run service\"\n") "<1b6f7cd9-2eb7-2c2d-e2e0-327cf3dd1e82@oracle.com>" ("<VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com>" "<20170705085034.GA2638@pali>" "<201707051202.v65C2NDB005864@room101.nl.oracle.com>" "<20170705135320.ue7fojrds4tu2vpp@perpetual.pseudorandom.co.uk>" "<1b6f7cd9-2eb7-2c2d-e2e0-327cf3dd1e82@oracle.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32528 invoked by uid 550); 5 Jul 2017 15:06:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32504 invoked from network); 5 Jul 2017 15:06:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:date:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=rBs2dmnqYOwLDAMnUK60XRrMbqha6rbXKQ/BC9CFYRE=;
        b=UIStYs/ilsFo365Q9LJr+o/F67X9HqhhtYlpB6u6MoC+a07f3wZEB0/E/FS4acGdTl
         Nn4TP3MG+y0ukQgcs7MRMTGY1+GfAMpdKC9gkzyaHPDGk/pXATvFd2j0b4Pwi5PRz6GA
         uQCSFa9BNLn3auQe1Yjp3cyBz9QNcADuUKKweZmvzT2uAfT+qtvbVC1u+cvbF9Z0JqW6
         VO14ILU9/d8HH56B1AvYZ3MRZwbXW7DDq9Yuj4aWAIKKdepu9R2PlilcZySV5kVfoNym
         qf67YbQTKJQF5DyVTVYBlbMmCHwaRM/+1VaCrA4vDHL8fQxVBK+hCT890ZgpgFl00dzr
         f8ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rBs2dmnqYOwLDAMnUK60XRrMbqha6rbXKQ/BC9CFYRE=;
        b=K0G0sSn5emMd/gsiUwOjBQj4m+UeZxTbbpxF2MI64vRO9pU57+0RdDN6xXAI7aNdkQ
         jjvpOFnlf3XJQhsH76+nGbCuIzmJq/wi/jzLCzp3lyoW6RYaTX8jMA96ZXkep8HpcRtr
         a3gA3ov92GxCc1cAqM+bVzCw700w5SMYrp2GtGI2xRwIWG56VeW1wB/5PoDg5+3dKhZn
         oILbm4s8Si6OwG14wFuUCYoR8fezr4k9w0Pq1n2Il9S8ZY5tpQq/btejUW3SwyHkPIjh
         6nzHZaNWBnTQmgwgvIEZl1iyrTx4oivnpWzfnlU1sovLJl5YDqbXfbpVx7VXBIfFMQjr
         T54g==
X-Gm-Message-State: AKS2vOxkdIvifwifR3/xzTVdtAf94hCKXtV7X+hGGWj/Uiz37mzcWcvX
	TuzNA6ojfNFM9/yxXK0=
X-Received: by 10.107.136.90 with SMTP id k87mr49731581iod.154.1499267176973;
        Wed, 05 Jul 2017 08:06:16 -0700 (PDT)
Message-ID: <1499267174.28229.1.camel@gmail.com>
In-Reply-To: <1b6f7cd9-2eb7-2c2d-e2e0-327cf3dd1e82@oracle.com>
References: 
	<VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com>
	 <20170705085034.GA2638@pali>
	 <201707051202.v65C2NDB005864@room101.nl.oracle.com>
	 <20170705135320.ue7fojrds4tu2vpp@perpetual.pseudorandom.co.uk>
	 <1b6f7cd9-2eb7-2c2d-e2e0-327cf3dd1e82@oracle.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.24.3 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Date: Wed, 05 Jul 2017 11:06:14 -0400
From: Daniel Micay <danielmicay@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] systemd fails to parse user that should run
 service
To: oss-security@lists.openwall.com

On Wed, 2017-07-05 at 15:50 +0100, John Haxby wrote:
> On 05/07/17 14:53, Simon McVittie wrote:
> > On Wed, 05 Jul 2017 at 14:02:23 +0200, Casper.Dik@oracle.com wrote:
> > > > 2) If user name specified in systemd unit file is syntactically
> > > > correct
> > > > (according to systemd check) but user name does not exist then
> > > > systemd
> > > > refuse to start that unit.
> > > 
> > > Should systemd really valid usernames?  I would think that you
> > > would 
> > > either use getpwnam(username) and if that fails you may then parse
> > > it as a 
> > > numeric value.  If "0day" isn't a valid username according to
> > > getpwnam(), 
> > > when converting it to a numeric uid should *also* fail because
> > > "0day" 
> > > isn't a properly numeric value.
> > 
> > It *does* fail. The problem is in the handling of that failure.
> > systemd
> > interprets that failure as "this line is nonsense, so behave as
> > though the
> > line didn't exist" rather than "this line can be positively
> > identified as
> > an attempt to name a nonexistent or unacceptable user, so fail to
> > load
> > the unit". So User=7up does the same thing as User=0day - it doesn't
> > run as uid 7, which is 'lp' on my Debian system.
> 
> 
> And therein lies the problem.  "0day" and "7up" are valid user names
> according to Posix[1], they may or may not exist, but they are valid.
> You may think Posix is wrong to allow an initial digit, but that isn't
> the issue.  The problem is that systemd treats an "invalid" username
> as
> either an integer or not specified and in either case this results in
> a
> program running as the wrong user, probably as root.
> 
> Having systemd balk at what Posix considers to be a valid username is
> a
> bug that systemd is free to say "this is stupid, we're not allowing
> that".   If, as appears to be the case, systemd says "that username is
> stupid, we're going to interpret it differently" then that's when we
> need a CVE because, to my mind on this hot and sunny say, that's
> systemd
> apparently doing something for security that it is not.
> 
> jch
> 
> 
> [1]
> http://pubs.opengroup.org/onlinepubs/9699919799/basedefs/V1_chap03.htm
> l#tag_03_431

https://github.com/shadow-maint/shadow/blob/master/libmisc/chkname.c#L49

POSIX also says "." is a portable character, which isn't allowed by
shadow either. What are distributions using to provide useradd if not
shadow?

systemd's On Error Resume Next error handling seems like the main issue.
If a unit has invalid values, it should reject it. It shouldn't ever be
ignoring a User field because it considers it invalid. It's unfortunate
that it enables invalid field names like Usre=validusername too, but it
probably does that so they can introduce new fields that can be adopted
by projects for their units without breaking compatibility with older
versions of systemd.

I don't think it makes much sense for programs that are only consuming
the password database to enforce their own checks, but they're free to
do silly things like that if they feel like it and it doesn't make it a
vulnerability. If it rejected the unit as a whole when it considers the
username invalid, it would only be an annoyance for people that actually
want to have a shadow / systemd incompatible username, not a potential
security gotcha.
