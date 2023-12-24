Received: (qmail 14326 invoked by uid 550); 24 Dec 2023 09:33:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14308 invoked from network); 24 Dec 2023 09:33:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1703410419; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=qJzxWJv0tYhdOxNvR/aGys6qEwseTkdThVsDU0WnARc=;
	b=p26y860Fkze1x6Lxj+WNcHPFoHT9N0jsoZwcd9a5Dvs8gLrE2cczHVzJBPZKRfNqSULhVB
	w/MO9kPuVzi6IdE2UqujA9wvM3ZX+lG/p0Z+g78cl5a+TJrqPISBjK5VTpXX8OYuBqxUpx
	zItpTEGVNEaD+V60rF/fAuYDVYbqEtM=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1703410419;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=qJzxWJv0tYhdOxNvR/aGys6qEwseTkdThVsDU0WnARc=;
	b=tuYKbv98RVIiNjsjtXUOiQzqLgB/xCLOtoMoZqqIridUh28qvtYJvhSpkNV/F5L1IqPiob
	phFdTqXWh1m15zAQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1703410418; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=qJzxWJv0tYhdOxNvR/aGys6qEwseTkdThVsDU0WnARc=;
	b=jnPtIdcHiDnBRZI/5u7pAdY16bFDt8MZvxW34vFoHyGq7ralR1TIjk01ixuN9rB0FkMuKk
	WMqR6U0NKt2zhwhwsiv7RkIQUq7ZAeFXThNrNQDBPbZJV0KBukSnnKvK0zbkdjpzJsmW7Q
	SPzDqmm9b07UujGtJSHB5OUpiM6DJkw=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1703410418;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=qJzxWJv0tYhdOxNvR/aGys6qEwseTkdThVsDU0WnARc=;
	b=qKAe7HkivA+TBnmLEgHrSAvhslBY6vuQMivcDFuIAcVlxCQ5XcFgQV6U6urEyvXnAo9U4r
	c4ZtceAEDtUp9BAA==
Date: Sun, 24 Dec 2023 10:33:37 +0100
From: Marcus Meissner <meissner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20231224093335.GM14101@suse.de>
References: <20231221143630.GD14101@suse.de>
 <20231221144656.GA40693@veps.esmtp.org>
 <20231222104647.GH14101@suse.de>
 <croalohbjdjf2cb6e5ol2l7rsdoxd6mr4mw55lyzzf7ljkkx5a@czm7be4dpjj4>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <croalohbjdjf2cb6e5ol2l7rsdoxd6mr4mw55lyzzf7ljkkx5a@czm7be4dpjj4>
Organization: SUSE Software Solutions =?iso-8859-1?Q?Ger?=
 =?iso-8859-1?Q?many_GmbH=2C_Frankenstra=DFe_146=2C_90461_Nuernberg=2C_Ger?=
 =?iso-8859-1?Q?many=2C_GF=3A_Ivo_Totev=2C_Andrew_Myers=2C_Andrew_McDonald?=
 =?iso-8859-1?Q?=2C_Martje_Boudien_Moerman=2C_HRB_36809=2C_AG_N=FCrnberg?=
User-Agent: Mutt/1.10.1 (2018-07-13)
Authentication-Results: smtp-out1.suse.de;
	none
Subject: Re: [oss-security] Re: New SMTP smuggling attack

On Sat, Dec 23, 2023 at 02:29:34PM +0200, Valtteri Vuorikoski wrote:
> On Fri, Dec 22, 2023 at 11:46:48AM +0100, Marcus Meissner wrote:
> > Hi,
> > 
> > FWIW as no CVEs were to be found yet, I filed a CVE request for Postfix now.
> > 
> > Not sure if we need it for others like sendmail too, as that is also
> > referenced by the security researchers.
> 
> Looks like exim opened a bug on this yesterday too, no sign of CVE yet:
> <https://bugs.exim.org/show_bug.cgi?id=3063>

CVEs are assigned now for:

- CVE-2023-51764 postfix
- CVE-2023-51765 sendmail
- CVE-2023-51766 exim

Ciao, Marcus
