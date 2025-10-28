Received: (qmail 13943 invoked by uid 550); 28 Oct 2025 19:50:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13923 invoked from network); 28 Oct 2025 19:50:48 -0000
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=spacehopper.org;
	s=s3e; t=1761681038; h=from:from:subject:subject:date:date:message-id:message-id:
	 in-reply-to:in-reply-to:references:references;
	bh=C8ViYN6AHTK/Lp+csUVQDUreqq8nCcdTSB8n1AkwHaQ=;
	b=cXYWMREzZuc1BC5HKcxCiM/EmeuSAPZ90Z6JrZC/J1QgkoJ8ueXHHRakMWwzV274igG6lo
	I7qCVy1VV2oSI5Dg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=spacehopper.org;
	s=s3; t=1761681038; h=from:from:subject:subject:date:date:message-id:message-id:
	 in-reply-to:in-reply-to:references:references;
	bh=C8ViYN6AHTK/Lp+csUVQDUreqq8nCcdTSB8n1AkwHaQ=;
	b=ZCNJKM5Xyaj4ESbpn7ruoX8h97TMdFinhKMzd+hi4dYi73UP5GlPQlgD9NRfnyluiKv/vp
	UwW8mVtP7/zW2XcocCutnXHo7HqbwPyLits7LKccEoegjvq2vZKB8wr/kHU52Fp9zvoIWu
	coCLfjXx32YCA5loPtGO2NvMrzufzfD0/AxqvwAmi/m8k5tuxMXDqHogo/QWwbCScmm3h1
	HY2YqzWApxyg5jgWU2WDnxBSHxiebqe95YzdAiXVgySa+ljPJTUgISBj2xsCjgTCbrUJOE
	zPCrI8BXgXIBcVdqioLkOOPax0Mlcla/Egh6jR2qiL8FR20Pu5lQ+XCCnM/RfA==
Date: Tue, 28 Oct 2025 19:50:38 +0000
From: Stuart Henderson <stu@spacehopper.org>
To: oss-security@lists.openwall.com
Message-ID: <aQEejiYj0KbSbFSl@symphytum.spacehopper.org>
References: <2ccbcc13-fc25-484c-a34d-56f27ac87db7@oracle.com>
 <aP-rxft9ra58z9EZ@yuggoth.org>
 <CA+qj4S-=TtjPN5Us5tva1TUo7a2MJKzpXweiQCM=QLMwcq5Xjw@mail.gmail.com>
 <6c9a4094-6af3-4aa3-940d-0d19505da3b1@pipping.org>
 <aP_L7mY0OXB2iDmk@symphytum.spacehopper.org>
 <9eefb12f-5de8-4638-a4e8-b0c309e81cec@pipping.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9eefb12f-5de8-4638-a4e8-b0c309e81cec@pipping.org>
Subject: Re: [oss-security] Questionable CVE's reported against dnsmasq

On 2025/10/27 21:40, Sebastian Pipping wrote:
> Hello Stuart,
> 
> 
> On 10/27/25 20:45, Stuart Henderson wrote:
> > On 2025/10/27 19:51, Sebastian Pipping wrote:
> > > Also, fixes without a CVE will not be backported downstream.
> > 
> > That depends on the downstream.
> 
> I'm happy to learn which downstreams backport security issues
> without a CVE, in practice. Do you have an example or two?

OpenBSD does for some ports, but it's down to the individual port
maintainer.
