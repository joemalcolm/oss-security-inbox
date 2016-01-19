X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6060" "Tuesday" "19" "January" "2016" "10:28:19" "+0100" "Bart van Tuil" "bvantuil@mivargroup.nl" "<569E01B3.8@mivargroup.nl>" "161" "[oss-security] Re: [FD] It essentially wins crypto vulnerability bingo! gilfether/phpcrypt" "^Date:" nil nil "1" "2016011909:28:19" "[oss-security] Re: [FD] It essentially wins crypto vulnerability bingo! gilfether/phpcrypt" (number mark "        bvantuil@miv Jan 19  161/6060  " thread-indent "\"[oss-security] Re: [FD] It essentially wins crypto vulnerability bingo! gilfether/phpcrypt\"\n") "<CAKws9z0RM_1BVD1PZoaax0jGi74_nx119-9RzQagjhMqOJYxXQ@mail.gmail.com>" ("<CAKws9z2psDS2P25SOykpaR0QUiMZd1Pe1q4Q3ia_YyXXh-ptGQ@mail.gmail.com>" "<569CADA7.8070701@mivargroup.nl>" "<CAKws9z0RM_1BVD1PZoaax0jGi74_nx119-9RzQagjhMqOJYxXQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5940 invoked by uid 550); 19 Jan 2016 17:14:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7895 invoked from network); 19 Jan 2016 09:28:32 -0000
References: <CAKws9z2psDS2P25SOykpaR0QUiMZd1Pe1q4Q3ia_YyXXh-ptGQ@mail.gmail.com>
 <569CADA7.8070701@mivargroup.nl>
 <CAKws9z0RM_1BVD1PZoaax0jGi74_nx119-9RzQagjhMqOJYxXQ@mail.gmail.com>
Openpgp: id=DDDE74F8FD6EF317F37B8FFB49D423649143CD7C
X-Enigmail-Draft-Status: N1110
Message-ID: <569E01B3.8@mivargroup.nl>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:42.0) Gecko/20100101
 Firefox/42.0 SeaMonkey/2.39
MIME-Version: 1.0
In-Reply-To: <CAKws9z0RM_1BVD1PZoaax0jGi74_nx119-9RzQagjhMqOJYxXQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 19 Jan 2016 09:30:23.0781 (UTC) FILETIME=[05E64D50:01D1529C]
Date: Tue, 19 Jan 2016 10:28:19 +0100
From: Bart van Tuil <bvantuil@mivargroup.nl>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: [FD] It essentially wins crypto vulnerability bingo!
 gilfether/phpcrypt
To: Scott Arciszewski <scott@paragonie.com>,
 "fulldisclosure@seclists.org" <fulldisclosure@seclists.org>,
 "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Scott,

I believe you are confusing implementation with technique: a good
framework to make use of a more low-level function is for the
mainstream developer the best part. In technology itself, an ECC vs
RSA is really up for discussion.

Though ECC is more performant, as well in terms of keylength vs
security and cpu/memory resources (depending on implementation) than
RSA, RSA has a legacy of being shot at for ages where ECC is
relatively new and may, with higher probability, still contain
undiscovered weaknesses. This is especially true for new constructions
now or recently introduced.

Frameworks/helper libraries around these relatively low-level
functions are a whole other story though - but both have in common
that the frameworks and helper libaries exist, which can be
implemented without knowing exactly what is going on in the background.

I am guessing, without knowing exactly what this EasyRSA library
features, you will still remain with a trade-off between factors like
performance and general support. Where ECC would be carried easier by
USA government, RSA would be more carried by devices like passes and
other (existing) constructions for personal authentication.

It feels a little short-sighted to immediately write off RSA with the
coming of something new, while ECC still has to largely prove itself
and RSA has its weaknesses widely known (and can be defended against).
Especially if there's libaries, as you mentioned before, that
implement correct OAEP (with SHA256), as well as there are for ECC.

I would love to continue this conversation, but i guess we should take
it to outside of the mailing list. This could well be something really
productive.


All the best,


Bart


