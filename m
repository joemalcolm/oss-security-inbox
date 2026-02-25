Received: (qmail 26402 invoked by uid 550); 26 Feb 2026 00:12:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28408 invoked from network); 25 Feb 2026 23:04:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=citron; t=1772060669; x=1772727335; h=date:author:from:to:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  author:from:subject:date:to:cc:resent-author:resent-date:resent-from:
  resent-sender:resent-to:resent-cc:resent-reply-to:resent-message-id:
  in-reply-to:references:mime-version:content-type:
  content-transfer-encoding:content-disposition:content-id:
  content-description:message-id:mail-followup-to:openpgp:blahblahblah;
 bh=S5+/D4YBPlcfmJHQkO0LkXp379kjcdIxc3m2iPBQVZE=;
 b=NAcExqtYKGCiDH6kxsOy7uDmqYsmCJlo6OrsZq9RfH+Os7kn8kbVjXrwiayI63GIKOjlXwJA
  6HdX1c6WrP+wbkRY0z+aVAB6EfERnDWH/92ATmBTL2pFdjDmVp9PO5rFs+PqLU9pKGOk3rz+L2
  2DWyBSn6l/Y8YfiKgj4wOYA9x9OAa0ycbYvux/pWAl2ZZ1EHDHtSuNSRisVYbXX05oJ7i98qW7
  x+h8kRsxYA8/OuYG/emJ2SUgqj8WnHTgzHiYrOZGKreqH0UNZX82qoKeT9uDfe4a/5yaZLgf4Q
  nWpl5x2YKGnbdJccqbtOYX6bFEqxua/SXompOTfnIbz1c5AQ==
Date: Thu, 26 Feb 2026 00:04:28 +0100
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: oss-security@lists.openwall.com
Message-ID: <20260225230428.yNKndtKS@steffen%sdaoden.eu>
In-Reply-To: <20260225210354.2bbf0d04@stinkedores.dorfdsl.de>
References: <CAB1hGqQwnSzEqtrefwqAxD+rWGu_EXVDmu-btMrNYqMzkzc9Kw@mail.gmail.com>
 <20260206172730.GA12303@unix-ag.uni-kl.de> <877bso8mhf.fsf@josefsson.org>
 <20260224011702.27987-1-justin.swartz@risingedge.co.za>
 <B72B4221-75D0-4C28-840F-9CF7B1A53E66.1@smtp-inbound1.duck.com>
 <27E138FE-A205-4EDD-9A9B-1F84BFAEC100.1@smtp-inbound1.duck.com>
 <20260224203337.GA17345@openwall.com> <a0bad9ebbf4507c4@orthanc.ca>
 <CAA748E8-86CC-4C46-AD03-319F6690252B.1@smtp-inbound1.duck.com>
 <4A24F620-6FA6-4F2B-A1F9-B4781E391989.1@smtp-inbound1.duck.com>
 <20260225165449.GA23380@openwall.com>
 <20260225194709.3XDsVdwv@steffen%sdaoden.eu>
 <20260225210354.2bbf0d04@stinkedores.dorfdsl.de>
Mail-Followup-To: oss-security@lists.openwall.com
User-Agent: s-nail v14.9.25-746-g512f6a7e26
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
Subject: Re: [oss-security] Telnetd Vulnerability Report

Marco Moock wrote in
 <20260225210354.2bbf0d04@stinkedores.dorfdsl.de>:
 |Am 25.02.2026 um 20:47:09 Uhr schrieb Steffen Nurpmeso:
 |
 |> It seems to me one reason to use telnet(1) arises from the fact
 |> that there is no nc(1) around.  busybox has one, but it is not
 |> feature rich enough.  And the one of LibreSSL, which is, as it
 |> says, a swiss-army-knife, is very often not available at all.
 |
 |IIRC this issue is only about the telnetd telnet server daemon, not the
 |client. This service is only in use if enabled in inetd (or
 |replacements) by the administrator.

Already open socket aka standard descriptors.
If executables can be replaced, some specialized dropbear, or even
openssh seems better to me.
I never have used telnetd by myself, yet the telnet client i am
using pretty regulary, it comes from the same package

  $ pkginfo -o /usr/bin/telnet
  Package    File
  inetutils  usr/bin/telnet

but which the Linux distribution (mostly old-hand admins driven)
i use massively restricts

        --disable-{servers,clients} \
        --enable-{hostname,ifconfig,inetd,ftp,telnet,traceroute}

which is why i do not easily (without build overlay) can be
embarrased in a situation of necessity, to use telnetd, you know.

Since i have seen Lyndon Nerenberg's message already, yes,
plenty of possibilities there may be (i wonder how many of those
could be driven via nc, especially so with an nc which could
be sliced into some inetd (fwiw) and have an -e, or what about
introduction of a pty layer), but the security layer algorithms
(RFC 2953) seem historic -- and, generally speaking, to me it
looks like a layer abstraction error, so *if*, then maybe that
IANA registered port 992 for telnets should become used, should
become an official RFC (except in the email area less harcore
SMTP the IETF is a great thing *imho* (except for the "I" being
"not so" "I"), but anyway, no notion of telnets or port 992 in
inetutils whatsoever, so that would require an external wrapper.
Maybe nc can provide the necessary TLS wrapper for plain telnetd.
But Linux/Unix is not Plan9, and wrapper programs are expensive,
all those context-switches (surely), and data copying (likely).
(Yet Johnson of dropbear refused a patch that simply did some FD
exchange, instead he insisted on command line wrapper mode via
nc(1), a decade or more ago.)

So to reiterate that in my opinion nc is a good thing, except for
not using "network newline" aka \r\n but .. i think plain Unix \n.
Surely the OpenBSD people will not add -e, and i am afraid there
will be no pty mode either.  But i personally would always refrain
from spreading crypto to anywhere, there are too many libraries
around already *imho*, which need to share the eyes which can look
and see, so that is that.

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
