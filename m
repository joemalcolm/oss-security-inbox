X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/16/1
Message-ID: <444ae456-3665-45d1-9f51-0325d35cb2c6@gpg.fail>
Date: Wed, 16 Sep 2026 01:48:31 +0200
From: "Lexi Groves (49016)" <contact@....fail>
To: oss-security@...ts.openwall.com
Subject: Re: Retrospective by 'gpg.fail' authors
Content-Type: text/plain; charset=utf-8

Hi! Author of the talk here.

To clarify: 1 was actually a 0day. Classic printf injection: %n provides 
memory writes,
multiple X.509 certificates in one PEM file to reenter to defeat ASLR, 
and from there
it calls execv@.... The payload just execv's the certificate, which is a 
polyglot by
simply inserting a shebang and bash command in the PEM file since I was 
lazy.

2 was unfortunately collided before I managed to exploit it and there 
was not enough
time to properly explain it in the talk. Essentially, after using a 
logic bug to
corrupt some buffer size calculations, we get memory corruption in the 
RSA-PSS code.
Unfortunately, since the 2nd phase of RSA-PSS is hashing, our OOB write 
is hashed
output of an input we control with a hashing algorithm we control. An 
attacker will
obviously choose SHA-1 here since it is the cheapest. The actual target 
of the OOB
write is the glibc malloc_chunk header, specifically the size field 
directly in front
of the buffer, which is 8 bytes, has 3 flag bits, and ~8 bits of 
acceptable size values,
giving us ~53 bits of those 8 bytes that we need to brute-force. I did 
some testing
with instrumentation to emulate having a preimage, and subsequent 
free()s can be used
to exploit this, again with multiple certificates to bypass ASLR too, 
but I did not
pursue this much further since it was reported by the other team and 
patched already.
Since a lot of distros seem to be unaware of it, I'd recommend using the 
CVE system =)

Cheers!

On 9/14/26 21:28, Clemens Lang wrote:
> Hi,
>
>> On 13. Sep 2026, at 02:44, Sam James <sam@...too.org> wrote:
>>
>> They also mention another vulnerability in the slides that is in the
>> talk but I've not seen that yet. A PoC is available in their repo [3].
> I see two potential vulnerabilities discussed in this talk:
>
> (1) A RCE in `gpgsm` 2.4.9 when invoked as `gpgsm --debug all --import bad.cert`, with the bad.cert file at [1]. This is apparently a 0-day, as they say it was not reported to GnuPG. I’m not sure how widely used this code is, and how many users regularly call `gpgsm --import` with untrusted inputs. The researcher(s) say "if you're here to write a patch for the calc pop: sm/certcheck.c:634 lol” for this problem, which may be a pointer to debugging it.
>
> (2) An integer underflow followed by a buffer overflow in libgcrypt’s RSASSA-PSS verification discussed in slides 38-45 of [2], fixed in libgcrypt commit 0d64fc2 [3] (also reported by somebody using Claude Code) released in (apparently) libgcrypt 1.12.3 without a CVE assigned. The researcher(s) claim this can be used for RCE from the S/MIME verifier and GnuPG with a 53-bit preimage attack (they don’t say which hash algorithm, but I wouldn’t be surprised if SHA-1 is sufficient).
>
> Personally, I’m not all that interested in (1), but (2) seems to be in code that’s widely used, and there should probably be a CVE assigned for it so we can track fixes and backports.
>
>
> [1]: https://git.gay/49016/gpg-fail-aftermath/src/branch/main/pocs/bad.cert
> [2]: https://git.gay/49016/gpg-fail-aftermath/src/branch/main/slides.pdf
> [3]: https://gitlab.com/redhat-crypto/libgcrypt/libgcrypt-mirror/-/commit/0d64fc2
>
>
