Received: (qmail 4063 invoked by uid 550); 21 Aug 2024 01:08:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5998 invoked from network); 21 Aug 2024 00:44:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724201082; x=1724805882; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:references:subject:to
         :mime-version:user-agent:reply-to:from:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f0P/2T514ZNu6qkmTvlhhFcMwcp/OUcBZhNxd8KVwWM=;
        b=J9AptmmL6XvTOGHI/B9k2TCbbAIYO/+2uqIt02zri3ceOYbUIiPlecm6vviC87F85t
         A1CorZfUUW54cDIQjBZhAq6dwX1gDRBS2GZc7+Ilfz1fwUhR3z+3FSzrViml7wG1BB9K
         kh41rhEa7GtkvAgaOoknVOerD9eHkMePcS9g0ChhRQ7jumKdq9fbTWxdKRYk5ooCMDuG
         10rgC8m7z4TVRLt5KydKKY9HzVdtFqJCU/bnRwMrge2OgVXoJUGtHRQnsFPxOZPcBI17
         LYwOayL6wN8y/qXxRpNageV4ruNq+7AmHocrpq7v24UiJZtNLaP1d0EcbnVB4L4yipEa
         llXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724201082; x=1724805882;
        h=content-transfer-encoding:in-reply-to:references:subject:to
         :mime-version:user-agent:reply-to:from:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=f0P/2T514ZNu6qkmTvlhhFcMwcp/OUcBZhNxd8KVwWM=;
        b=lIhWd3ILfyozHbpOKTQDETtfRjNI+3BP/aH40a/dM6CCH7MjpbFer+0qgIhD6u5QvU
         MMIIgP1VubyuLwcnz2m6hWK79hyLB+4XOIJw4VPUUcb49X25kotv/ovlTObHZhRW1x4G
         VBCTSNpKTAqIYaBIUBqLQnuLPWPWOYJz3l5aDqXYLMxLBKwwBBjoQWdH1RIDBjH200XH
         E/zaT2cne2i5diDMs0V5U2TJqDz0KcN021e915IdOjvSAmRCDwX8Yz2QZ68PvaFt3zGJ
         8hMIfnVxMHzj88PqBCzOUG6YSrT2dGxzz4wt6ojPQbHC/KcZx2laMkJ0uIdzTy5hft7C
         E5yQ==
X-Gm-Message-State: AOJu0YybSY9QUu4VpCEDcqNOWxOwdNz38ecM8S39TfFUZDtfmQb9ezoL
	TIC5F4V/avhkO6Z1UfCYcTsZNBXOEavPSPWEUrL4Vvh0mtCNjgINGWTndA==
X-Google-Smtp-Source: AGHT+IH9w6ui9W0gqYl1mLYTDAMkEE+P0XvRhKD2xAvx9IydNsPPzbRqsDKD5MWMVM/TCWh4LK03dw==
X-Received: by 2002:a05:6870:1712:b0:260:23bb:1082 with SMTP id 586e51a60fabf-2735fc13325mr312682fac.10.1724201081575;
        Tue, 20 Aug 2024 17:44:41 -0700 (PDT)
Message-ID: <66C53878.9010006@gmail.com>
Date: Tue, 20 Aug 2024 19:44:40 -0500
From: Jacob Bachmeyer <jcb62281@gmail.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1.22) Gecko/20090807 SeaMonkey/1.1.17 Mnenhy/0.7.6.0
MIME-Version: 1.0
To: oss-security@lists.openwall.com
References: <CAJbOq16ebWS21u439bcV764HhaeQHF+eO64LdMAAKFgjdDLrMg@mail.gmail.com> <20240815111847.406cf6c1@computer> <66BECFB0.3080704@gmail.com> <CAH8yC8ndnyhyMNaQu3N_uUM_yXhd32PwR9odEOeoDe7jC5fQLw@mail.gmail.com> <66C02F68.1050609@gmail.com> <ME0P300MB0713D8A7D829DC25E6520BA3EE832@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM> <66C2ACB0.2040203@gmail.com> <20240819181412.tVrtAtA9@steffen%sdaoden.eu>
In-Reply-To: <20240819181412.tVrtAtA9@steffen%sdaoden.eu>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] feedback requested regarding deprecation of TLS
 1.0/1.1

Steffen Nurpmeso wrote:
> Jacob Bachmeyer wrote in
>  <66C2ACB0.2040203@gmail.com>:
> [...]
>
>  |Removing support for TLS1.0/1.1 has definite costs in compatibility, 
>  |costs that hit particularly hard with legacy embedded devices for which 
>  |no updates will be available.  Given that TLS1.2 is to remain supported, 
>  |what benefits to maintainability are to be had?  How much of the 
>  |TLS1.0/1.1 support does *not* overlap with the TLS1.2 support?  How much 
>  |of it *should* overlap if the code were to be optimally refactored?
>
> [...]
>
> My own gut feeling says btw that no logical argument of whoever
> can change anything on this topic, there is a pimple to go, the
> cancel culture requires a victim, the next announcement (ie web
> page to which the otherwise hollow email message points) shall
> have an effective advertising-niveau-compatible entry.
>   

Then I am publicly preparing the "I told you so" in the list archives 
for when the illogical act eventually draws consequences, like asset 
management tools getting cracked because they include an unmaintained 
OpenSSL to talk to legacy devices.  (And talking to legacy devices is 
expected to be non-negotiable for asset management tools.)

> [...]
>
> So it *could* be "removing support of TLSv1.0 and v1.1" is in fact
> only a small mostly housekeeping diff at first.
>   

Which is exactly the reason *not* to remove that support:  the 
maintainability benefits are negligible, while the costs to applications 
that actually need that support are vast.

Restrict negotiating those versions behind special configuration?  Sure; 
those protocols should no longer be used on the open Internet.  Remove 
them entirely?  That will make problems for exactly the niche 
applications that can have obscure and nasty follow-on effects.

> By the way i found your question on additional aka redundant
> checksums (wherever) very interesting, given that Antonio
> Diaz Diaz (author of plzip plus support libraries) swears on
> CRC-32 for long time storage, with absolutely impressive numbers
> on reliability (i think here: [1])
>
>   [1] https://www.nongnu.org/lzip/safety_of_the_lzip_format.html#lzma_crc

The other side of using CRC for archives is that all modern storage uses 
ECC "behind the scenes" and the CRC might actually be useless if the 
underlying ECC would catch all errors the CRC would detect.  The 
critical difference between an archive checksum and a confounder is that 
the errors an archive checksum must catch occur randomly, while a 
confounder is hoped to introduce a contradiction to an intelligent 
attacker's problem.  (In other words, Mallory's cryptanalytic attack 
requires flipping bits that will alter the checksum.  The 
straightforward balancing act to preserve the checksum requires flipping 
bits that the cryptanalytic attack cannot accommodate.  I do not know 
how difficult combining the balancing act into the cryptanalytic attack 
would be.)


-- Jacob
