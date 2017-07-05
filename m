X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3150" "Wednesday" "5" "July" "2017" "11:48:43" "-0400" "Daniel Micay" "danielmicay@gmail.com" "<1499269723.28229.2.camel@gmail.com>" "90" "Re: [oss-security] systemd fails to parse user that should run service" "^Date:" nil nil "7" "2017070515:48:43" "[oss-security] systemd fails to parse user that should run service" (number mark "        danielmicay@ Jul  5   90/3150  " thread-indent "\"Re: [oss-security] systemd fails to parse user that should run service\"\n") "<efcc5a85-2d36-7659-9c98-18945a4f70f9@oracle.com>" ("<VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com>" "<20170705085034.GA2638@pali>" "<201707051202.v65C2NDB005864@room101.nl.oracle.com>" "<20170705135320.ue7fojrds4tu2vpp@perpetual.pseudorandom.co.uk>" "<1b6f7cd9-2eb7-2c2d-e2e0-327cf3dd1e82@oracle.com>" "<1499267174.28229.1.camel@gmail.com>" "<efcc5a85-2d36-7659-9c98-18945a4f70f9@oracle.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3395 invoked by uid 550); 5 Jul 2017 15:49:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3371 invoked from network); 5 Jul 2017 15:49:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:date:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=BNIwbxCbWqFxlzDcVfDsQuXJBfvTOSvMKzZlx2s/WEQ=;
        b=Np2q1mNrQPlcMh5udjGr0CdB8rfme2uP016OSoV1aElTtDg5TO1v/XuPYKjn4U8V7J
         ZybAAb0Tan8wU0UnKqFvy/iPPsayY0RxC3pBrjg7E4OQB0HgxUI/8JYpmcGJImQH9zqg
         IGwQaQfOWISNT/lNZ7gaSLsDQCnwxq7rijT/fbCQfb6txDw4vM6UgWedR5isuqDuOUco
         TYKB3XWRj5Oa/Wt2tTTwRaHioCYLQJdJu5lVmKT9Tt9+e02A2KGT5rYUHwtGDg3KJQ8K
         maXgLFylELBTm0hbWT3MmiwpSNO7cE20B2sffpSQMcISyJbS9sq1dVMPg1QndI0FYQ8q
         0wCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BNIwbxCbWqFxlzDcVfDsQuXJBfvTOSvMKzZlx2s/WEQ=;
        b=REIFu+/Puq7ZqOiwAaA07QQ4eBEA35c38MyW5kjQal85Y2IjOWkqcwceRC921m315u
         056UifeFGNZRGTV4oCmk5XCGLZpeWAlm4wisxuYwv6omt8rvRYFhXdTivptMilSna5GB
         l57FJqj64OUJLBsmisUI2aThYqQSZxxJ8ZQrnFNB3/jWXIBXW7vNuSuaV9fkR2jh2nP2
         BwTXVOST/DKgMYY3U+s+1aMEAYxSX8fmqOASyOwp4KtDUvjri1kYT8MSTuoqs2CoYltn
         yUHjTcY7Vm5s3tsRfXWyw0oRWe8n4dK7woR0nGjr4yvtB8bYnukZ9Hastl6t2mgvSZBf
         /D3w==
X-Gm-Message-State: AKS2vOyZQXkCFZ0cpGMabFZ+1lhhhtu8j4/pi94kurvvlUV8ytRrLwyO
	HXPX3a4GvfdZhztTbkM=
X-Received: by 10.107.182.130 with SMTP id g124mr42107263iof.120.1499269730176;
        Wed, 05 Jul 2017 08:48:50 -0700 (PDT)
Message-ID: <1499269723.28229.2.camel@gmail.com>
In-Reply-To: <efcc5a85-2d36-7659-9c98-18945a4f70f9@oracle.com>
References: 
	<VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com>
	 <20170705085034.GA2638@pali>
	 <201707051202.v65C2NDB005864@room101.nl.oracle.com>
	 <20170705135320.ue7fojrds4tu2vpp@perpetual.pseudorandom.co.uk>
	 <1b6f7cd9-2eb7-2c2d-e2e0-327cf3dd1e82@oracle.com>
	 <1499267174.28229.1.camel@gmail.com>
	 <efcc5a85-2d36-7659-9c98-18945a4f70f9@oracle.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.24.3 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Date: Wed, 05 Jul 2017 11:48:43 -0400
From: Daniel Micay <danielmicay@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] systemd fails to parse user that should run
 service
