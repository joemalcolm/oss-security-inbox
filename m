Received: (qmail 15805 invoked by uid 550); 30 Dec 2023 16:10:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15784 invoked from network); 30 Dec 2023 16:10:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1703952683; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=oZdnHrsnZng5/M7dRMqmONfTy7jhTr2nAxl7BUA7KEs=;
	b=OBXpQX+GGBNUFry8JWNfHX/H69XADV19b+mJs95BueZ+U1DHAhRl02B56SUCSTaRJ+CcnW
	x+V5fcUtWSUDld2RJME7hCF+krH7J8kuMt36S6VXzn1xYO8RJMIgFdGsVXo++bn+zvIt3h
	9i2AJGFpZfgIFO3XjhKk2asPwmfX9t0=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1703952683;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=oZdnHrsnZng5/M7dRMqmONfTy7jhTr2nAxl7BUA7KEs=;
	b=foA8Mwl3zAYM9wxzkTo/YgYO+TdJ1iDQcNkZPbFwqKiinRC0ellr0XTZ9QoxfCYg7794Be
	cCwg2lkmSsjzQtBg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1703952683; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=oZdnHrsnZng5/M7dRMqmONfTy7jhTr2nAxl7BUA7KEs=;
	b=OBXpQX+GGBNUFry8JWNfHX/H69XADV19b+mJs95BueZ+U1DHAhRl02B56SUCSTaRJ+CcnW
	x+V5fcUtWSUDld2RJME7hCF+krH7J8kuMt36S6VXzn1xYO8RJMIgFdGsVXo++bn+zvIt3h
	9i2AJGFpZfgIFO3XjhKk2asPwmfX9t0=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1703952683;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=oZdnHrsnZng5/M7dRMqmONfTy7jhTr2nAxl7BUA7KEs=;
	b=foA8Mwl3zAYM9wxzkTo/YgYO+TdJ1iDQcNkZPbFwqKiinRC0ellr0XTZ9QoxfCYg7794Be
	cCwg2lkmSsjzQtBg==
Date: Sat, 30 Dec 2023 17:11:22 +0100
From: Marcus Meissner <meissner@suse.de>
To: oss-security@lists.openwall.com
Cc: Claus Assmann <ml+oss@esmtp.org>
Message-ID: <20231230161120.GE24652@suse.de>
References: <20231221143630.GD14101@suse.de>
 <20231221144656.GA40693@veps.esmtp.org>
 <20231222104647.GH14101@suse.de>
 <croalohbjdjf2cb6e5ol2l7rsdoxd6mr4mw55lyzzf7ljkkx5a@czm7be4dpjj4>
 <20231224093335.GM14101@suse.de>
 <20231226191528.GA6930@veps.esmtp.org>
 <f3008fbc-4dbc-49ae-ba0a-1badbad2466f@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f3008fbc-4dbc-49ae-ba0a-1badbad2466f@oracle.com>
Organization: SUSE Software Solutions =?iso-8859-1?Q?Ger?=
 =?iso-8859-1?Q?many_GmbH=2C_Frankenstra=DFe_146=2C_90461_Nuernberg=2C_Ger?=
 =?iso-8859-1?Q?many=2C_GF=3A_Ivo_Totev=2C_Andrew_Myers=2C_Andrew_McDonald?=
 =?iso-8859-1?Q?=2C_Martje_Boudien_Moerman=2C_HRB_36809=2C_AG_N=FCrnberg?=
User-Agent: Mutt/1.10.1 (2018-07-13)
Authentication-Results: smtp-out1.suse.de;
	none
Subject: Re: [oss-security] Re: New SMTP smuggling attack

On Fri, Dec 29, 2023 at 12:50:55PM -0800, Alan Coopersmith wrote:
> On 12/26/23 11:15, Claus Assmann wrote:
> > On Sun, Dec 24, 2023, Marcus Meissner wrote:
> > 
> > > - CVE-2023-51765 sendmail
> > 
> > Can you update the text for this (or point me to the proper way/persons
> > to do this)?
> 
> https://www.cve.org/CVERecord?id=CVE-2023-51765 shows:
>   Assigner: MITRE Corporation
> 
> so you can submit updates/corrections via the web form at:
>   https://cveform.mitre.org/

Yes please use this form, or if you do not want one of us can do it.

I did not request the sendmail and exim CVEs, also the postfix CVE seems
not my proposed description, so I guess someone else requested them.

Ciao, Marcus
