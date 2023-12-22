Received: (qmail 18295 invoked by uid 550); 22 Dec 2023 11:09:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18277 invoked from network); 22 Dec 2023 11:09:16 -0000
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=spacehopper.org;
	s=s3e; t=1703243389; h=from:from:subject:subject:date:date:message-id:message-id:
	 in-reply-to:in-reply-to:references:references;
	bh=g/LzwLU00ZXMpTkLhIM95RXNYWC2wo3ouchoMzFcVwo=;
	b=4V6elq1vnRarz9/iZO5Um3EZ5MqpDOI6DV5D0dl9qbbOgJPaQMnN3XaU9Yffcfp/KpDazq
	Da5qQVzJIU5kIaBg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=spacehopper.org;
	s=s3; t=1703243389; h=from:from:subject:subject:date:date:message-id:message-id:
	 in-reply-to:in-reply-to:references:references;
	bh=g/LzwLU00ZXMpTkLhIM95RXNYWC2wo3ouchoMzFcVwo=;
	b=VX1FL7DxGygr8nN+sTJ09VMa8/TQcsKNQep59hOk+sl5DPfGvax/UYVyTm1N9RyTwH7o8N
	YXQLjwlXN5M2rwxc/ZfdVw69DJcgb0HOAEqOGv6LiXn+m25XkcZObDa+oPhaSoQUJM8Jxx
	bGrhSP+A0GN93daTyKr0lU3WX5gHo8DE80ERpthlh9aO8akt6qYLV2TeoPFyJXGK8Z8ZUf
	K1/0QJ5yWb+zXKpJ/z9a/aHr52XNfJNOSk0qkasjZZrxFbsA1siS/O58T9hPgs7i8457Gm
	nsvaNK/4/8jBgzc2akgme5E77Ap5B4NBc1+h4SQ8f7zD7bYOsMrqU7+J+TzObQ==
Date: Fri, 22 Dec 2023 11:09:49 +0000
From: Stuart Henderson <stu@spacehopper.org>
To: oss-security@lists.openwall.com
Message-ID: <ZYVufT0sq16Z-M43@symphytum.spacehopper.org>
References: <20231221143630.GD14101@suse.de>
 <20231221144656.GA40693@veps.esmtp.org>
 <20231222104647.GH14101@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231222104647.GH14101@suse.de>
Subject: Re: [oss-security] Re: New SMTP smuggling attack

On 2023/12/22 11:46, Marcus Meissner wrote:
> Hi,
> 
> FWIW as no CVEs were to be found yet, I filed a CVE request for Postfix now.
> 
> Not sure if we need it for others like sendmail too, as that is also
> referenced by the security researchers.

I'm a little confused by sec-consult's process here. They identify a
problem affecting various pieces of software including some very widely
deployed open source software, go to the trouble of doing a coordinated
disclosure, but only do that with...looking at their timeline... gmx,
microsoft and cisco?

