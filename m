Received: (qmail 3374 invoked by uid 550); 13 May 2025 19:01:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3309 invoked from network); 13 May 2025 19:01:39 -0000
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=spacehopper.org;
	s=s3e; t=1747162890; h=from:from:subject:subject:date:date:message-id:message-id:
	 in-reply-to:in-reply-to:references:references;
	bh=SbXKsRNUbGDp7T6Bplnvq6kRPdRDWr2VoJGLNklf4u8=;
	b=VdMoQWBBwSpqY/f1v9P4uIOqaCxdLBeOjunpRAZ+rJodEW+ks4yyVgP7PNWkdwozZirc4y
	4RTFJJJo9PCzRvBA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=spacehopper.org;
	s=s3; t=1747162890; h=from:from:subject:subject:date:date:message-id:message-id:
	 in-reply-to:in-reply-to:references:references;
	bh=SbXKsRNUbGDp7T6Bplnvq6kRPdRDWr2VoJGLNklf4u8=;
	b=a+AWhRIpJC4EfihLfilYmRkTMQ+s7g38T/gtDZ5jMGztjMvFC9U0pC2djcE6udVMkF5Z6S
	oEtYbj4jtGe2UAaxdCIFptMLVaNKU+j5N4Qmz64zppfCjnM3RnocwmeaJEegDhfGvQlrYP
	CFgLXy+ZlguEKmTiNcRwfp3KgTIPd8x1NedMiDLAQjVMSM0TesOvnFvE/kJUFILeuKUb/K
	BcRyxSNJYeWF61B9TA5v1St/gkuTq542dmbqiC1z+f2K9KSNcHwlRvm2wnf6ZiOzCuLI5V
	Zy1KvuxtWGj6VWxRhkmTHSQTvd4eR7knG79QoxTlsBrWCtsNnaPzhmhEnZXgxw==
Date: Tue, 13 May 2025 20:01:30 +0100
From: Stuart Henderson <stu@spacehopper.org>
To: oss-security@lists.openwall.com
Message-ID: <3f3dottw366msbyl7vknhxldyftyvkdz2an2iw5i5rdk24fc6k@drfe7sruxmtc>
References: <A398F21D-1899-4061-A56A-8CDD5A31904E@graemef.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <A398F21D-1899-4061-A56A-8CDD5A31904E@graemef.net>
Subject: Re: [oss-security] EU Vulnerability Database

On 2025/05/13 19:43, Graeme Fowler wrote:
> EUVD is in beta testing - given all the shenanigans with MITRE and CVE, it might be worth checking out.
> 
> https://euvd.enisa.europa.eu/about
> 
> Graeme

what a helpful website:

403 Forbidden
Microsoft-Azure-Application-Gateway/v2

