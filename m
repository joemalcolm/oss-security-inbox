Received: (qmail 18209 invoked by uid 550); 12 Mar 2024 22:09:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17916 invoked from network); 12 Mar 2024 21:39:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=citron; t=1710279794; x=1710368682; h=date:author:from:to:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:author:from:
  reply-to:subject:date:to:cc:in-reply-to:references:list-id:list-help:
  list-unsubscribe:list-subscribe:list-post:list-owner:list-archive:
  message-id:mime-version:content-type:content-transfer-encoding:
  mail-followup-to:openpgp; bh=9BGDtLNrajXZhA//fdnuyPRg4+kASkBwNv78T6D9oYU=;
 b=DECLvwoBMSZrvYaeHXrgDm0ZQcRcqs2W2i5ttYFentXLMEsXjccRZcLMH7WefA1TtoJ7RnUU
  Sdmeawpi/GE9LmmUXK186KG39voy+GNrXD++yxS9aVxdlGv4VxUwWTzf/pgiya8tQ1Ov4wCNrK
  UKkjYo0IN1yFLuoumpf7D4dIZnt/8t3tvSM05KkZMdk7cAC8m7yz4PmNEU2M/P8zeGUyXpykcH
  yQkS282Q9SDO+3v+R2rTkyQTPlyNzOwALCYXwtFKi8YW+Yus5B58xIKmj79SR4F2bFdwkb5bdw
  xP3T6zTp/Sti0ipOiQmidvunqW9PhUh2+ACuo/uQEuTzS/XA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=orange; t=1710279794; x=1710368682; h=date:author:from:to:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:author:from:
  reply-to:subject:date:to:cc:in-reply-to:references:list-id:list-help:
  list-unsubscribe:list-subscribe:list-post:list-owner:list-archive:
  message-id:mime-version:content-type:content-transfer-encoding:
  mail-followup-to:openpgp; bh=9BGDtLNrajXZhA//fdnuyPRg4+kASkBwNv78T6D9oYU=;
 b=QX81ct6bxpkVpINJNl7XapUtLAqzndC3RTaMS6DPmWOHRvzDpxPHBI50B/Fge+Xx0CspTn1W
  fUfxvHqriJf7BQ==
Date: Tue, 12 Mar 2024 21:54:40 +0100
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: oss-security@lists.openwall.com
Message-ID: <20240312205440.nCrJJ0Zw@steffen%sdaoden.eu>
In-Reply-To: <avwrjlt7heiiq64iy56v6raowqilc7ldg4ona2khtbfcl6n4mg@ay3mbinzz3fm>
References: <gb6h5yblly7xer6jg6sgn7syzrze3jviotrmfsp3ifgy6rg2jr@igvcqdasmnof>
 <Ze_aAzVya8RMGDDZ@itl-email>
 <avwrjlt7heiiq64iy56v6raowqilc7ldg4ona2khtbfcl6n4mg@ay3mbinzz3fm>
Mail-Followup-To: oss-security@lists.openwall.com
User-Agent: s-nail v14.9.24-608-gfa6c5c5231
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
Subject: Re: [oss-security] Certificate policy: OCSP becomes optional
 and CRLs mandatory for public CAs on Friday

Valtteri Vuorikoski wrote in
 <avwrjlt7heiiq64iy56v6raowqilc7ldg4ona2khtbfcl6n4mg@ay3mbinzz3fm>:
 |On Tue, Mar 12, 2024 at 12:28:49AM -0400, Demi Marie Obenour wrote:
 |> macOS, iOS, Windows, and possibly Android have system certificate
 |> verifiers that can handle this easily.  For desktop and server Linux,
 |> should a CRLite package be included in system package managers?  Would
 |> it be feasible for WebPKI and {Open,Boring,Libre}SSL to handle CRLite,
 |> or does this mean that NSS should be used for certificate verification?
 |
 |I have no idea whether this idea has been discussed by distros or
 |implementors of said libraries. Perhaps someone directly involved can
 |weigh in on this.
 |
 |But on the face of it, CRLite-on-the-server sounds like a pretty good
 |idea for users who are fine with getting only a yes/no revocation
 |result (as opposed to the reason code and other details present in the
 |full CRL) and trusting the CRLite aggregator. Getting direct and
 |easy-to-deploy support in popular TLS libraries would seem like a net
 |positive for TLS security; needing to bring in a separate library, at
 |least if it's a relatively weighty one like NSS, probably wouldn't get
 |a lot of traction.

A lot of traction via push by giants should, in my opinion, be
observed for DNSSEC and wonderful (imho) concepts like RFC 7250.

If i understood this right the new postfix 3.9 series, when used
with OpenSSL 3.2.0 and above, brings support for this TLS
mechanism of the future.

Unfortunately terms like "the future is now" have never been
anything else but hollow words (or points to the wrong direction).

I do not know which other TLS libraries support RFC 7250 either.

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
