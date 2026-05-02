Received: (qmail 28017 invoked by uid 550); 2 May 2026 23:21:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26608 invoked from network); 2 May 2026 22:39:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777761539; x=1778366339; darn=lists.openwall.com;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Tk7bV6QvOTLNgH3RD32+yKPb/e+XNvUgrzpzI/gAj/8=;
        b=opKIP8OD5gebvMq0e8ShtuAoV5WKOaudRT0Hsen9Nlf2IgtA3Whuv71eC/NPXKRDTp
         i1yOqfYH5cJcYtr4iT2rIlXExIHm7zdF52PgaQUoq1LDMJt5X0ij1NzrMyO2MixrIayj
         nyuZaGAcQVYOvV15emy/2wV4LKMQ2j1CFODwomUtzLr1n1Sl/kSsgzYjaQLZ886oyoMx
         eLg5UrBMFNIl1y9RGqTqFKums2zdDoPLvV6AoUi/jY51SFn+C2mrAwQBXKOAUOmlvaR7
         FDhmhPepuQfJhUncpQDPvISYgniLIDI8xS/lQ/l/tjk9tjgpXJRdYqghs7eos6qe90TF
         eDgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777761539; x=1778366339;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tk7bV6QvOTLNgH3RD32+yKPb/e+XNvUgrzpzI/gAj/8=;
        b=JhI7qQSehfH5scAviigUBN99qnUikWtvR2SqnI/rIMjwTUlnUcO+Lg9hQbDOZEAY/t
         aAJMF/bV8WtpHvQUuPb9fWjdEIaDymxTtuyfK7HbMdDIrxZh6o+HOF+HInuaXjkE86UJ
         Ql3PvCyN3FCyLsCvzIxoZXnyMSkx1wmL3nt2GuhGtk37EPqAQkIYp9F7+Nc7dF8OtZbR
         QBDEbtu5B7iz79ZAOj9cMJnfyvGhXGZFdd531WRcbDO8XLRaSttKL2iAgqa2uqJZrPRt
         a1Y9t9TSR5ASzTLDChsKWNZznN5t7jS2iPkZkYddP5IkvPqg7oWgeAlRduHOvJllB7Dr
         RPiA==
X-Gm-Message-State: AOJu0YzS/LCxEEIWH4Gqx6QPGWvbnwJnFxrNgKqaCrVv1rXag+O+Gmo+
	jG2tXJ4/fh1Osbmtn/K2e7IGv3/v3A/66DakxyuDBj/NHtCRa6TbqI/idwGMzg==
X-Gm-Gg: AeBDietN8YR9yyqBRJ3dt6FywmL2K5m+D/rfx2WNRHN8N4Szebdc7x+yLJ+QYRr8cFA
	IzXzVrWgGHrEX27+E15srOU5vZMJeMQQIM6D1Dle4/p7BKHdE1aTA6lwUhLphF3IdVFNWs3PHW5
	nVBkt/q+G+J+AWI68oTQ5HtS2DqvG9H9WNLJaB6Qp97Pjf9IDwpeen73HMI07oE34wGhUH1PtU6
	puqF6sCZKdjxx6DCMsUUcWFdIuEetXaH5To3agd7gt1ysHUlhmtBC7CXGn7+VlQdHuX+hAUeuwM
	p3jQWHe94G1viSLkTllMnvrSqaH8J36R6Q2RFZtuw9a3F3ffQ05sHoVpsqGcZu2RDxiLFfUodK1
	Io8Z74G+NwijnkSdBhjc1SW8HFLFfvSo5YMe9g1w/hHMPodWFW1EdUOPFqVVf+alX1WiW5+mVvO
	Mxh7s5mWKn4o8sczY=
X-Received: by 2002:a05:7022:ec88:b0:12d:de3f:d84c with SMTP id a92af1059eb24-12dfd82bb23mr1860700c88.37.1777761538667;
        Sat, 02 May 2026 15:38:58 -0700 (PDT)
From: Collin Funk <collin.funk1@gmail.com>
To: oss-security@lists.openwall.com
In-Reply-To: <afZmueWiq1XOBvF2@gxis.de>
References: <87se8dgicq.fsf@gentoo.org> <afL-QhLfEKqHZqka@eldamar.lan>
	<2026043026-treat-devotion-23d7@gregkh>
	<CAPmip_zqswCZ6PfnW_DPEoSuY6Jewfw1eyeP_azYH4JFgRipNA@mail.gmail.com>
	<12a8c210-2f79-4fa2-a9c6-bbd203325f42@oracle.com>
	<315f9a67337d8e930cfb95a4b644946bf2f69687.camel@thirddimension.net>
	<20260501165221.27420-1-justin.swartz@risingedge.co.za>
	<56cd1494d297ad327a8c2a4cc77308559fbee7f8.camel@thirddimension.net>
	<20260502185608.24115-1-justin.swartz@risingedge.co.za>
	<20260502200500.GB229884@google.com> <afZmueWiq1XOBvF2@gxis.de>
Date: Sat, 02 May 2026 15:38:57 -0700
Message-ID: <87zf2he8se.fsf@gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [oss-security] Re: Re: CVE-2026-31431: CopyFail: linux local
 privilege scalation

Alexander Bochmann <ab@lists.gxis.de> writes:

> ...on 2026-05-02 20:05:00, Eric Biggers wrote:
>
>  > What it does break are a small set of userspace programs that made the
>  > shortsighted decision to use AF_ALG, instead of simply following the
>  > standard practice of using a userspace crypto library.
>
> For some added fun - I noticed that Debian 13, for example, 
> ships an openssl build with an AF_ALG engine, so uh, yeah, 
> depending on how you use your userspace crypto library... 
>
> No idea if that has any actual consumers anywhere out there 
> today.
>
> $ openssl version
> OpenSSL 3.5.5 27 Jan 2026 (Library: OpenSSL 3.5.5 27 Jan 2026)
> $ openssl engine afalg -c
> (afalg) AFALG engine support
>  [AES-128-CBC, AES-192-CBC, AES-256-CBC]

You can build GNU coreutils with './configure --with-linux-crypto' if
you want. It is disabled by default since OpenSSL was faster when it was
tested (and I assume that is still the case). AFAIK, no distributions
use it though.

Collin
