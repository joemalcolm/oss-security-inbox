Received: (qmail 24385 invoked by uid 550); 22 Dec 2023 12:21:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9321 invoked from network); 22 Dec 2023 11:23:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=schafweide.org;
	s=2007; t=1703244224;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=XhuHS0O54C2cpdcdwpIODj9LR6CrUSKSulocKIA1LQY=;
	b=eqgHatCAyVsNe89gNlrMuw47ho0DDA8/qELEM/6kzIJBNjWepb4U0sOh5d/7HMqRv2SYNe
	WKV9r25o/bJL2NsjHJu35t4YlRI67SIbTztUvJK7eiaKdzUYbp+w7NLw8IeqKIpkodCqaH
	XEZyFH6f5wE5NQejXzdb2XWhlxE+KBo=
Message-ID: <d0ca7096-045c-407f-9f48-c8e3855448b9@schafweide.org>
Date: Fri, 22 Dec 2023 12:23:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: de-DE, en-GB
To: oss-security@lists.openwall.com
References: <20231221143630.GD14101@suse.de>
 <20231221144656.GA40693@veps.esmtp.org> <20231222104647.GH14101@suse.de>
 <ZYVufT0sq16Z-M43@symphytum.spacehopper.org>
From: Bjoern Franke <bjo@schafweide.org>
In-Reply-To: <ZYVufT0sq16Z-M43@symphytum.spacehopper.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Re: New SMTP smuggling attack

Hi,

> 
> I'm a little confused by sec-consult's process here. They identify a
> problem affecting various pieces of software including some very widely
> deployed open source software, go to the trouble of doing a coordinated
> disclosure, but only do that with...looking at their timeline... gmx,
> microsoft and cisco?
> 

they already got some criticism regarding this behaviour:

https://zombofant.net/@jssfr/111618969359339789

https://gay-pirate-assassins.de/@moanos/statuses/01HJ8D8XQ7ZJ89HN4TZFZZ9AS8

Regards

