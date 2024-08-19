Received: (qmail 28147 invoked by uid 550); 20 Aug 2024 12:48:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6015 invoked from network); 19 Aug 2024 21:18:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=citron; t=1724102302; x=1724768968; h=date:author:from:to:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  author:from:subject:date:to:cc:resent-author:resent-date:resent-from:
  resent-sender:resent-to:resent-cc:resent-reply-to:resent-message-id:
  in-reply-to:references:mime-version:content-type:
  content-transfer-encoding:content-disposition:content-id:
  content-description:message-id:mail-followup-to:openpgp:blahblahblah;
 bh=ThTKnPhZ/MaX+ovfTeDIyRc9ul/WLvygpM0s0NZD53o=;
 b=ddf28klf/siU4GWSCR5+P103iXrdDLEAjuNa6u2qgJFMHJkEvSDMt/zNglRwjGgKIXVQVcNF
  C9GztnUzlmUrbDuL9st89MKC0jBz2KV6HATXYwZkcOXVH/oXa/K3qViDyS+pJUrtIIXtXt9yXL
  tp918hrqpBDAe5kiipVV2wIE6OC8vN42gOZ+qe0TWapECxCOEo78xvyIX3uyhYo69BVydWTxSw
  NET3XmxdvNDvAFiybX4IfjHCSBWLfXnoFsi8WJd0PmP1wU3cPPqcLhtHs+MhrfODnKqCQ1qAsu
  pY3ZU7L/bg1pUxWlt1XqUJ4a1vaavKbbRAZv3PtSlklUUg3A==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=orange; t=1724102302; x=1724768968; h=date:author:from:to:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  author:from:subject:date:to:cc:resent-author:resent-date:resent-from:
  resent-sender:resent-to:resent-cc:resent-reply-to:resent-message-id:
  in-reply-to:references:mime-version:content-type:
  content-transfer-encoding:content-disposition:content-id:
  content-description:message-id:mail-followup-to:openpgp:blahblahblah;
 bh=ThTKnPhZ/MaX+ovfTeDIyRc9ul/WLvygpM0s0NZD53o=;
 b=4gWxdeaL05JW0cDkqGTh+7Nx0gdBRn5fEskD/ebqmUWaTJf/CWctkHyCI2o0HAOMQedzuVMv
  A4vookohAoEzAg==
Date: Mon, 19 Aug 2024 20:14:12 +0200
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: oss-security@lists.openwall.com
Message-ID: <20240819181412.tVrtAtA9@steffen%sdaoden.eu>
In-Reply-To: <66C2ACB0.2040203@gmail.com>
References: <CAJbOq16ebWS21u439bcV764HhaeQHF+eO64LdMAAKFgjdDLrMg@mail.gmail.com>
 <20240815111847.406cf6c1@computer> <66BECFB0.3080704@gmail.com>
 <CAH8yC8ndnyhyMNaQu3N_uUM_yXhd32PwR9odEOeoDe7jC5fQLw@mail.gmail.com>
 <66C02F68.1050609@gmail.com>
 <ME0P300MB0713D8A7D829DC25E6520BA3EE832@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
 <66C2ACB0.2040203@gmail.com>
Mail-Followup-To: oss-security@lists.openwall.com
User-Agent: s-nail v14.9.25-599-g5c75a327b2
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
Subject: Re: [oss-security] feedback requested regarding deprecation
 of TLS 1.0/1.1

Jacob Bachmeyer wrote in
 <66C2ACB0.2040203@gmail.com>:
 |Peter Gutmann wrote:
 |> Jacob Bachmeyer <jcb62281@gmail.com> writes:
 |>> The AtE mode has problems, but is still supported in TLS1.2.  (Why \
 |>> was EtA
 |>> not also introduced in TLS1.2?)
 |>>     
 |> It was:
 |>
 |> https://datatracker.ietf.org/doc/html/rfc7366
 |>
 |> So you don't need any new modes, just an extension to signal its \
 |> presence and
 |> swapping the order of the processing operations if present.
 |
 |I see.  TLS1.2 supports *both* AtE and EtA.
 |
 |My question (here expressed yet another way) still stands unanswered:  
 |excluding cipher suites (and the use of concatenated SHA1+MD5) what, if 
 |any, parts of TLS1.0/1.1 are not also required to implement TLS1.2?
 |
 |Removing support for TLS1.0/1.1 has definite costs in compatibility, 
 |costs that hit particularly hard with legacy embedded devices for which 
 |no updates will be available.  Given that TLS1.2 is to remain supported, 
 |what benefits to maintainability are to be had?  How much of the 
 |TLS1.0/1.1 support does *not* overlap with the TLS1.2 support?  How much 
 |of it *should* overlap if the code were to be optimally refactored?

