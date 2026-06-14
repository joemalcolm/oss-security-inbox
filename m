X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/14/1
Message-ID: <08b67b0c-f042-4ace-820c-02fc8ecb2329@gmail.com>
Date: Sun, 14 Jun 2026 01:13:16 -0500
From: Jacob Bachmeyer <jcb62281@...il.com>
To: oss-security@...ts.openwall.com, Peter Gutmann <pgut001@...auckland.ac.nz>
Subject: Re: CVE-2026-9641: Crypt::PBKDF2 versions before 0.261630 for Perl have a weak default algorithm and number of iterations
Content-Type: text/plain; charset=utf-8

On 6/12/26 20:37, Peter Gutmann wrote:
> Robert Rothenberg <rrwo@...nsec.org> writes:
>
>> Crypt::PBKDF2 versions before 0.261630 for Perl have a weak default algorithm
>> and number of iterations.
>>
>> The default algorithm is HMAC-SHA1, which should only be used for legacy
>> systems.
> Minor nit, there's actually nothing wrong with HMAC-SHA1 since the HMAC
> construct prevents all of the attacks on SHA1.  Even the rather broken MD5 is
> still fine if used in an HMAC construct.

Does the shorter output length (128 bits for MD5; 160 bits for SHA-1) 
cause problems?  Has the general advance of computing power caught up to 
HMAC-MD5 and HMAC-SHA1, or do they remain secure? (Similar to how DES 
remains unbroken in the cryptanalytic sense, but its 56-bit keyspace is 
now vulnerable to brute force.)


-- Jacob