Scott Arciszewski schreef:
> On Mon, Jan 18, 2016 at 4:17 AM, Bart van Tuil
> <bvantuil@mivargroup.nl> wrote:
>> 
> I don't get something:
> 
>>>> 4. https://github.com/paragonie/EasyRSA (reluctantly included
>>>> for people that really believe they need RSA)
> 
> ...What's, in your opinion ofcourse, t he wrong thing about 
> implementing RSA in a decent web application? PHP is used for
> much, much more than building simple frontpages without a backend
> (where this might be a senseless complication). RSA is still the
> way to go about implementing accessible asymmetrical
> crypography...
> 
> I do agree, wholeheartedly, that building your own cryptographic 
> primitives is just an expensive way of ultimately fooling
> yourself.
> 
> Just wondering...
> 
> 
> All the best,
> 
> 
> Bart
> 
> 
> <rant> PS: All this bashing on PHP really tires me - it's getting
> old and redundant. And no - im not a PHP developer. </rant>
>> 
>> 
>> This email and any attached files are confidential and intended
>> solely for the intended recipient(s). If you are not the named
>> recipient you should not read, distribute, copy or alter this
>> email. Any views or opinions expressed in this email are those of
>> the author and do not represent those of the   company. Warning:
>> Although precautions have been taken to make sure no viruses are
>> present in this email, the company cannot accept responsibility
>> for any loss or damage that arise from the use of this email or
>> attachments.
>> 
> 
>> What's, in your opinion ofcourse, the wrong thing about
>> implementing RSA in a decent web application? ... RSA is still
>> the way to go about implementing accessible asymmetrical
>> crypography...
> 
> No it's not. You should, in order of best to worst, choose:
> 
> 1. ECDH/EdDSA over Curve25519 or Curve448. Use ECDH for determining
> a shared secret key for symmetric key cryptography (i.e. ChaCha20
> + Poly1305), use EdDSA for deterministic signatures. This is what 
> libsodium's crypto_box() and crypto_sign() do.
> 
> 2. ECDH/ECDSA over NIST P-256, if you really have to implement
> support for them.
> 
> 3. 2048-bit e=65537 RSA, using OAEP for encryption and PSS for 
> signatures, with MGF1+SHA256. You should also hire an expert to
> review your implementation and parameter choices.
> 
> Most people who implement RSA implement PKCS1v1.5 padding, which
> has been publicly known to be vulnerable to a chosen-ciphertext +
> padding oracle attack. SINCE 1998. Also, e = 3 RSA signature with
> PKCS1v1.5 padding is what broke Firefox's certificate validation a
> few years back.
> 
> That's a lot of land mines to overcome, and do you really expect a 
> line-of-business web developer to dodge them all? Even if they 
> succeed, the security of RSA hinges on the difficulty of prime 
> factorization; something that improvements in index calculus
> attacks are weakening every year. It's a sinking ship.
> 
> Contrast with libsodium. All you need is crypto_sign() and 
> crypto_sign_open(). Or crypto_box() and crypto_box_open(). All of 
> which uses modern, side-channel-resistant elliptic curve
> cryptography. It couldn't be much simpler while also being
> conservatively secure.
> 
> Stop implementing RSA. You're setting yourself up for failure.
> 
>> PHP is used for much, much more than building simple frontpages
>> without a backend (where this might be a senseless
>> complication).
> 
> Of course.
> 
> Scott Arciszewski Chief Development Officer Paragon Initiative
> Enterprises
> 

- -- 
_________________________________________________________

Met vriendelijke groeten | With kind regards | Mit freundlichen Grüßen

Bart van Tuil | MivarGroup B.V. | De Hofstede 30a-c | 4033 BV Lienden

T +31 (0) 344 609 000
F +31 (0) 344 609 010
E bvantuil@mivargroup.nl
I www.mivargroup.nl

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (MingW32)

iQEcBAEBAgAGBQJWngGyAAoJEEnUI2SRQ8182GoH/0bZcSGjBSd1VVFVG8Pq/pNn
KUfVDG2GCbTTFknuLxnjO4lUyvLwoIiZH6OOH3BnfHCGO2kjsvz17ucE/qMcmfqM
S1R/aHDq8z2/naEH+PkRPMyG1LqiNGBNMc/tRyKqcjLcZ89DB7at7eYAxQnN/9U7
+VTAERJCtFZDbumHx712UAD6BuRlTDUTmVrsXrBGIaCJLF2AaeymZlayT5qrBrg9
OgpzCKHbPykIOgSmQQWzNyp7imOPzLPhOjgr3+74ccnUFclBC5PCH8IyYklO7lS/
oJI6FREmZEHiMBKouX4TotT8Ohxv2iQzDwsSPGwJ6VCdXd6UO9vxN/F6mWTwhGI=
=xMh6
-----END PGP SIGNATURE-----