A primitive view on that is

  # git grep -i tls_v master -- \
      crypto lib include engines ssl apps dev exporters external providers |
    wc -l
  72

but you must cut things like

  master:crypto/evp/e_aes_cbc_hmac_sha256.c:        else if (key->aux.tls_ver >= TLS1_1_VERSION)
  master:providers/implementations/ciphers/cipher_aes_cbc_hmac_sha1_hw.c:        else if (ctx->aux.tls_ver >= TLS1_1_VERSION)

(-E 'TLS.+_VERSION' isn't that much better, for the remove party.)

My own gut feeling says btw that no logical argument of whoever
can change anything on this topic, there is a pimple to go, the
cancel culture requires a victim, the next announcement (ie web
page to which the otherwise hollow email message points) shall
have an effective advertising-niveau-compatible entry.

Ie, it seems for OpenSSL TLSv1 all share the same implementation:

  git show master:ssl/record/methods/tls1_meth.c
says
  /* TLSv1.0, TLSv1.1 and TLSv1.2 all use the same funcs */
and also
        /* For TLSv1.1 and later explicit IV */

and

  git show master:ssl/t1_lib.c

shows only flag differences in between

  SSL3_ENC_METHOD const TLSv1_1_enc_data = {
and
  SSL3_ENC_METHOD const TLSv1_2_enc_data = {

in particular 0 vs

    SSL_ENC_FLAG_SIGALGS | SSL_ENC_FLAG_SHA256_PRF
        | SSL_ENC_FLAG_TLS1_2_CIPHERS,

So it *could* be "removing support of TLSv1.0 and v1.1" is in fact
only a small mostly housekeeping diff at first.

By the way i found your question on additional aka redundant
checksums (wherever) very interesting, given that Antonio
Diaz Diaz (author of plzip plus support libraries) swears on
CRC-32 for long time storage, with absolutely impressive numbers
on reliability (i think here: [1])

  [1] https://www.nongnu.org/lzip/safety_of_the_lzip_format.html#lzma_crc

(Ie, i asked for maybe xxhash support or what, eh, as it was
a public list:

  > While CRC-32 is ok, i guess people (including me) doubt its
  > viability for long-term archiving, especially when compared with
  > other algorithms.  It is not so terrible as years ago, since most
  > people surely have lots of copies, and the filesystems use
  > checksumming.  But as a standalone archive, CRC-32 fails badly,
  > for example smhash says "insecure, 8590x collisions, distrib,
  > PerlinNoise":

  The tests performed by smhasher are 100% unrelated to error detection in a
  decompressor context. CRC32 is probably optimal to detect errors in lzip
  members. See
  http://www.nongnu.org/lzip/manual/lzip_manual.html#Quality-assurance

  "Lzip, like gzip and bzip2, uses a CRC32 to check the integrity of the
  decompressed data because it provides optimal accuracy in the detection of
  errors up to a compressed size of about 16 GiB, a size larger than that of
  most files. In the case of lzip, the additional detection capability of the
  decompressor reduces the probability of undetected errors several million
  times more, resulting in a combined integrity checking optimally accurate
  for any member size produced by lzip."

  See also http://www.nongnu.org/lzip/safety_of_the_lzip_format.html#lzma_crc
  '4.1 Interaction between LZMA compression and CRC32' and '7 Conclusions':

  "After 14 years of testing, the MTBF of lzip can only be estimated because
  not even one false negative has ever been observed. If one were to
  continuously decompress corrupt lzip files of about one megabyte in size (10
  decompressions per second), each of them containing the kind of corruption
  most difficult to detect (one random bit flip), then a false negative would
  be expected to happen every 694 million years."

The linked site claims (and that thus likely means: announces
facts) that the error detection is "good enough for avionics", if
i recall correctly.)

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