To: oss-security@lists.openwall.com

On Wed, 2017-07-05 at 16:37 +0100, John Haxby wrote:
> On 05/07/17 16:06, Daniel Micay wrote:
> > On Wed, 2017-07-05 at 15:50 +0100, John Haxby wrote:
> > > On 05/07/17 14:53, Simon McVittie wrote:
> > > > On Wed, 05 Jul 2017 at 14:02:23 +0200, Casper.Dik@oracle.com
> > > > wrote:
> > > > > > 2) If user name specified in systemd unit file is
> > > > > > syntactically
> > > > > > correct
> > > > > > (according to systemd check) but user name does not exist
> > > > > > then
> > > > > > systemd
> > > > > > refuse to start that unit.
> > > > > 
> > > > > Should systemd really valid usernames?  I would think that you
> > > > > would 
> > > > > either use getpwnam(username) and if that fails you may then
> > > > > parse
> > > > > it as a 
> > > > > numeric value.  If "0day" isn't a valid username according to
> > > > > getpwnam(), 
> > > > > when converting it to a numeric uid should *also* fail because
> > > > > "0day" 
> > > > > isn't a properly numeric value.
> > > > 
> > > > It *does* fail. The problem is in the handling of that failure.
> > > > systemd
> > > > interprets that failure as "this line is nonsense, so behave as
> > > > though the
> > > > line didn't exist" rather than "this line can be positively
> > > > identified as
> > > > an attempt to name a nonexistent or unacceptable user, so fail
> > > > to
> > > > load
> > > > the unit". So User=7up does the same thing as User=0day - it
> > > > doesn't
> > > > run as uid 7, which is 'lp' on my Debian system.
> > > 
> > > 
> > > And therein lies the problem.  "0day" and "7up" are valid user
> > > names
> > > according to Posix[1], they may or may not exist, but they are
> > > valid.
> > > You may think Posix is wrong to allow an initial digit, but that
> > > isn't
> > > the issue.  The problem is that systemd treats an "invalid"
> > > username
> > > as
> > > either an integer or not specified and in either case this results
> > > in
> > > a
> > > program running as the wrong user, probably as root.
> > > 
> > > Having systemd balk at what Posix considers to be a valid username
> > > is
> > > a
> > > bug that systemd is free to say "this is stupid, we're not
> > > allowing
> > > that".   If, as appears to be the case, systemd says "that
> > > username is
> > > stupid, we're going to interpret it differently" then that's when
> > > we
> > > need a CVE because, to my mind on this hot and sunny say, that's
> > > systemd
> > > apparently doing something for security that it is not.
> > > 
> > > jch
> > > 
> > > 
> > > [1]
> > > http://pubs.opengroup.org/onlinepubs/9699919799/basedefs/V1_chap03
> > > .htm
> > > l#tag_03_431
> > 
> > https://github.com/shadow-maint/shadow/blob/master/libmisc/chkname.c
> > #L49
> > 
> > POSIX also says "." is a portable character, which isn't allowed by
> > shadow either. What are distributions using to provide useradd if
> > not
> > shadow?
> 
> Interesting.  "useradd a.b" works on Fedora so I wonder what's
> different
> there?

It seems some distributions get useradd/userdel from somewhere else.

Maybe you have adduser from shadow? It'd be funny if they had different
rules enforced even for adduser vs. useradd...
