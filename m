X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/06/04/3
Message-ID: <1465024076.32327.17.camel@gmail.com>
Date: Sat, 04 Jun 2016 03:07:56 -0400
From: Daniel Micay <danielmicay@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: Re: expat hash collision fix too predictable?
Content-Type: text/plain; charset=utf-8

It's quite questionable for libraries to be calling thread-unsafe
functions like rand or strtok at all. AFAIK, expat is supposed to be
thread safe and is used in many multi-threaded applications.

A proper hash DoS fix is using a CSPRNG to generate keys for a keyed
hash with meaningful security properties, like SipHash. It's usually
done very poorly, and the quality of the RNG doesn't matter much if key
independent collisions can be generated for the hash function anyway.
Download attachment "signature.asc" of type "application/pgp-signature" (820 bytes)
