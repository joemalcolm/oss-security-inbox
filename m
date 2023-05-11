Received: (qmail 7504 invoked by uid 550); 11 May 2023 11:57:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7477 invoked from network); 11 May 2023 11:57:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1683806225; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=WgoHOJS8AfmKapn+yrPyrJs2dFua96uWRGehzVVwd74=;
	b=vfx4euXE8Ww96IrWg4SSPOSifqzEJ6HBz7mqX9sinH+qjovTDBG0JExrSvew3dUvAOx7HY
	ypo+lhf0Gb4SgyUmhbN7YcAOJ73Ou3xdQVFwOVypGOH3s5UEaX6Jctkcd74UkTAfNMws+g
	9moLYmCQPL8C7eVnBjq2CNsB9XEJawM=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1683806225;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=WgoHOJS8AfmKapn+yrPyrJs2dFua96uWRGehzVVwd74=;
	b=t81CROo1V8656/5TzyM8EUOzRApuG+linCcCt9b4RRWBiGAe+/HNx6LVydHCejXlEvxYjZ
	KsK0e7jUgB7L30DQ==
Date: Thu, 11 May 2023 13:57:04 +0200
From: Marcus Meissner <meissner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20230511115704.GJ5725@suse.de>
References: <17f7ebb7-22ee-e68f-02ac-8e2740e7f015@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <17f7ebb7-22ee-e68f-02ac-8e2740e7f015@canonical.com>
Organization: SUSE Software Solutions =?iso-8859-1?Q?Ger?=
 =?iso-8859-1?Q?many_GmbH=2C_Frankenstra=DFe_146=2C_90461_Nuernberg=2C_Ger?=
 =?iso-8859-1?Q?many=2C_GF=3A_Ivo_Totev=2C_Andrew_Myers=2C_Andrew_McDonald?=
 =?iso-8859-1?Q?=2C_Martje_Boudien_Moerman=2C_HRB_36809=2C_AG_N=FCrnberg?=
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [oss-security] Clarification on embargoed testing in a partner
 cloud

Hi,


On Thu, May 11, 2023 at 07:36:44AM -0400, Marc Deslauriers wrote:
> Hi,
> 
> The Ubuntu security team shares and obtains information about embargoed
> issues from the distros and linux-distros mailing lists.
> 
> One of our large cloud partners has asked the Ubuntu security team to do
> automated testing of embargoed security updates on their public cloud before
> the CRD. While technically we would not be directly sharing details of
> embargoed issues with them as the tests will be run under accounts owned by
> the Ubuntu security team, they will be run on their infrastructure. As such,
> this may hinder our ability to conduct a comprehensive internal
> investigation of any leak that may occur.
> 
> I’m not exactly sure how this scenario fits within the policy of these
> lists, and would like to validate before we go ahead. ( Policy can be found
> here: https://oss-security.openwall.org/wiki/mailing-lists/distros )
> 
> Would testing embargoed updates obtained from the distros and linux-distros
> lists on an external cloud infrastructure violate the terms of those mailing
> lists? Would testing embargoed updates on an external cloud infrastructure
> be contrary to the expectations of the vendors posting embargoed issues to
> those lists?

Let me add some cents here from SUSE perspective.

At SUSE we are common criteria certified, including the handling of
embargoed issues, which has similar strictness.

For CC we have to have processes in such a way that embargoed information
must not touch or be controlled by third party systems not within the
CC scope, which basically excludes everything not in the protected space
of our physical SUSE datacenter.

So we have real tight need to know, "must not leave any SUSE premise or
SUSE employee eyes" rules on embargoed security issues.

Relevant scope of information is really "anything where people can derive
knowledge from", and this includes security patched binaries (or also
rpm changelogs).


In regards to distros, 
https://oss-security.openwall.org/wiki/mailing-lists/distros
is similar strict.

From this page all info on distros is (at least) TLP:AMBER ( https://www.first.org/tlp/ )
and TLP:AMBER would exclude disclosing information outside of the need-to-know within your organization.

I understand that while some of the operators of the public clouds are also on
the distro lists, these are parts of very large cooperations and not the same
team as the intake PSIRT subscribed to distros.

So from my point I would suggest to exclude testing on third party public clouds.

Ciao, Marcus
