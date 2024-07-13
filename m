Received: (qmail 24331 invoked by uid 550); 13 Jul 2024 21:44:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24452 invoked from network); 13 Jul 2024 20:59:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=citron; t=1720904340; x=1721571006; h=date:author:from:to:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  mime-version:content-type:content-transfer-encoding:author:from:subject:
  date:to:cc:resent-author:resent-date:resent-from:resent-sender:resent-to:
  resent-cc:resent-reply-to:resent-message-id:in-reply-to:references:
  mime-version:content-type:content-transfer-encoding:content-disposition:
  content-id:content-description:message-id:mail-followup-to:openpgp:
  blahblahblah; bh=S09s1+qXqdrvXY9+B7Ya3Mu7L0mc/sVNd9pDxj3YyQ4=;
 b=akqCvmAxGm7DTaI03ei7LkTYuJWlX/UZYxyNzNnU639SABm5B/XcMeThnNvJQn4+7bGN+VIz
  o6KsMu8jGk5sf+Z7e7WCy9rG9POK4OiPC0jg3wuCwE9RnYjY0QnmgPKczEVXZAXeUSX6X8DxCv
  El/CuTdj8zC2Ukt9VPrPGzLZOTmeh4BCRDKDWNFWZ3WDpnuiXArshZfnpcDQ1Gr0uuhjKvD2vo
  m0sdoT8Odkd+5UlJOjNjDWyj7doNLOcG8NyBv96SLxQBoRMahsrAsOtBRwHzwpChNE+3hxjunM
  28FlUwklP0ckwzeY+Yd6f/uQA6M3zPQvT9hhmjHLozNMQL9A==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=orange; t=1720904340; x=1721571006; h=date:author:from:to:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  mime-version:content-type:content-transfer-encoding:author:from:subject:
  date:to:cc:resent-author:resent-date:resent-from:resent-sender:resent-to:
  resent-cc:resent-reply-to:resent-message-id:in-reply-to:references:
  mime-version:content-type:content-transfer-encoding:content-disposition:
  content-id:content-description:message-id:mail-followup-to:openpgp:
  blahblahblah; bh=S09s1+qXqdrvXY9+B7Ya3Mu7L0mc/sVNd9pDxj3YyQ4=;
 b=pSGsrLw6Qy5Y0tVrwzYCZ/ij4Dkcxr1T6C4tfwen9xoGMthwZtjezhxu+Zcsvs/586foQfw2
  omYa3uLwG7L5Dw==
Date: Sat, 13 Jul 2024 22:58:58 +0200
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: oss-security@lists.openwall.com
Message-ID: <20240713205858.LSnJJGoo@steffen%sdaoden.eu>
In-Reply-To: <6691E39C.8090600@gmail.com>
References: <30400489-6c59-4133-a3ce-fa0c16b63c02@analygence.com>
 <6771f9536d49185fc8f1ea9905c13cf4dd8776d2.camel@debian.org>
 <20240710214412.8IXhxf8b@steffen%sdaoden.eu>
 <83F0CF09-6257-4949-9332-E6990CFE14C7@dwheeler.com>
 <20240712170603.XJ6iwd6q@steffen%sdaoden.eu> <6691E39C.8090600@gmail.com>
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

Jacob Bachmeyer wrote in
 <6691E39C.8090600@gmail.com>:
 |Steffen Nurpmeso wrote:
 |> [...]
 |>
 |> So if someone says "this  was a source of
 |> denial=E2=80=90of=E2=80=90service attacks" then i need to wrap my head,=
 and it is
 |> not as if an in-between-the-lines reference to MAP_DENYWRITE ring
 |> any bells except that i think the flag has been removed.
 |
 |The manpage indicates that, long ago, a mapping with MAP_DENYWRITE would=
=20
 |effectively make the underlying file read-only, even to root, for as=20
 |long as the mapping exists.

Thank you.  I add a search result from Google Groups which still
exists for doing so collected just now:

  Linus Torvalds Oct 4, 2001, 7:38:12=E2=80=AFAM

  Rob Landley <lan...@trommello.org> wrote:
  >I.E. it seems like they go out of their way to ALLOW writing to the liba=
ries.
  > (I assume they KNOW the difference between MAP_DENYWRITE, MAP_COPY, and
  >MAP_PRIVATE...?)

  Note that the kernel will refuse to honour MAP_DENYWRITE from user
  space, so I'm afraid that changing ld.so won't do a thing.

  The reason the kernel refuses to honour it, is that MAP_DENYWRITE is an
  excellent DoS-vehicle - you just mmap("/etc/passwd") with MAP_DENYWRITE,
  and even root cannot write to it.. Vary nasty.

  Which is why the kernel only allows it when the binary loader itself
  sets the flag, because security-conscious application writers are
  already aware of the "oh, a running binary may not be writable" issues.

  So sorry..

  Linus

  Linus Torvalds Oct 4, 2001, 7:49:27=E2=80=AFAM

  On Thu, 4 Oct 2001, Alexander Viro wrote:
  > <nit>
  > I _really_ doubt that something does write() on /etc/passwd. Create a
  > file and rename it over the thing - sure, but that's it.
  > </nit>

  Well, yeah, bad choice. Can you believe /var/run/utmp or similar?

  And yes, we could add checks for the thing being executable before we
  accept MAP_DENYWRITE instead of just ignoring the flag from user space.
  Nobody has cared enough to make the effort.

  Until now?

  Linus

Some findings:
  . I note that the mentioned files are writable by only root (and
  i would assume MAP_DENYWRITE to only work if i could do so
  myself).
  . Capabilities have become more fine-grained.
  . I always whimper when i have to rm(1) a running executable before
  placing an updated variant on Linux, on BSDs i simply over-cp(1)
  (and i do not understand as long as one gets either the one or
  the other when executing the path).
  . Shouldn't mandatory file locking have the same effect.
But it is ok to me, Linux is as it is, and they progress and
iterate over the code at an unbelievable speed.  And some things
are just the way they are.  (Or change.  Back.  And forth.  And
back etc etc)

 |>   And then
 |> someone who seems to know uses it nonetheless in a small showcase
 |> program, likely trying to say even more in-between-the-lines.
 |
 |That commit message seems to indicate that the program was using=20
 |SHM_HUGETLB when it should have been using MAP_HUGETLB, those constants=20
 |represent different bits, and passing SHM_HUGETLB to mmap(2) will be=20
 |interpreted as MAP_DENYWRITE, and therefore ignored.  Presumably, there=20
 |is some other syscall (likely shmat(2)) that uses that bit (represented=20
 |under the constant SHM_HUGETLB) to request huge pages, and the test=20
 |program in question was supposed to get huge pages from mmap(2) but was=20
 |not actually asking for huge pages because it was using the wrong constan=
t.
 |
 |In other words, MAP_DENYWRITE was not being intentionally used at all.=20=
=20
 |Another constant, for a different set of flags, that happens to have the=
=20
 |same value, was being used, causing a quiet bug.  (The test program=20
 |would have still worked, but was not actually exercising huge pages as=20
 |intended.)

The Linux commit messages are tremendous books that often leave me
stunning.  I *never* get together such things in my own work
process.  So thanks for spending additional time reiterating this.

 |-- Jacob

Thank you very much.

 --End of <6691E39C.8090600@gmail.com>

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
