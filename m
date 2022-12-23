Received: (qmail 1790 invoked by uid 550); 23 Dec 2022 07:06:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1766 invoked from network); 23 Dec 2022 07:06:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm2; t=1671779191; x=1671865591; bh=orAroJ04PE
	YU3XV9OKbILKHXm0YMifwHWeukhsjy4s8=; b=pGMB1bxbsCCXyz3tpqu+htnTPS
	cvgMmIdKv7wvLrVjLJXYUMOGa8e1F5CBLZWewmvQS5DFiVpj/4+JvTVo7n6jZP61
	LYFpkDbJ5+HBTQMi4tX387d5AYo/LLSqzZkW05U2duafm56DZUUwh4PPPxtXCGsW
	+Ych2khwjXFcqIjoA/EdDUnU41LKgZ5Stj4iI9azpjaQfAFhr3543x+DEqqfJJ3A
	IfVJxQlYtSN2rWjWcymyH9UNdMVGbFyOYlD0Vwqxs+8GYcErrovGUSgAAyWVxuaK
	1y8KvS6rXdyKnWN55CFEVxOZX9VbUD6FBkDoxCpMtdc/Vwv/Tgvytf3/dHNw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1671779191; x=1671865591; bh=orAroJ04PEYU3XV9OKbILKHXm0YM
	ifwHWeukhsjy4s8=; b=tKb6pFt+R6Q3nkpWqKsPf9JISIVSvFv+1Vva2hR4gQGb
	2SDxNAqF0btn59cyLFNxCmphETLlZUinqwn/CKC39ECgMW7P4FZn2l69PBTmMMGR
	msO+nCXxhVqmKdpsGoUl+tUx8tZcwEEr6APwHAyVJJ5gW7XT5IzDvuFF9rQkQ9Pg
	W3w3Hu13ONgf05VgJ61HhpJG1hEwSqLyyyoIB3NikCwaWdD9k33bcEN3YGGJBdjX
	Kw39qheMtkvCpV3JXpyxlTjbhJSr3eEVdK6l+dBLm2yYgJuk5zTydJngmEyUQCzD
	6RfWoYrq59cEBFXGn3YQkk6jWCaYVakGP6U3fBFGuA==
X-ME-Sender: <xms:d1OlY1MVUzZtlNDXw7zf8bquQXzSqMcSWjqdoV0En7VSl_YQ9lOASA>
    <xme:d1OlY3_CArHzj_E8jlip3opxI5QRPqCVBc-Nq0bo1JluCvqx7KEm4ywbtaH4fxzXs
    9sLkvjphpWQ-A>
X-ME-Received: <xmr:d1OlY0RCXz_L8G2Z-I_7u3yY375NA5E1wFp3H4EwgpFwjpVz3qWJfeegzjt1Qgnr16RgVa-8TzboyZdJNrktdcKQ-68DM8o5>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrhedugddutdeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesthdtre
    dttddtvdenucfhrhhomhepifhrvghgucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheq
    necuggftrfgrthhtvghrnhepteefgfevtefhheeuheejiefffffftdehvdekgeetieefje
    ehudffffeihfevtdeknecuffhomhgrihhnpehglhhosggrlhhsvggtuhhrihhthigurght
    rggsrghsvgdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrih
    hlfhhrohhmpehgrhgvgheskhhrohgrhhdrtghomh
X-ME-Proxy: <xmx:d1OlYxu7q-TALYs7QWf1XwkbhTS2fX8XnjESSuHCh2P5uYXVbYfVig>
    <xmx:d1OlY9ewYMoZCXtyw0unTNFLbeq0B9VsJtD9S0iDLbzCGO3Np7KKCA>
    <xmx:d1OlY90RJwOeQIJpWohNOsyzKzBcjjS2D42OIDq3YUkR5YIfaqS8kA>
    <xmx:d1OlY9njkE3Ktdz6doSRqT_BDo2doGH7JczFpbWe2GbuHYtYRIx_yg>
Feedback-ID: i787e41f1:Fastmail
Date: Fri, 23 Dec 2022 08:06:28 +0100
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Message-ID: <Y6VTdO608VUE38Ke@kroah.com>
References: <CAKoP-y-rbU=xEowJGp6my0khWMSbE05+ncDiE3wtXTOWwvyScA@mail.gmail.com>
 <Y6TQ0HyCJOMkKSDn@netmeister.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y6TQ0HyCJOMkKSDn@netmeister.org>
Subject: Re: [oss-security] Details on this supposed Linux Kernel ksmbd RCE

On Thu, Dec 22, 2022 at 04:49:04PM -0500, Jan Schaumann wrote:
> Lastly, given that this is a coordinated disclosure,
> I don't know why there are no CVE IDs reserved for
> these.

The kernel developers do not work with CVEs at all as they are not all
that relevant for the most part for kernel issues.  MITRE agrees with us
will not even give them to us if we ask for them :)

Some Linux companies still insist on assigning CVEs, but that's
primarily to help enable their internal engineering processes more than
anything else.

As an alternative, please look at the GSD (Global Security Database,
https://globalsecuritydatabase.org/) for which the kernel does get ids
assigned for issues like this, and many many others.

sorry,

greg k-h
