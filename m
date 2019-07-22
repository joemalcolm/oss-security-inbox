X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1084" "Monday" "22" "July" "2019" "11:38:26" "+0000" "Mikhail Klementev" "root@dumpstack.io" "<20190722113826.7m3yxgncujznwnbc@local>" "31" "Re: [oss-security] CVE-2019-13917 OVE-20190718-0006: Exim: security release ahead" nil nil nil "7" "2019072211:38:26" "[oss-security] CVE-2019-13917 OVE-20190718-0006: Exim: security release ahead" (number mark "U       root@dumpsta Jul 22   31/1084  " thread-indent "\"Re: [oss-security] CVE-2019-13917 OVE-20190718-0006: Exim: security release ahead\"\n") "<20190722112953.GT67124@symphytum.spacehopper.org>" ("<20190722100013.GJ1168@jumper.schlittermann.de>" "<20190722112146.z4ey7777h5zci2zl@local>" "<20190722112953.GT67124@symphytum.spacehopper.org>") nil nil nil nil nil nil nil "Re: [oss-security] CVE-2019-13917 OVE-20190718-0006: Exim: security release ahead" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5411 invoked by uid 550); 22 Jul 2019 11:51:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21750 invoked from network); 22 Jul 2019 11:38:39 -0000
Date: Mon, 22 Jul 2019 11:38:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dumpstack.io; s=mail;
	t=1563795507; bh=Baes+JqddJDmnwLspuOhQdbt2tGAMMcQuXc824lFm3g=;
	h=Date:From:To:Subject:References:In-Reply-To;
	b=zSw8ISl4XEiSEkDt9Wky+A9tGMi5WkNOYx94kyob122atmc0uCvR7FJ/jW9j9YI4r
	 xCUe0d6wJw6Y7qXi20L7cd47n0C/vfXt9njk1s06AYfpLBBih2a3gLhnMWD1aEoyCR
	 Krc8Hrdqb5y7rDPVgb6Lclz0mO7FWzTtDIsyGN2s=
From: Mikhail Klementev <root@dumpstack.io>
To: oss-security@lists.openwall.com
Message-ID: <20190722113826.7m3yxgncujznwnbc@local>
References: <20190722100013.GJ1168@jumper.schlittermann.de>
 <20190722112146.z4ey7777h5zci2zl@local>
 <20190722112953.GT67124@symphytum.spacehopper.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190722112953.GT67124@symphytum.spacehopper.org>
Subject: Re: [oss-security] CVE-2019-13917 OVE-20190718-0006: Exim: security
 release ahead

Ah, ok. Just misread, sorry.

On Mon, Jul 22, 2019 at 12:29:53PM +0100, Stuart Henderson wrote:
> On 2019/07/22 11:21, Mikhail Klementev wrote:
> > Kindly notice that this is a public mail list.
> 
> The sender is clearly aware of this, see the timeline.
> 
> > On Mon, Jul 22, 2019 at 12:00:13PM +0200, Heiko Schlittermann wrote:
> > > More details and fixes are not yet public, but will be made public on
> > > CRD, July 25th.
> > > 
> > > Timeline
> > > ========
> > > 
> > > t0: Thu Jul 18 2019
> > >     - this notice to distros@vs.openwall.org and exim-maintainers@exim.org
> > >     - open limited access to our security Git repo. See below.
> > > 
> > > t0+~4d: Mon Jul 22 10:00:00 UTC 2019 [NOW]
> > >     - heads-up notice to oss-security@lists.openwall.com,
> > >       exim-users@exim.org, and exim-announce@exim.org
> > > 
> > > t0+~7d: Thu Jul 25 10:00:00 UTC 2019
> > >     - Coordinated relase date
> > >     - publish the patches in our official and public Git repositories
> > >       and the packages on our FTP server.

-- 
Mikhail Klementev,
https://dumpstack.io
