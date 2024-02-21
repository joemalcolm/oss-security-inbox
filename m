Received: (qmail 7257 invoked by uid 550); 21 Feb 2024 10:46:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7236 invoked from network); 21 Feb 2024 10:46:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1708512573; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=TE0OwFVSMtnn0k3ssJ7A+3EEYdz2DcJRb2hRO8CROgs=;
	b=t1xwolni2bC0vN8xVl/Zd+hkTlOR/+8hmWzd4xM45iLE3Qy3ypqX7onkkprp91eiRv5fjn
	K4SvFCLwYPLpj3GfZsxJaqbL3lDg2AK8KrOBZrztD5JJs3lL7y9VpjJTCvwbtB9dpibwOM
	heyunwAdZ5Qv07w6t5c+Ha0kY4jNSPs=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1708512573;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=TE0OwFVSMtnn0k3ssJ7A+3EEYdz2DcJRb2hRO8CROgs=;
	b=sD5pmR8fbmNAdvvna/UkYMQp+Eof+pDmvJpjXTFlg9R3fkdfc32POG2+4j0uG0tigSlG/S
	evUXF8XCZZP85ABQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1708512572; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=TE0OwFVSMtnn0k3ssJ7A+3EEYdz2DcJRb2hRO8CROgs=;
	b=jm0CFk5A8NIqIJkP0NTDcNqtp/oo3yG2fOvaujq4GkcA0R4ymRIhCmFjrdQhnqkSkCA+EF
	sjrJosw20CX8wwlgjL2mpfvkInLCxHVYv1kIpb6pgKILbUSolwqChbzPSrhRUdl+/TRSSr
	IWoBK918Z0qR1ymB85wZcGr4E8TQO9I=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1708512572;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=TE0OwFVSMtnn0k3ssJ7A+3EEYdz2DcJRb2hRO8CROgs=;
	b=cKBlzAun44ZhDbgG0UIcusFNUcmzdReXRckGtT6G1y+EqcLBwKaLHve22qtfO3gBOrLKVL
	DVqfhIhgvSvxScCA==
Date: Wed, 21 Feb 2024 11:49:31 +0100
From: Marcus Meissner <meissner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20240221104928.GZ5469@suse.de>
References: <7e78b8d8-860c-47f5-bbec-a967c277d539@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7e78b8d8-860c-47f5-bbec-a967c277d539@oracle.com>
Organization: SUSE Software Solutions =?iso-8859-1?Q?Ger?=
 =?iso-8859-1?Q?many_GmbH=2C_Frankenstra=DFe_146=2C_90461_Nuernberg=2C_Ger?=
 =?iso-8859-1?Q?many=2C_GF=3A_Ivo_Totev=2C_Andrew_Myers=2C_Andrew_McDonald?=
 =?iso-8859-1?Q?=2C_Martje_Boudien_Moerman=2C_HRB_36809=2C_AG_N=FCrnberg?=
User-Agent: Mutt/1.10.1 (2018-07-13)
Authentication-Results: smtp-out2.suse.de;
	none
Subject: Re: [oss-security] CVEs issued by the Linux kernel CNA

Hi,

On Tue, Feb 20, 2024 at 03:30:28PM -0800, Alan Coopersmith wrote:
> As recently announced [1], kernel.org is now a CNA for the Linux kernel, and
> today issued its first 8 CVEs, as seen in the archives of their mailing list
> at https://lore.kernel.org/linux-cve-announce/ .
> 
> Their documentation [2] warns that we should expect a "seemingly large number
> of CVEs that are issued by the Linux kernel team".
> 
> Since there's already an archived mailing list covering the CVE assignments,
> I don't think it makes sense to mirror that large amount of traffic here, but
> to only bring to oss-security those that are especially interesting or useful
> to discuss further.  What do others think?
> 
> [1] http://www.kroah.com/log/blog/2024/02/13/linux-is-a-cna/
> [2] https://docs.kernel.org/process/cve.html

I would not mirror it here as they have their list already.

Ciao, Marcus
