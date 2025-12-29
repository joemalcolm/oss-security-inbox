Received: (qmail 19962 invoked by uid 550); 29 Dec 2025 17:30:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5555 invoked from network); 29 Dec 2025 17:21:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=citron; t=1767028890; x=1767695556; h=date:author:from:to:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  author:from:subject:date:to:cc:resent-author:resent-date:resent-from:
  resent-sender:resent-to:resent-cc:resent-reply-to:resent-message-id:
  in-reply-to:references:mime-version:content-type:
  content-transfer-encoding:content-disposition:content-id:
  content-description:message-id:mail-followup-to:openpgp:blahblahblah;
 bh=6EBkvVZEAT+Qr5jmpOsLB80oHpQsHo0l8sLewAWsBdg=;
 b=g/t5bgvwUkzLvCihLrizAaRHfRLIedpl8jXovtYISMtgAkHyYUAP7leyWsRUjjDko6RsPyQt
  C/QWW0nHlsiZ4uwZhNkjMKiTkvxc7+VUjQh3/cZVa+8frx5c5qSbYCCDTiadcKaN1EK03Sp0K9
  qLWyulnJJpXtdyu8Zj0tpoYid3660fgKCXk3FfAjycwPsAcCmZ0r7B/z171arrv65duldWJgFl
  BgxnCCneenQxQdLTVtdHPIk/v+B9jFrNPh+N4CZ99dBYQuHvsDDNqn2wVNy5JJ2+yuq7Amr/xf
  T7B8Y7A+AGzT7xgWwGyYKZk5yMK33I9GczMz44q+MYQu5Uzw==
Date: Mon, 29 Dec 2025 18:21:29 +0100
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: oss-security@lists.openwall.com
Message-ID: <20251229172129.XftBSrA3@steffen%sdaoden.eu>
In-Reply-To: <6F979157-91AD-4C55-8CCD-5CC5AA18BB50.1@smtp-inbound1.duck.com>
References: <4bb0e4f7-a4f3-45cc-b519-2044b4b2871c@gmail.com>
 <928709EE-07AA-4995-B9D3-E83AC18353CC.1@smtp-inbound1.duck.com>
 <6F979157-91AD-4C55-8CCD-5CC5AA18BB50.1@smtp-inbound1.duck.com>
Mail-Followup-To: oss-security@lists.openwall.com
User-Agent: s-nail v14.9.25-743-g1489053f65-dirty
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
Subject: Re: [oss-security] Best practices for signature verifcation

kf503bla@duck.com wrote in
 <6F979157-91AD-4C55-8CCD-5CC5AA18BB50.1@smtp-inbound1.duck.com>:
 |> Demi Marie Obenour (she/her/hers)

 |> In light of the recent GnuPG vulnerabilities, I remembered that OpenPGP
 |> is almost never the right choice. CMS/PKCS#7 isn't any better, and
 |> X.509 is also bad except that its extremely wide deployment in TLS
 |> keeps it alive.
 |> 
 |> See https://www.latacora/com/blog/2019/07/16/the-pgp-problem/
 |> 
 |> and https://soatok.blog/2024/11/15/what-to-use-instead-of-pgp/.

 |then what do you suggest to use? i hear it all the time "pgp sucks" \
 |but what's the alternative huh?

I know a gentle and forgiving Russian who said (since "crypto
saves the world" simply quoting all this shamelessly)

  Years ago I started to recommend age
  (https://age-encryption.org/) for file encryption and
  "ssh-keygen -Y" for making ed25519 signatures. But both of them
  do not support post-quantum cryptographic algorithms.  [.]

As well as

 I have not tried it, but read very carefully the format/protocol
 specification of https://saltpack.org/ and it is definitely done
 right and pretty minimalistic.

Especially in favour of MessagePack instead of JSON/CBOR (as also
used by saltpack).

Where this all would end when year++ long working group workoutss
get simply bypassed by working implementations, one can wonder.

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
