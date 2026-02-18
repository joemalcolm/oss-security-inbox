Received: (qmail 5759 invoked by uid 550); 18 Feb 2026 02:44:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1594 invoked from network); 18 Feb 2026 00:58:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=citron; t=1771376311; x=1772042977; h=date:author:from:to:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  mime-version:content-type:content-transfer-encoding:author:from:subject:
  date:to:cc:resent-author:resent-date:resent-from:resent-sender:resent-to:
  resent-cc:resent-reply-to:resent-message-id:in-reply-to:references:
  mime-version:content-type:content-transfer-encoding:content-disposition:
  content-id:content-description:message-id:mail-followup-to:openpgp:
  blahblahblah; bh=a6tJyJgbnmePP3u8vcNzkrVY+tsa1MeuzanxLcE+foU=;
 b=S3lW4A9iMsucpxzjDMvOat9UaWCoG7btNNbBxVJciS7MU47pTgLDlCVkCSf+8xkbn3AsKjwP
  RebJP2hKzx0ci9btjvEyvFYwRfjDfKE8DLbW/GQ0uaIL53cc1Tto6X0nGq5uz3FQIfuh1rtRiK
  YZAiGY/S4UsxvwOcoQ07fMeS9typGNhruYSDY4pmvPMk/cNZAtrjjFiocuIWWq1C3YXolUjJRN
  e3zWKdowtLc577WvnuZhoG+smHVCnADBkl9ubRv/okoymG4YnWtJK0UkUffyu1c4dPaNIaPoNt
  spF15SXbjoY2Hi8OOkyhP+gK2pr8Y9OPcbV9tYck7FRHcKXQ==
Date: Wed, 18 Feb 2026 01:58:30 +0100
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: oss-security@lists.openwall.com
Message-ID: <20260218005830.uYT3NxDo@steffen%sdaoden.eu>
In-Reply-To: <46s1o312-qrro-qp69-7oq8-61psn0nnr4o6@vanv.qr>
References: <87seazqslh.fsf@gentoo.org> <87a4x7awxe.fsf@josefsson.org>
 <46s1o312-qrro-qp69-7oq8-61psn0nnr4o6@vanv.qr>
Mail-Followup-To: oss-security@lists.openwall.com
User-Agent: s-nail v14.9.25-746-g512f6a7e26
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] zlib security audit by 7asecurity

Jan Engelhardt wrote in
 <46s1o312-qrro-qp69-7oq8-61psn0nnr4o6@vanv.qr>:
 |On Tuesday 2026-02-17 22:21, Simon Josefsson wrote:
 |>Sam James <sam@gentoo.org> writes:
 |>
 |>> * ZLB-01-001 WP2: Heap Buffer Overflow via Legacy gzprintf Implementat=
io\
 |>> n (High)
 |>
 |>That vulnerability seems to require that zlib was built with
 |>-DNO_vsnprintf -DNO_snprintf, targetting a system lacking 'snprintf'.
 |>
 |>Does anyone know of a real-world environment using that configuration?
 |
 |Does Borland C++ 1.01 for DOS count?

J=C3=B6rg Schilling documented in ANNOUNCEMENTS/AN-2019-10-25

  -       libschily: A vsnprintf() implementaton has been added since this =
is
          needed by SunPro Make and missing on Ultrix.

(Twenty+ years ago many projects had snprintf() built-in
fallbacks, often for %m, maybe (not sure) for grazy hexadecimal
grazy FP aka %a/%A.  Now i have forgotten what i wanted to add.
Ah!  The new zlib release brings a fix for 16-bit integers, so his
sense of real-world seems different from for example mine.)

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
