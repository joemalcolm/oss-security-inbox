Received: (qmail 23648 invoked by uid 550); 17 Aug 2024 17:08:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1116 invoked from network); 17 Aug 2024 05:04:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723871083; x=1724475883; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:references:subject:cc:to
         :mime-version:user-agent:reply-to:from:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NC+74FlS0iNvR/eZzYt4eJ23ZY9vcDMv64XQ7giBzzA=;
        b=IMap/TNkHmuzMYroaQ9CEEezKVFHKkIx5HkTs4PdQCvqnhwTx4yYlrk7lZ16ZLryS8
         mcnp/setO+RPKSOVYys5hpB1Yb0ysr9W+bdWCfe5Vw2283Ua9toQs3zDeNRnUSm8/IFr
         SZDnYFg++Jnanq+7SefAQaG59+e6TRFaTYG0y307RmB+UfsuZcZmuEIW/lwZSyQk+TDu
         2Hc7cme8qqz554ho/INXG2weAIW0vMgcoyP5C2hWLL6JHn531oAQPEtDjZYg0Tx/X9n4
         RGPS6n0lCuFZDh0OUTgYFWfAidJzs6Y3OzGP36asWJR48jpbAH6SNzGuqQkz33QnnmUW
         FVxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723871083; x=1724475883;
        h=content-transfer-encoding:in-reply-to:references:subject:cc:to
         :mime-version:user-agent:reply-to:from:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NC+74FlS0iNvR/eZzYt4eJ23ZY9vcDMv64XQ7giBzzA=;
        b=OgN23LJmzZjETO8/uSISwKRx9S9+eeSwdpeaOqUMy1h+pIAIf5Wgl7pZVHB+1FUSue
         N5cVdcsXqo5SpJP6giRQ3wSsLMN6niCaqoZ+fYUjuYOYbQrplKiLhaxOtbLkP6Q1iaWh
         NK8GE7dfddjuFbt7RegsjeIg9DbQgAobEV7jiLouuEV/DKpCnsyTQW7MDWfetw59MTDi
         0XeTaJ/tJwNNiiIHJVL7DiF+uHmdgg5qpCShQqsG692CnV/Prgdvy9kTbwYTuTItPPI8
         s4DWTObiERHtXue7TiSANrT9kPLptvNXqvn6xvjdxA7kh3a1v3Il35SNwJVL50T3oTaZ
         yiiA==
X-Gm-Message-State: AOJu0YxN5JJh53aEfJocuJELYHNWpZGTXZHRAWe3UYRIfJe7MHDcNJgm
	VhOEX22Za2K1G/Z0hma/+Y6ntRje3e9qXso2ZCu2RrSNnwWnpE512HkRzA==
X-Google-Smtp-Source: AGHT+IFlNkFhZaQcwP0Zio4GF4M7tNwm9HiHQhYFwDLmxg8OUwVSqgojkwsq3NdQw7LoL/DaD/rbEw==
X-Received: by 2002:a05:6830:6dcc:b0:70a:98d8:34a with SMTP id 46e09a7af769-70cb32335c3mr2082570a34.1.1723871083519;
        Fri, 16 Aug 2024 22:04:43 -0700 (PDT)
Message-ID: <66C02F68.1050609@gmail.com>
Date: Sat, 17 Aug 2024 00:04:40 -0500
From: Jacob Bachmeyer <jcb62281@gmail.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1.22) Gecko/20090807 SeaMonkey/1.1.17 Mnenhy/0.7.6.0
MIME-Version: 1.0
To: oss-security@lists.openwall.com
CC: Neil Horman <nhorman@openssl.org>
References: <CAJbOq16ebWS21u439bcV764HhaeQHF+eO64LdMAAKFgjdDLrMg@mail.gmail.com> <20240815111847.406cf6c1@computer> <66BECFB0.3080704@gmail.com> <CAH8yC8ndnyhyMNaQu3N_uUM_yXhd32PwR9odEOeoDe7jC5fQLw@mail.gmail.com>
In-Reply-To: <CAH8yC8ndnyhyMNaQu3N_uUM_yXhd32PwR9odEOeoDe7jC5fQLw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] feedback requested regarding deprecation of TLS
 1.0/1.1

Jeffrey Walton wrote:
> On Fri, Aug 16, 2024 at 10:01 AM Jacob Bachmeyer <jcb62281@gmail.com> wrote:
>   
>> Hanno Böck wrote:
>>     
>>> Hello,
>>>
>>> I have no particular insight on the prevalence of TLS 1.0/1.1 these
>>> days, but I want to make a more general comment.
>>> My impression of OpenSSL is that it has a strong tendency to ship
>>> "bloat", i.e., features that either barely anyone needs, but that still
>>> get added (remember Heartbeat extension?), or that should've been
>>> deprecated long ago.
>>>
>>> If this effort to deprecate old protocols is a sign that this is
>>> changing, I welcome this. I'd recommend to have a look at other things
>>> in the OpenSSL codebase that should be trimmed.
>>>
>>>       
>> That actually raises another question:  what is actually to be gained
>> from deprecating TLS1.0/1.1?  Did the protocol significantly change or
>> is the only major difference new cipher suites?
>>     
>
> The big selling point of TLS 1.2 is the authenticated encryption
> modes, like CCM and GCM. Prior to TLS v1.2, SSL and TLS relied solely
> on Authenticate then Encrypt (AtE), which was provably secure under a
> couple of constructions. Otherwise it leaked information. At TLS v1.2,
> proper Authenticated Encryption modes became available. CCM and GCM
> are provably secure, and do not leak information due to the ways the
> ciphers are combined.
>   

Those are good reasons to support TLS1.2 and to use only Authenticated 
Encryption modes over the open Internet.  But TLS1.2 also includes 
cipher suites not using Authenticated Encryption, so you still need to 
support the two-layer AtE protocol form that was used with TLS1.0/1.1.

> If SSL/TLS used Encrypt then Authenticate (EtA) like IPSec, then a lot
> of the troubles would have been sidestepped. Also see Krawczyk's The
> Order of Encryption and Authentication for Protecting Communications,
> <https://www.iacr.org/archive/crypto2001/21390309.pdf>.
>   

The AtE mode has problems, but is still supported in TLS1.2.  (Why was 
EtA not also introduced in TLS1.2?)

>> In other words, what non-trivial code paths would dropping TLS1.0/1.1
>> entirely allow removing?  (Concatenating SHA1+MD5 is trivial.)
>>     
>
> As far as I know, MD5+SHA1 is used in two places. [...]
>   

Yes, but the support for it is trivial.  What, if any, non-trivial code 
paths could *actually* be removed if support for TLS1.0/1.1 were removed?

In other words, what *actual* benefit towards hardening OpenSSL is to be 
had by completely removing TLS1.0/1.1?


-- Jacob
