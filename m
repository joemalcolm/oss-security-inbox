Received: (qmail 18127 invoked by uid 550); 9 Aug 2024 12:31:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29808 invoked from network); 9 Aug 2024 01:50:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723168221; x=1723773021; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:references:subject:to
         :mime-version:user-agent:reply-to:from:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aNBQvKHgm9706+RPxXIx/AxrClYrlMZsBUrE7mBmhdg=;
        b=mRysPnvi7n1d97ndD+jJL9CQVdxA6bHw2e1F2DK163m1ptxWzPqssywyCshk+kH2Bq
         7/YLiU79IpAJZgBYRHmECuHjmC18jLjMcoG+GRDbeuA8b5tmntMuS4lqLQ/JyU+45amL
         hwFVIDOKDPhh1u37HZsObf0Tq/p6+RapNO0IlHxpRE1Lc9DvDaGRi4wO35oTxHqbx+Rt
         jU+nvsG5BQ4BxWgXNPwVfqimJHNodpxd4Hwi60e+xRAp0kaLajXC7kAWBkBlWemkgZvb
         iWqjgnXaZnoCNeMMNjy34Ah83i0GM2ooJIovjEQcyz+y11vWaP66/XreP2RpBkHZ1Y90
         LyMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723168221; x=1723773021;
        h=content-transfer-encoding:in-reply-to:references:subject:to
         :mime-version:user-agent:reply-to:from:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aNBQvKHgm9706+RPxXIx/AxrClYrlMZsBUrE7mBmhdg=;
        b=P3kl01PTj1EmwWhMCTy+FPKAojrx0z3OG8DJ2BEam4c/NCZHuc8PheIzBVTEpuckgu
         3MLQyChbgbwO8HOz7KOjJikg8FkpNOZ5S9yLNd+U4IPZeGbELpt75XAAkRSKXTbZYsGn
         EV2XmIhE4bM15Zn/QridEVy0nXsdAJsOvLtOC1rclaq3yEWfW/rWPCqbojcoOhNkrCcR
         pxVtix4V3IlEOxnWs9jRMdTC06E7MSas+Z8ylfSUBvXSKzvcjYUx4GlIJc9sPmPY/okX
         FSrKiBsUz7GBpROK63u6pMxpj1CU/rQ7Qm8YI6/JWSI1n5Zcq2mS5JQO/uKM4ciydpm9
         feMg==
X-Gm-Message-State: AOJu0YyFuTUhICqG+L4EfwiFMlpzRzkmY/pSRGcwOZ6lMcSmMeBjU0Kq
	jCxvUDZls/+XqmFZIKxZ0b9sQV/GElZ6S7tuijsGG+vBZHJ+ay3d0jGqMg==
X-Google-Smtp-Source: AGHT+IEzWPnwB5qOKGGetKmbqfGjFx9NZjiTy2cBLLltWaOGwwC8OM7cSVhXhhytru3mxWgAfhOLCA==
X-Received: by 2002:a05:6870:6586:b0:260:e678:b657 with SMTP id 586e51a60fabf-26c62c19f23mr134410fac.7.1723168220999;
        Thu, 08 Aug 2024 18:50:20 -0700 (PDT)
Message-ID: <66B575DB.6000107@gmail.com>
Date: Thu, 08 Aug 2024 20:50:19 -0500
From: Jacob Bachmeyer <jcb62281@gmail.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1.22) Gecko/20090807 SeaMonkey/1.1.17 Mnenhy/0.7.6.0
MIME-Version: 1.0
To: oss-security@lists.openwall.com
References: <CAJbOq16ebWS21u439bcV764HhaeQHF+eO64LdMAAKFgjdDLrMg@mail.gmail.com> <20240806171232.6bd08942@zbook> <ZrJv8PDeCxQQJVxH@itl-email> <20240807144047.GA12108@test> <20240807174807.GA4206@openwall.com> <DA850315-DB70-489A-994A-8845695BD15B@redhat.com>
In-Reply-To: <DA850315-DB70-489A-994A-8845695BD15B@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] feedback requested regarding deprecation of TLS
 1.0/1.1

Clemens Lang wrote:
>> On 7. Aug 2024, at 19:48, Solar Designer <solar@openwall.com> wrote:
>>
>> 1. Hosting a public server that's meant to be usable by the widest
>> audience possible, including from both up-to-date and older systems.
>> For example, a website should display in latest web browsers, but
>> command-line downloads from the same server should also work from old
>> systems (e.g., running LTS distros).
>>     
>
> Speaking of LTS distros: RHEL 6.10 supports TLS 1.2.
> At what point is a distro not LTS, but a museum piece which we can ignore?
> What currently supported LTS distro does not support TLS 1.2?
>   

Legacy is a long tail and there is a big difference between 
communications on the open Internet and support for archaic protocol 
versions to talk to older devices on a LAN.  Disabling support by 
default is one thing; removing it entirely is another and much more serious.

>> 2. Scanning or crawling a wide variety of systems, e.g. by a search
>> engine indexer, an asset enumeration tool, a security scanner, or during
>> a pentest.
>>     
>
> What good is a search engine index of a webpage no modern browser will connect to?
>   

A user may have an older browser around, the page may also be available 
via plain HTTP (very likely if the server is that old), or the search 
engine might offer a cached copy.  For a specific crawler that could 
have use for this scenario, consider the Internet Archive Wayback Machine.

> The other use cases sound like they’d be done with special tooling anyway, in which case that can continue to ship an older version of OpenSSL for this purpose.

Presumably that "older version of OpenSSL" would be unmaintained, which 
means that it is likely to accumulate known exploits over time.  This 
could be *very* bad for an asset enumeration tool or security scanner 
that could encounter a malicious server that insists on an old protocol 
version in order to exploit that older library and crack the scanner host!


-- Jacob

