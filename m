Received: (qmail 23568 invoked by uid 550); 6 Nov 2023 18:05:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15437 invoked from network); 6 Nov 2023 17:59:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sudo.ws; s=selector2;
	t=1699293546; h=from:from:reply-to:subject:subject:date:date:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=FPaGwDyyMa2XdE4kZjkSVnVwELLFXtaoBRztskCW6Lo=;
	b=K4rDFpSiH2czRNsU2WpXGYALJ5BSwxqlxsABZiJveS+7a/gbh2ebSyLj0OOtWcV1jFZnEO
	POgVLS8eVBEGBFxjkoUS9G4luwWSEnQC8pFtVq92kat6iSaV4RPo/r/agmjhT7X/mwAiPO
	ef2Q623Nu/VNQs294cVTLxLBXL8PL4aAGdRUo6NwYHOaWt7xsPRLXPmYd5NXnrkagtjMS/
	eyiZHs3nauqerKitOVKNU5XFdrvxBfLRHJiwWtO/3j1t3Q5bMDpHyOLlxsSuNv1tM0lMnI
	TaxC0G7H0dTj3eLKM1KWA/JlMGLTMo+CunViGGgYd0TgzTy4VS+s6AitwmPwig==
From: "Todd C. Miller" <Todd.Miller@sudo.ws>
To: oss-security@lists.openwall.com
In-reply-to: Your message of "Mon, 06 Nov 2023 16:53:27 +0100."
             <20231106155327.vekxv4lvtal44aaw@jwilk.net>
References: <9db1110b-7dbb-4e32-b174-b62672181c8e@oracle.com> <20231106155327.vekxv4lvtal44aaw@jwilk.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <45246.1699293546.1@xerxes.sudo.ws>
Date: Mon, 06 Nov 2023 10:59:06 -0700
Message-ID: <cc507107186fdcc6@millert.dev>
Subject: Re: [oss-security] Session File Relative Path Traversal in sudo-rs

On Mon, 06 Nov 2023 16:53:27 +0100, Jakub Wilk wrote:

> The original sudo implementation is affected too:
> https://github.com/sudo-project/sudo/commit/7363ad7b3230b7b0
>
> https://ferrous-systems.com/blog/sudo-rs-audit/ says it's "a lower 
> security severity due to [sudo's] use of the openat function", but I 
> can't see how openat() would help.

That is correct, openat() does not prevent opening a relative (or
absolute) pathname.  Sudo 1.9.15, released today, includes the
commit you reference above.

I consider this to be very low impact as it requires the ability
to create a user with a name that would be treated as an absolute
or relative pathname.

 - todd
