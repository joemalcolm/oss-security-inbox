X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/14/3
Message-ID: <f42daef7-4c29-1d75-d89e-0ad32248526b@iki.fi>
Date: Sun, 14 Jun 2026 13:31:53 +0300 (EEST)
From: Harry Sintonen <sintonen@....fi>
To: oss-security@...ts.openwall.com
Subject: Re: CVE-2026-9641: Crypt::PBKDF2 versions before 0.261630 for Perl have a weak default algorithm and number of iterations
Content-Type: text/plain; charset=utf-8

On Sun, 14 Jun 2026, Jacob Bachmeyer wrote:

> On 6/12/26 20:37, Peter Gutmann wrote:
>> Robert Rothenberg <rrwo@...nsec.org> writes:
>> 
>>> Crypt::PBKDF2 versions before 0.261630 for Perl have a weak default 
>>> algorithm
>>> and number of iterations.
>>> 
>>> The default algorithm is HMAC-SHA1, which should only be used for legacy
>>> systems.
>> Minor nit, there's actually nothing wrong with HMAC-SHA1 since the HMAC
>> construct prevents all of the attacks on SHA1.  Even the rather broken MD5 
>> is
>> still fine if used in an HMAC construct.
>
> Does the shorter output length (128 bits for MD5; 160 bits for SHA-1) cause 
> problems?  Has the general advance of computing power caught up to HMAC-MD5 
> and HMAC-SHA1, or do they remain secure? (Similar to how DES remains unbroken 
> in the cryptanalytic sense, but its 56-bit keyspace is now vulnerable to 
> brute force.)

No it doesn't. Since with HMAC the collisions are not a problem(*), 
2^128 is plenty large enough keyspace against bruteforce attacks. Even 
combining the insane compute power that is in things like the current 
cryptocurrency systems it would still take way longer than the current 
age of the universe to bruteforce.

*) https://eprint.iacr.org/2006/043.pdf


   Regards,
-- 
l=2001;main(i){float o,O,_,I,D;for(;O=I=l/571.-1.75,l;)for(putchar(--l%80?
i:10),o=D=l%80*.05-2,i=31;_=O*O,O=2*o*O+I,o=o*o-_+D,o+_+_<4+D&i++<87;);puts
("  Harry 'Piru' Sintonen <sintonen@....fi> https://www.iki.fi/sintonen");}
