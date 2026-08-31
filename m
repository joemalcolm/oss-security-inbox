X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/31/11
Message-ID: <87ecfe495s.fsf@jacob.g10code.de>
Date: Mon, 31 Aug 2026 17:11:27 +0200
From: Werner Koch <wk@...pg.org>
To: Sam James <sam@...too.org>
Cc: oss-security@...ts.openwall.com
Subject: Re: Fwd: [Announce] Libgcrypt 1.12.3 released
Content-Type: text/plain; charset=utf-8

Hi Sam!

On Mon, 31 Aug 2026 14:09, Sam James said:
> I can't reach GnuPG's bug tracker at the moment so I can't check
> the mentioned bugs (if they're even public, I don't know) to see if

Fixed bugs are always public. In case we accidently missed to list the
restriction, please let us know.  We are really soprry about the
problems but there is not much we can do.  400Hz SYN-Floods all from
different IPs are not easy to handle.  Our main goal is currently that
we are able to work.  We are also working on a solution for at least
providing the static pages more reliable.

> One thing I did see, however, is this from Lukasz Olejnik on X [0]:

Doesn't the use of what used to be Twitter not immediatley disqualify a
report .-)

> I reported this security bug to libgcrypt. The bug allowed an attacker
> to supply a degenerate/small-order Ed25519 public key that passes the
> initial curve check but triggers a fatal log_bug during signature

Yes, this was fixed (T8380):

  Small-order Ed25519 public keys reach a fatal internal arithmetic assertion
  
  Ed25519 verification checks that the supplied public point is on the
  curve but does not reject identity or other small-order points before
  scalar multiplication. A public gcry_pk_verify call with a degenerate
  attacker-supplied key can consequently reach log_bug in the field
  arithmetic and abort the entire process before signature validity is
  decided. 
  [...]


>     cipher:rsa:pss: Fix SALT-LENGTH handling.
>
>     GnuPG-bug-id: 8377
>     Reported-by: JEAN Jeremy <Jeremy.Jean@....gouv.fr>

  Unchecked PSS salt-length conversion reaches a near-SIZE_MAX write

  RSA-PSS signing parses the bounded salt-length atom without checking
  its length, parse endpoint, range, or errno, stores it as unsigned
  int, and passes it to an encoder taking int. On mainstream
  two's-complement ABIs, 4294967295 becomes -1; mixed signed/unsigned
  arithmetic then allocates a small buffer before _gcry_randomize
  receives SIZE_MAX, causing deterministic heap corruption through
  public gcry_pk_sign.  [...]

I commented on this:

  In theory we could check for this but checking the salt length is a
  duty of the caller. Anyone who creates a s-expression large enough to
  reach a range limit has other problems in the code than this.

>     cipher:rsa:pss: Validate the length of hashed input.
>
>     GnuPG-bug-id: 8391

  RSA-PSS verification copies a full digest from an unchecked short
  opaque MPI

  When RSA-PSS verification is told that the message is already hashed,
  it obtains an opaque MPI pointer but does not compare the MPI's bit
  length with the selected digest length. It unconditionally copies hlen
  bytes. A caller-supplied short opaque value therefore causes an
  out-of-bounds read before signature verification fails or continues
  with adjacent bytes.  [...]

Callers should validate input data for plausibility.  The reproducer
would not pass a proper protocol parser.  Fixed of course.

>     cipher:rsa:oaep: Validate all-zero PS.
>
>     GnuPG-bug-id: 8390

  RSA-OAEP decoder accepts nonzero bytes inside the zero padding string

  After unmasking OAEP's data block, the decoder verifies lHash and
  searches for the first 0x01 delimiter. It does not verify that every
  byte between lHash and that delimiter is zero. A data block containing
  arbitrary nonzero padding bytes is therefore accepted and its suffix
  returned as plaintext.

   Why it matters

   OAEP requires DB to be lHash || PS || 0x01 || M with PS entirely
   zero. Accepting a larger language of encodings weakens strict
   ciphertext validation and can become useful if a protocol reveals
   success through output, errors, or timing. Constructing such an RSA
   ciphertext without the private key is not established here, so this
   finding is a decoder correctness flaw rather than a standalone
   decryption oracle.

All in all we received 26 reports alone from ANSSI but as even the
reporter mentioned, the real world attack severity is not critical.
Thus we don't consider 1.12.3 a security fix release.  There are some
bugs which should be fixed to avoid crashes, and thus may lead to DoS.
However, 16384 bit RSA keys can also be used for a practical DoS; it all
depends on your use case.


Salam-Shalom,

   Werner

-- 
The pioneers of a warless world are the youth that
refuse military service.             - A. Einstein

Download attachment "openpgp-digital-signature.asc" of type "application/pgp-signature" (285 bytes)
