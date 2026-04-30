Received: (qmail 17471 invoked by uid 550); 30 Apr 2026 07:01:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17446 invoked from network); 30 Apr 2026 07:01:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777532486; x=1778137286; darn=lists.openwall.com;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DgshyDuFvP9gGby0eUDXEKg/bguu2l5LLJOoxKhuG9k=;
        b=HF004P6tR9YqhgU6vtRbyHT6J+RWyFWRsR5xbIEx1CvZ6NIA1koCx7S/HopSD3B5FR
         lw85jRF0IyBE6ZkIlZu+NdvlayHVToKN1nAxjfQgS7z9kVOvYrJ0leEOYxkx/PSrBnaw
         5VfnxNEYfGnRulK58pgC16uMcPdbTnBwABAPeSvdt216EtREaRCTrbHTWl8WPiJnfexr
         y+pG8wWnUFxd2/XWtO+2bL+Djfg1EkQaHPVCrkp2tbByBlbs2A3GQRrAO2kDjnl8ujOX
         xv1JgzSpo2JSpKkWVwXbFRxZ/h/jMokGpEfJT1s7cF7cQhS2IkY3lo7OoXt9CdSq1npm
         KrLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777532486; x=1778137286;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=DgshyDuFvP9gGby0eUDXEKg/bguu2l5LLJOoxKhuG9k=;
        b=T5wOuoI91Xb6q9NTqcfVE34RdwJcvG+Pt3YjVH1kB5ZJ6t8HNQaXNWeDHpP7xTWJ3K
         s+wVJ0mcZOeRlHBCi0mnb+2xC9hUScabvPqGGPbJxTkBBFdDGe5qeTddbxoOrvvDPxxo
         xYGvK03GC2GASXGbIflh0MWA4jN/w8k3ZDe7+UvqaRrZduvgu84EVZ5IYfBNim46Z4Vt
         7v7h5Z8ZIatqxhsMolzGIGRufhPryeQZ/PwXYVNhs1DFxELvsTWfHhzux0Ivsk/M+LL+
         8SWK7mSLgG6vR2fOtt73z4v1+lA03KOQea86i71iYgD5TmBQOG6+TKzGSqu0VNyNjGE+
         VOtQ==
X-Gm-Message-State: AOJu0YyHDUH6WDc0Yz+ze9tKPTixHmXxaX3MSTJRMDN4XQ9lo/aHX5th
	AlYuUNxOUTaSub1fgODg2Pp3WjO3efIWmZlrQSqN9k7+Y3CevX5pJM2mMMv6I/37
X-Gm-Gg: AeBDietcS1kuE+vyvW4LGGV7bOYvxhZ1yjmWB0J7k1lhSDbhutxm3dnFjOrXIvFwXhy
	UcXeD83MgryTjmJtUGX5LEyKbXYDlZfC6twXqC77cojpPvXiLogEF6CTKPtnA2YDWGUAYTa1I5T
	YwS7yDA9nCgNit5KYlF+cbMPYVIEOmzOo6M9Azma6NrAl7AdW9jq3hOm/RxwMYS/W6NhHRpkx7y
	HmFN6TD2ymaywP+U0KJJ19PnkIGjDzxR4N/NI5EJQ6MEmowgep6TncLU5H4j7QpOI9zZ3CNgdNe
	Hdrg7sumTxTqdfDwN8Dna7XIRY9S8zlL5yIsP3ccdcaLoUIt1SJ16CkQGf87MqSmmfs7zanLeQw
	UzClKTUmouQFU8BDpd+fyTyww+TqDOALR7HnvfpKnoRWKv4/9YLNyIsfXD+26qzO75mu9g/0xAP
	NCdMfTdOqLxnV8nrTMq7MtpBNsuwiFJJRQP3KhMd/IjiQFTlcBLOpy2xwkUsZxAlz14ZFa8A==
X-Received: by 2002:a05:600c:3b16:b0:488:9439:880d with SMTP id 5b1f17b1804b1-48a8446406dmr25553105e9.29.1777532484189;
        Thu, 30 Apr 2026 00:01:24 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Thu, 30 Apr 2026 09:01:22 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Cc: Jan Schaumann <jschauma@netmeister.org>
Message-ID: <afL-QhLfEKqHZqka@eldamar.lan>
References: <afJorKIje4O6dXbH@netmeister.org>
 <d6111caa-db61-498a-92cb-ea7a0aa0a5e2@ehuk.net>
 <87se8dgicq.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87se8dgicq.fsf@gentoo.org>
Subject: Re: [oss-security] CVE-2026-31431: CopyFail: linux local privilege
 scalation

Hi,

On Thu, Apr 30, 2026 at 05:52:37AM +0100, Sam James wrote:
> Eddie Chapman <eddie@ehuk.net> writes:
> 
> > On 29/04/2026 21:23, Jan Schaumann wrote:
> >> Affected and fixed versions
> >> ===========================
> >> Issue introduced in 4.14 with commit
> >> 72548b093ee38a6d4f2a19e6ef1948ae05c181f7 and fixed in
> >> 6.18.22 with commit
> >> fafe0fa2995a0f7073c1c358d7d3145bcc9aedd8
> >> Issue introduced in 4.14 with commit
> >> 72548b093ee38a6d4f2a19e6ef1948ae05c181f7 and fixed in
> >> 6.19.12 with commit
> >> ce42ee423e58dffa5ec03524054c9d8bfd4f6237
> >> Issue introduced in 4.14 with commit
> >> 72548b093ee38a6d4f2a19e6ef1948ae05c181f7 and fixed in
> >> 7.0 with commit
> >> a664bf3d603dc3bdcf9ae47cc21e0daec706d7a5
> >> https://git.kernel.org/stable/c/fafe0fa2995a0f7073c1c358d7d3145bcc9aedd8
> >> https://git.kernel.org/stable/c/ce42ee423e58dffa5ec03524054c9d8bfd4f6237
> >> https://git.kernel.org/stable/c/a664bf3d603dc3bdcf9ae47cc21e0daec706d7a5
> >
> > So this is one of the worst make-me-root vulnerabilities in the kernel
> > in recent times. I see that on the 11th of April 6.19.12 & 6.18.22
> > were released with the fix backported.
> >
> > Longterm 6.12, 6.6, 6.1, 5.15, 5.10 have not received the fix and I
> > don't see anything in the upstream stable queues yet as I write. My
> > guess is backporting that far back is not as straightforward. As this
> > was introduced in 2017 all those older kernels are affected, right? Or
> > am I missing something?
> 
> It does not apply cleanly, no. Attached is the workaround we're going to
> use. I'm not an expert on IPSec but I think this is the lesser evil.
> 
> I attempted a backport but ran into a few API changes and wasn't
> confident enough to muck around with it, especially for something to
> deploy immediately.

Backports have just been posted, for 6.12.y:
https://lore.kernel.org/stable/2026043038-unwilling-slogan-a20e@gregkh/T/#t

(but I do not see them yet for all versions, but guess following soon)

Regards,
Salvatore
