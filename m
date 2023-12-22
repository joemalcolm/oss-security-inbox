Received: (qmail 9734 invoked by uid 550); 22 Dec 2023 10:46:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9716 invoked from network); 22 Dec 2023 10:46:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1703242009; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=VqfLMhYLG4B1AGOPd14RC32eYUY0/7y1FYG8vWHXr68=;
	b=I5rrUPVDRn2sH/Br1CLFtV1WHyLndMmLCyz4WAjksd3/Pjr6Ph/vin26Fr3xU6fJbepWBC
	OqpcjJ0ntPyMx95tonXRaT7qjK5NJ1slXiVyDSa29TClqYFn5udDrFVc63k/j/urlDjx8t
	9AV7vgJ+IkvcezTQMdqFHsNqiUaKSNY=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1703242009;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=VqfLMhYLG4B1AGOPd14RC32eYUY0/7y1FYG8vWHXr68=;
	b=OWHjpopgaA0IQ14M6PR2MiqXqpR9+7oBt85tOyGt4MCyjRoCRse+LNDGKSmKEb3GSNIMvO
	+PqYSFtjrEGNhmAQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1703242009; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=VqfLMhYLG4B1AGOPd14RC32eYUY0/7y1FYG8vWHXr68=;
	b=I5rrUPVDRn2sH/Br1CLFtV1WHyLndMmLCyz4WAjksd3/Pjr6Ph/vin26Fr3xU6fJbepWBC
	OqpcjJ0ntPyMx95tonXRaT7qjK5NJ1slXiVyDSa29TClqYFn5udDrFVc63k/j/urlDjx8t
	9AV7vgJ+IkvcezTQMdqFHsNqiUaKSNY=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1703242009;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=VqfLMhYLG4B1AGOPd14RC32eYUY0/7y1FYG8vWHXr68=;
	b=OWHjpopgaA0IQ14M6PR2MiqXqpR9+7oBt85tOyGt4MCyjRoCRse+LNDGKSmKEb3GSNIMvO
	+PqYSFtjrEGNhmAQ==
Date: Fri, 22 Dec 2023 11:46:48 +0100
From: Marcus Meissner <meissner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20231222104647.GH14101@suse.de>
References: <20231221143630.GD14101@suse.de>
 <20231221144656.GA40693@veps.esmtp.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231221144656.GA40693@veps.esmtp.org>
Organization: SUSE Software Solutions =?iso-8859-1?Q?Ger?=
 =?iso-8859-1?Q?many_GmbH=2C_Frankenstra=DFe_146=2C_90461_Nuernberg=2C_Ger?=
 =?iso-8859-1?Q?many=2C_GF=3A_Ivo_Totev=2C_Andrew_Myers=2C_Andrew_McDonald?=
 =?iso-8859-1?Q?=2C_Martje_Boudien_Moerman=2C_HRB_36809=2C_AG_N=FCrnberg?=
User-Agent: Mutt/1.10.1 (2018-07-13)
Authentication-Results: smtp-out1.suse.de;
	none
Subject: Re: [oss-security] Re: New SMTP smuggling attack

Hi,

FWIW as no CVEs were to be found yet, I filed a CVE request for Postfix now.

Not sure if we need it for others like sendmail too, as that is also
referenced by the security researchers.

Ciao, Marcus
On Thu, Dec 21, 2023 at 02:46:56PM +0000, Claus Assmann wrote:
> Just for completeness:
> sendmail 8.18.0.2 has options to handle this too, e.g.,
> 	Accept only CR LF . CR LF as end of an SMTP message as
> 		required by the RFCs when the new srv_features
> 		option 'o' is used.
> 
> And for those who read the source code there's also an FFR:
> 	/* enable checking for "bare LF" in message */
> 	"_FFR_BARE_LF",
