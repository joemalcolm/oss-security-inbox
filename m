Received: (qmail 22137 invoked by uid 550); 12 Jul 2024 17:26:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9515 invoked from network); 12 Jul 2024 17:06:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=citron; t=1720803965; x=1721470631; h=date:author:from:to:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  mime-version:content-type:content-transfer-encoding:author:from:subject:
  date:to:cc:resent-author:resent-date:resent-from:resent-sender:resent-to:
  resent-cc:resent-reply-to:resent-message-id:in-reply-to:references:
  mime-version:content-type:content-transfer-encoding:content-disposition:
  content-id:content-description:message-id:mail-followup-to:openpgp:
  blahblahblah; bh=gjc9aHOxIswKloqGLruTYp4V2yC9cF5R++tLEzzQCVs=;
 b=kNst5yTIITeHflIjRSsDTc0OVxKqNBsj3J32p6WB1P9TZE4kwJH82eUho8sSsfILsKE1FRco
  cGyXj2v2IviiQSQQAsnwpidwdxHoIqv9be753qqmWzKWTLl5I7+KV5rILv+5PNNI8mxKqPdMvu
  IvfuJds+HOH77vNUni3IwNVeAJf6M+/1Jq9f53DIL3KTlnJ4sRFN0KKTLbYF4A4aoAdLSMI5cA
  6J1gevRDcv5m+OJYOyfzFB+b1HkHR2v3qmZBuQ87Xy+SyWGcOu2W/8evwDkmhMNdavlI2PChsU
  Q+0ORLIk9PcG06n7c+jrFpzZYwCbMqI/0IXbOWGLIzC0+TOA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=orange; t=1720803965; x=1721470631; h=date:author:from:to:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  mime-version:content-type:content-transfer-encoding:author:from:subject:
  date:to:cc:resent-author:resent-date:resent-from:resent-sender:resent-to:
  resent-cc:resent-reply-to:resent-message-id:in-reply-to:references:
  mime-version:content-type:content-transfer-encoding:content-disposition:
  content-id:content-description:message-id:mail-followup-to:openpgp:
  blahblahblah; bh=gjc9aHOxIswKloqGLruTYp4V2yC9cF5R++tLEzzQCVs=;
 b=vNoluiGkM63xV9KpF8yzDNghTLKJODW9Werco5fkL8vETrVI60ai5X7BiPqtbDD3FmUv/g10
  QBgT1bPEtucODg==
Date: Fri, 12 Jul 2024 19:06:03 +0200
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: oss-security@lists.openwall.com
Message-ID: <20240712170603.XJ6iwd6q@steffen%sdaoden.eu>
In-Reply-To: <83F0CF09-6257-4949-9332-E6990CFE14C7@dwheeler.com>
References: <30400489-6c59-4133-a3ce-fa0c16b63c02@analygence.com>
 <6771f9536d49185fc8f1ea9905c13cf4dd8776d2.camel@debian.org>
 <20240710214412.8IXhxf8b@steffen%sdaoden.eu>
 <83F0CF09-6257-4949-9332-E6990CFE14C7@dwheeler.com>
Mail-Followup-To: oss-security@lists.openwall.com
User-Agent: s-nail v14.9.24-621-g0d1e55f367
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] ASLRn't is still alive and well on x86
 kernels, despite CVE-2024-26621 patch

David A. Wheeler wrote in
 <83F0CF09-6257-4949-9332-E6990CFE14C7@dwheeler.com>:
 |Yves-Alexis Perez wrote in
 |> <6771f9536d49185fc8f1ea9905c13cf4dd8776d2.camel@debian.org>:
 |> ...
 |>|mmap(NULL, 2097152, PROT_READ, MAP_PRIVATE|MAP_DENYWRITE, 0, 0) =3D 0xf=
7df\
 |>|3000
 |
 |On Jul 10, 2024, at 5:44 PM, Steffen Nurpmeso <steffen@sdaoden.eu> wrote:
 |> I thought on Linux MAP_DENYWRITE is actually an ignored flag.
 |
 |I believe you're correct, but I believe what Yves-Alexis Perez is showing=
 \
 |is the
 |flags that are being *passed* to the kernel (whether or not they DO \
 |anything).
 |Which is why there's a proposal to *make* MAP_DENYWRITE do something \
 |in this case.
 |
 |My plea is that if this DOES start doing something, PLEASE document \
 |that ASAP
 |(including a note that it USED to be ignored). I fear that this security \
 |property
 |might, on some platforms, depend on a quiet undocumented change.

Well i mean, i do not know, i am a user space programmer.
And then the mmap(2) manual says

   MAP_DENYWRITE
          This  flag  is  ignored.  (Long ago=E2=80=94Linux 2.0 and earlier=
=E2=80=94it sig=E2=80=90
          naled that attempts to write to the underlying file  should  fail
          with  ETXTBSY.   But  this  was a source of denial=E2=80=90of=E2=
=80=90service at=E2=80=90
          tacks.)

which is nice (i think bitsavers.org does not have any info, and
we all know shall a future exist, this "cultural" epoch will be
a whiteout beside that).

But .. if you log the kernel you see for example
6e16f5133501440699dcca3c5aba367cf6f9c227 from 2023-07-24 saying

    selftests/mm: fix thuge-gen test bugs
    ...
    thuge-gen was also calling mmap with SHM_HUGETLB flag (bit 11 set), whi=
ch
    is actually MAP_DENYWRITE in mmap context.  The man page says this flag=
 is
    ignored in modern kernels.  I'm pretty sure from the context that the
    author intended to pass the MAP_HUGETLB flag so I've fixed that up too.

or 49624efa65ac9889f4e7c7b2452b2e6ce42ba37d from 2021-09-04

    Pull MAP_DENYWRITE removal from David Hildenbrand:
     "Remove all in-tree usage of MAP_DENYWRITE from the kernel and remove
      VM_DENYWRITE.

      There are some (minor) user-visible changes:
    ...

or 6128b3af2a5e42386aa7faf37609b57f39fb7d00 from 2021-04-23

    mm: ignore MAP_DENYWRITE in ksys_mmap_pgoff()

    Let's also remove masking off MAP_DENYWRITE from ksys_mmap_pgoff():
    the last in-tree occurrence of MAP_DENYWRITE is now in LEGACY_MAP_MASK,
    which accepts the flag e.g., for MAP_SHARED_VALIDATE; however, the flag
    is ignored throughout the kernel now.

    Add a comment to LEGACY_MAP_MASK stating that MAP_DENYWRITE is ignored.

so that is not too far in the past, and, sorry, but i am not so
deep in the kernel / memory system scene to get an immediate
notion, yet i think the topic is interesting for any (user space)
programmer of any programming language that supports mapping
memory directly.  So if someone says "this  was a source of
denial=E2=80=90of=E2=80=90service attacks" then i need to wrap my head, and=
 it is
not as if an in-between-the-lines reference to MAP_DENYWRITE ring
any bells except that i think the flag has been removed.  And then
someone who seems to know uses it nonetheless in a small showcase
program, likely trying to say even more in-between-the-lines.  And
thus i live on the edge in between the Red Hot ChilliPeppers "if
you have to ask, you will never know", and the Sesame Street,
which at least in Germany was "sometimes you simply have to ask to
understand a matter".  Granted that "i think this flag was
removed" is not a question as such.

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
