Received: (qmail 10040 invoked by uid 550); 12 Mar 2026 21:40:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18245 invoked from network); 12 Mar 2026 20:57:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773349026; x=1773953826; darn=lists.openwall.com;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gnzgaQEVBfWNtOb3FpNCOGAoPETWCCly0KQiKA+Nz3U=;
        b=jdfyh5acv06/KNUUz/th0RrLLjI1ufJesJqyCUPCxgBDZPXS5FefImVsX/eu9HbqNz
         RbwY2DHklPLfI4abpnO0bbG5oEqm6wl/ZN9kRmk9u+3aT3ZzbKtFsZOPPSoOlrtqdCaM
         1DlQr+x48q3eTBNJ+lYJfGlTpIwVWIfAFaWLimv4bgR5EYurUgXbgmfwxmRZhtxD57L0
         mQpymbgN+uDgeIn+UWiZsWsjIbC+A3VUCDqmJbF2QF3s/DryUoynrl2Lr3lJHH+UK7MH
         LXP0F8dIm3D/nlTtudb2rEGpkkzLmTswq/fnFeEBY98G+AQfkvrDU2nD1IStE0GJOLer
         osHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773349026; x=1773953826;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=gnzgaQEVBfWNtOb3FpNCOGAoPETWCCly0KQiKA+Nz3U=;
        b=thTrG5myaxD1EyVCg8XKw011c+LdqrxHaa0+rRokGQ71wC+xEx7lSMCoGqgxI6b6Mk
         v2TWQrYdzXzcwYIPnks801ZBuCtN1WFJV2/L9lBSU2AqX4bpRSDn+j9Exx7d6W4oKPrP
         1kwZfA95uFV2EoiLpfp3azrAf7hTm7GgRqbuGraalmHHuNe42n5MZG2diVe5P2evA5fW
         Ur0F8wrIxHZ5Z15/DPRQD1ojgYTnHBRaP3uH7YepBXgsKm9ayEYr6UXHjO2rIu/cDLgb
         vNQLbT16D0HS6KVOkM0d55Q3KKBpOuJjEr6R9O6TwyNYxAPDT++F+6dEwvplhrTNLD1M
         j8ww==
X-Gm-Message-State: AOJu0YyF+EqO6imFcO+zrbbMcWa/1bxCXTLNX2NIIrnAkGVm8K2c9I50
	GxBj2UOQOGFQJ52pZ0F0BAgSULArOel6atIE/5dzyglcExmS55oEE8WOoY54LQ==
X-Gm-Gg: ATEYQzyP9lkcbbxFIxzREj4TG3BxCejUeQ2Xfqz33Yta4wv1j8hNWlYIobFG6al8LCK
	MTfflZmXC/dvIO0FyLnZYpWENbO8jlWprsmNg4Rod3zM3i8Ch05p2k53iNsoeapk5FdWj0Ja8yP
	pbnNhtnD7Goyhl/uRF19qF0OskckRBWhEaKxmX1MfazAV/wPhDnIx0lVpo0PJIHDO8UWlUpfNOw
	AX23DyKQM4gRpZyEbIYa/lo0gXXTzg3tHJ4qXHO0nqUBvl4ot0v8CoVcCbnQXWTPzkphUj6Chrh
	YgHoR5mzjHt/oe3At1CWUGlVxTXElbgsiJoOX6iIQmRUpFZhIi8ZG+uAXOCAbLNBgy5poaD5yAR
	sdbtG7VzL6EPAxy6cJ8QUqcJdJ2oaFnRCkRblPwl+l1hMF3bv4Gu+DKO53K93Ue2O5IPNyezkZN
	4YFiiFDrd42LNNkGCJxyZkdIIPCexuSdKG/hnjTYp/lMPuH3pK5A==
X-Received: by 2002:a05:620a:1990:b0:8cd:9468:692d with SMTP id af79cd13be357-8cdb5b48870mr159182385a.54.1773349026124;
        Thu, 12 Mar 2026 13:57:06 -0700 (PDT)
From: Collin Funk <collin.funk1@gmail.com>
To: Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com,  Justin Swartz
 <justin.swartz@risingedge.co.za>,  Adiel Sol <adiel@dreamgroup.com>,
 bug-gnulib@gnu.org
In-Reply-To: <20260312201721.GA24953@openwall.com> (Solar Designer's message
	of "Thu, 12 Mar 2026 21:17:21 +0100")
References: <6d90b416fd9f2e4e8483885a480b390d@risingedge.co.za>
	<20260312201721.GA24953@openwall.com>
Date: Thu, 12 Mar 2026 13:57:04 -0700
Message-ID: <m1cy18wyu7.fsf@gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [oss-security] Remote Pre-Auth Buffer Overflow in GNU Inetutils
 telnetd (LINEMODE SLC)

Solar Designer <solar@openwall.com> writes:

> Thank you, Justin!
>
> In cases like this, we should be bringing the entire report to
> oss-security, not just a link.  So I'll include it below.
>
> Further in the above thread, there's a link to a fix pull request by
> Collin Funk.  I didn't review it in full context, but even within the
> patch context it fails my review:
>
> add_slc (char func, char flag, cc_t val)
> {
>
>   /* Do nothing if the entire triplet cannot fit in the buffer.  */
>   if (slcbuf + sizeof slcbuf <= slcptr + 6)
>     return;
>
>   if ((*slcptr++ = (unsigned char) func) == 0xff)
>     *slcptr++ = 0xff;
>
>   if ((*slcptr++ = (unsigned char) flag) == 0xff)
>     *slcptr++ = 0xff;
>
>   if ((*slcptr++ = (unsigned char) val) == 0xff)
>     *slcptr++ = 0xff;
>
> }				/* end of add_slc */
>
> In "slcptr + 6", it appears to rely on pointer math working outside of
> the object, but that's UB in C.  If the C compiler concludes that the
> "if" condition cannot be true within defined behavior, it is free to
> optimize the entire "if" and "return" out.

CC'ing bug-gnulib. Do we make any assumptions about this behavior in
Gnulib? I know we generally assume systems are more sane than ISO C
requires. E.g. no holes in integers, flat address space, etc. Perhaps it
is worth another bullet point in our documentation [1].

> A proper check may be:
>
>   if (slcbuf + sizeof slcbuf - 6 <= slcptr)
>
> or perhaps with "<" in place of "<=", unless we need an extra element
> for some reason.

Yeah, that works. Thanks.

Collin

[1] https://www.gnu.org/software/gnulib/manual/gnulib.html#Other-portability-assumptions-made-by-Gnulib
