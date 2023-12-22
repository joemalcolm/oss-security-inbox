Received: (qmail 11452 invoked by uid 550); 22 Dec 2023 12:11:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11428 invoked from network); 22 Dec 2023 12:11:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1703247100; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=+Nt0WO4IkIVwcAFHDQlR8PeW3BZyxVaHzhhhp9bLIH8=;
	b=TsUGMne/J17V/yo7EyDJjPhrXQ2lGgRoTg8iBLBidvx65etKwa3WbP225wG4KUUhEXWp4G
	q9GfRQ6zbv9cqoHoUyAg1Ytugabs/FINZSLvRHGq1ZXCrPVo37Fse0j9DHoXjSlecTOGu6
	ekzVrMfxFlzLYJG37UEBGWxQG2jbCsQ=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1703247100;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=+Nt0WO4IkIVwcAFHDQlR8PeW3BZyxVaHzhhhp9bLIH8=;
	b=CzGwnEV9K4E5YNPRJiikvjups0iSCz0AHTE8HQHn+q/soATX2Y5n3sdGXID6yxBNNF3Cvh
	kF3cHdFA/qgm7mCw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1703247098; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=+Nt0WO4IkIVwcAFHDQlR8PeW3BZyxVaHzhhhp9bLIH8=;
	b=Su9HIdU7ZJhezJlHzQGvVfQJeeDDz/TtHcXzyPk9+I/B8IFLwLPMWXEYTaEa4ugkq527fC
	AxsMM7EB5pMCdMJ9m4oaQnnuJYhwQwE/yfVX/970ZT4yl/gTh6cc4e/6FNChxw6oBcsDvc
	vOaSvJ0AXztUXGv6xqa+usLg2vcrwHg=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1703247098;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=+Nt0WO4IkIVwcAFHDQlR8PeW3BZyxVaHzhhhp9bLIH8=;
	b=MICfCbPlItR/n54aaDkMjr3c7T/xISwstxrwaPlblP2z0Ro1f44XLBdRDweN+Sy9KYcwU4
	UWOSpTC3qwofVKAQ==
Date: Fri, 22 Dec 2023 13:11:37 +0100
From: Marcus Meissner <meissner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20231222121134.GI14101@suse.de>
References: <20231221143630.GD14101@suse.de>
 <20231221144656.GA40693@veps.esmtp.org>
 <20231222104647.GH14101@suse.de>
 <ZYVufT0sq16Z-M43@symphytum.spacehopper.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZYVufT0sq16Z-M43@symphytum.spacehopper.org>
Organization: SUSE Software Solutions =?iso-8859-1?Q?Ger?=
 =?iso-8859-1?Q?many_GmbH=2C_Frankenstra=DFe_146=2C_90461_Nuernberg=2C_Ger?=
 =?iso-8859-1?Q?many=2C_GF=3A_Ivo_Totev=2C_Andrew_Myers=2C_Andrew_McDonald?=
 =?iso-8859-1?Q?=2C_Martje_Boudien_Moerman=2C_HRB_36809=2C_AG_N=FCrnberg?=
User-Agent: Mutt/1.10.1 (2018-07-13)
Authentication-Results: smtp-out1.suse.de;
	none
Subject: Re: [oss-security] Re: New SMTP smuggling attack

On Fri, Dec 22, 2023 at 11:09:49AM +0000, Stuart Henderson wrote:
> On 2023/12/22 11:46, Marcus Meissner wrote:
> > Hi,
> > 
> > FWIW as no CVEs were to be found yet, I filed a CVE request for Postfix now.
> > 
> > Not sure if we need it for others like sendmail too, as that is also
> > referenced by the security researchers.
> 
> I'm a little confused by sec-consult's process here. They identify a
> problem affecting various pieces of software including some very widely
> deployed open source software, go to the trouble of doing a coordinated
> disclosure, but only do that with...looking at their timeline... gmx,
> microsoft and cisco?

Yes its weird.

I was also confused and actually only spotted the OSS software being
affected on third read over their page.

They also reference CERT and VINCE, but at least SUSE was not pulled
into the VINCE issue if there was any. (as CERT has not published
anything I am not sure there was any besides the Cisco disclosure).

Also postfix timeline starts 4 days ago only.
https://www.mail-archive.com/postfix-announce@postfix.org/msg00090.html

Ciao, Marcus
