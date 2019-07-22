X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["895" "Monday" "22" "July" "2019" "12:29:53" "+0100" "Stuart Henderson" "stu@spacehopper.org" "<20190722112953.GT67124@symphytum.spacehopper.org>" "24" "Re: [oss-security] CVE-2019-13917 OVE-20190718-0006: Exim: security release ahead" nil nil nil "7" "2019072211:29:53" "[oss-security] CVE-2019-13917 OVE-20190718-0006: Exim: security release ahead" (number mark "U       stu@spacehop Jul 22   24/895   " thread-indent "\"Re: [oss-security] CVE-2019-13917 OVE-20190718-0006: Exim: security release ahead\"\n") "<20190722112146.z4ey7777h5zci2zl@local>" ("<20190722100013.GJ1168@jumper.schlittermann.de>" "<20190722112146.z4ey7777h5zci2zl@local>") nil nil nil nil nil nil nil "Re: [oss-security] CVE-2019-13917 OVE-20190718-0006: Exim: security release ahead" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28273 invoked by uid 550); 22 Jul 2019 11:30:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28255 invoked from network); 22 Jul 2019 11:30:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=spacehopper.org;
	s=s3; t=1563794993; h=from:from:subject:subject:date:date:message-id:message-id:
	 in-reply-to:in-reply-to:references:references;
	bh=aAzXuuvpdjW++W0cbJpJDQg7etLjmxR7AzzQZhlvH1g=;
	b=iSCSHUJxj8Qjl6g1ZOygcxGuHq8hJpgAKcqTeCDyGbovRBx9urOWIzV/jb4xhrW98y8H+j
	Ws1r2jLUaFnFtirmSMu3I58/3TG2z641jPmEnmn8fvclZ8O/MZZlUgFYLdTXLx2TnJQohD
	LL3gnq5NJULWzM4f0GPsjTVAssaE+O1p+069nUY3qS5jPJqbicLp3udTkyS2Ggr9Me50+D
	xUQhRdSLDjU7afcnDklyvxQATUr1TV2VqFpwtOfPf79Qx4usaOpfnP1BFr60RoeKpcwKU5
	MH+2VwCU5fumY5x3oOWyGsZtuJ4BFtU9ilXX+IE9v0v3ov14ZvRH53rWT7C8wg==
Date: Mon, 22 Jul 2019 12:29:53 +0100
From: Stuart Henderson <stu@spacehopper.org>
To: oss-security@lists.openwall.com
Message-ID: <20190722112953.GT67124@symphytum.spacehopper.org>
References: <20190722100013.GJ1168@jumper.schlittermann.de>
 <20190722112146.z4ey7777h5zci2zl@local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190722112146.z4ey7777h5zci2zl@local>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [oss-security] CVE-2019-13917 OVE-20190718-0006: Exim: security
 release ahead

On 2019/07/22 11:21, Mikhail Klementev wrote:
> Kindly notice that this is a public mail list.

The sender is clearly aware of this, see the timeline.

> On Mon, Jul 22, 2019 at 12:00:13PM +0200, Heiko Schlittermann wrote:
> > More details and fixes are not yet public, but will be made public on
> > CRD, July 25th.
> > 
> > Timeline
> > ========
> > 
> > t0: Thu Jul 18 2019
> >     - this notice to distros@vs.openwall.org and exim-maintainers@exim.org
> >     - open limited access to our security Git repo. See below.
> > 
> > t0+~4d: Mon Jul 22 10:00:00 UTC 2019 [NOW]
> >     - heads-up notice to oss-security@lists.openwall.com,
> >       exim-users@exim.org, and exim-announce@exim.org
> > 
> > t0+~7d: Thu Jul 25 10:00:00 UTC 2019
> >     - Coordinated relase date
> >     - publish the patches in our official and public Git repositories
> >       and the packages on our FTP server.
