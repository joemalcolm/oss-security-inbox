Received: (qmail 10005 invoked by uid 550); 20 Apr 2023 05:35:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9987 invoked from network); 20 Apr 2023 05:35:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hboeck.de; s=key1;
	t=1681968901; bh=uM7YZhM9J6tbAf/A7ASbBi1OFbhXOA/v3gYdihYw8hA=;
	h=Date:From:To:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type:Content-Transfer-Encoding;
	b=S5OwvWgoANAH/vgvv5jA/Fw836igIY6eS8lbDHKggXdBpcNsZ6s6kfntyoKqDPGN5
	 sLDMPilxGd8nlQF+YYrDiCttzTlLkjz1G/YEt9kKmRcwI5X8Jon/2wVc933SFT2GHP
	 CUG+AK2X4i0Ne5g/KBaP/FnUiEI4pIfBlG6uU54WfmV/7ItwR5QWFLWosAAWHHDyJw
	 U191djhFyJO6u20x1fophKsmNl+nDiptJWcohByDCF9jpS6MPA5PQ2Vfqu8GZWcrnM
	 D2bo1/rrB0GsIfzvT4XIoC/03w2/E5l7pydSddGCtJR5EwkT0lg3ymKAHD3AL2MVIC
	 rL27ryZrlQG/Q==
Original-Subject: Re: [oss-security] Perl's HTTP::Tiny has insecure TLS cert default,
 affecting CPAN.pm and other modules
Author: Hanno =?iso-8859-1?q?B=F6ck?= <hanno@hboeck.de>
Date: Thu, 20 Apr 2023 07:34:59 +0200
From: Hanno =?iso-8859-1?q?B=F6ck?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20230420073459.003a5be2.hanno@hboeck.de>
In-Reply-To: <20230419215340.UruCC%steffen@sdaoden.eu>
References: <20230418154630.eoheygqyom3c7ovw@stig.io>
	<ZD/4ODBjTesPMECg@itl-email>
	<20230419215340.UruCC%steffen@sdaoden.eu>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.37; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Perl's HTTP::Tiny has insecure TLS cert default,
 affecting CPAN.pm and other modules

On Wed, 19 Apr 2023 23:53:40 +0200
Steffen Nurpmeso <steffen@sdaoden.eu> wrote:

> IMO it is no vulnerability at all since it has "always" been _very
> clearly_ (even very lengthily) documented in the manual page.

A vulnerability does not go away if it's documented, and I find that a
rather strange take.

Also I think this discussion was had many times before, as plenty of
libraries in other language ecosystems defaulted to not checking certs
or doing incomplete checks, and over time they all defaulted to the
sane thing: To make the secure setting the default.
The fact that apparently noone has ever checked this for a major perl
library (I mean - CPAN itself, the package manager, is affected) is
quite telling tbh.

--=20
Hanno B=C3=B6ck
https://hboeck.de/
