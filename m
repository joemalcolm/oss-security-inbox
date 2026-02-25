Received: (qmail 31913 invoked by uid 550); 25 Feb 2026 19:50:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30061 invoked from network); 25 Feb 2026 19:47:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=citron; t=1772048830; x=1772715496; h=date:author:from:to:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  author:from:subject:date:to:cc:resent-author:resent-date:resent-from:
  resent-sender:resent-to:resent-cc:resent-reply-to:resent-message-id:
  in-reply-to:references:mime-version:content-type:
  content-transfer-encoding:content-disposition:content-id:
  content-description:message-id:mail-followup-to:openpgp:blahblahblah;
 bh=ccU4wZ6AjYkGQAYYwXqSLWGjXfYnaysTPYuNoEJ5dLU=;
 b=JCChwERjcao6dOPhexTB3/EEj7zYGRJAEwQLBMmp1flfpr3ZqyfGagN1aCWTW70WnOwsFTMB
  59E6SIBv+3ZwPq5hTeLCYqmga5vTXYJjw6/a3zmrQMN4nKbDqFET/0MU/6L2dYAlVwYrmUHYM5
  /V7yeIiXGUc8cStk9kkAtWw7vlGUVhWAbwb610w1GcEmZFoUZdac7mhfGQyqM1BA0qo27EfLIG
  0R4/iplfJkeSQnG6wlkbdtTsiqmZ53rRBcc+Waudn8uSFZblulGEuE/wFTPrcqZEb1mGhwXumI
  esOFPMsXq0r9djC5FVF6Qerh/UjXTg/rYowOlBeUqBdjwJ1Q==
Date: Wed, 25 Feb 2026 20:47:09 +0100
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: oss-security@lists.openwall.com
Message-ID: <20260225194709.3XDsVdwv@steffen%sdaoden.eu>
In-Reply-To: <20260225165449.GA23380@openwall.com>
References: <CAB1hGqQwnSzEqtrefwqAxD+rWGu_EXVDmu-btMrNYqMzkzc9Kw@mail.gmail.com>
 <20260206172730.GA12303@unix-ag.uni-kl.de> <877bso8mhf.fsf@josefsson.org>
 <20260224011702.27987-1-justin.swartz@risingedge.co.za>
 <B72B4221-75D0-4C28-840F-9CF7B1A53E66.1@smtp-inbound1.duck.com>
 <27E138FE-A205-4EDD-9A9B-1F84BFAEC100.1@smtp-inbound1.duck.com>
 <20260224203337.GA17345@openwall.com> <a0bad9ebbf4507c4@orthanc.ca>
 <CAA748E8-86CC-4C46-AD03-319F6690252B.1@smtp-inbound1.duck.com>
 <4A24F620-6FA6-4F2B-A1F9-B4781E391989.1@smtp-inbound1.duck.com>
 <20260225165449.GA23380@openwall.com>
Mail-Followup-To: oss-security@lists.openwall.com
User-Agent: s-nail v14.9.25-746-g512f6a7e26
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
Subject: Re: [oss-security] Telnetd Vulnerability Report

Solar Designer wrote in
 <20260225165449.GA23380@openwall.com>:
 |On Wed, Feb 25, 2026 at 07:46:07AM -0500, kf503bla@duck.com wrote:
 |> telnet is extremely old and just because there is still widespread \
 |> use of telnet or the daemon, doesn't provide a valid reason to keep \
 |> using it. these trivial vulnerabilities keep popping up and if you \
 |> still insist of using telnet, you deserve getting pwned
 |
 |I mostly let these messages through so far (rejecting only one, which
 |had even less value), but as a moderator I declare end of sub-thread
 |now.  Further messages on "Who uses telnet anyway?" will be rejected by
 |default, unless they truly add something new.

It seems to me one reason to use telnet(1) arises from the fact
that there is no nc(1) around.  busybox has one, but it is not
feature rich enough.  And the one of LibreSSL, which is, as it
says, a swiss-army-knife, is very often not available at all.

So for example on AlpineLinux you have busybox/nc by default,
but need the "community" libressl-nc otherwise (and it is ~1.6MB,
not ~160KB); ditto ArchLinux, it does even seem to explicitly
exclude it from its "extra" package libressl.

On the BSDs it is better, they have the nc from way over a decade
ago, but refrain from updating (FreeBSD; dunno NetBSD: simply do
not update?) due to that being non-trivial.  DragonFly BSD is
different, as they have imported LibreSSL, and simply use the
nc(1) that ships with that (LibreSSL include that libtls that nc
now uses).

 |Messages on actual security issues/fixes in telnet are still desirable.

(Only to mention that i would not even offer telnet or rsh even
inside a VPN, as was heard.)

 |Alexander
 |
 |P.S. I first wrote the above in a confusing manner, not clarifying it's
 |only end of sub-thread started by kf503bla, not the entire thread.
 |Corrected now, and I'll only let this corrected message to oss-security.
 --End of <20260225165449.GA23380@openwall.com>

I do not know of "upgraded" ports of neither FreeBSD nor NetBSD
variants of nc(1) (usr.bin/nc), which include several iterations
and still make use of "normal OpenSSL" interface.  But sounds like
a valuable thing to do.

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
