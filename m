X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/11/04/7
Message-ID: <5277DB10.8050803@fifthhorseman.net>
Date: Mon, 04 Nov 2013 12:36:16 -0500
From: Daniel Kahn Gillmor <dkg@...thhorseman.net>
To: oss-security@...ts.openwall.com
Subject: Re: openssl default ciphers
Content-Type: text/plain; charset=utf-8

On 11/04/2013 12:16 PM, Stefan Bühler wrote:

> while working on the lighttpd SNI bug I realized that openssl defaults
> to a very bad set of ciphers.
>
> I also couldn't find a sane recommendation from upstream openssl to use
> as default, as "DEFAULT" obviously is not a good choice. (I also don't
> see any reason why "DEFAULT" includes export and "LOW" ciphers...)
>
> Is 'DEFAULT@...ENGTH:!LOW:!EXP' (should
> be similar to 'HIGH:MEDIUM:!aNULL') a reasonably default?
>
> I don't want to enforce PFS or break compatibility on purpose; so I
> think the default could be a little bit less "secure" than what I would
> actually recommend to use.
>
> So I'm not interested in how to get a super extra secure cipher set
> (there are many cipher strings in the wild by various folks for that),
> but more in a reasonable lower bound.

There is ongoing discussion on one of the major users of OpenSSL 
(apache) about what the defaults should be for that user:

  https://issues.apache.org/bugzilla/show_bug.cgi?id=49559#c11

I agree that the OpenSSL defaults seem too lax.

	--dkg
