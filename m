Received: (qmail 30059 invoked by uid 550); 6 Aug 2024 17:24:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23803 invoked from network); 6 Aug 2024 17:15:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dorfdsl.de;
	s=default; t=1722964507;
	bh=suahyKYHP9/3nqpnTmwdgSZebxvvIfTqnOtzTx7rFwk=;
	h=Date:From:To:Subject:In-Reply-To:References:From;
	b=Ewzbz/Xy6E1TkQ8mcJ1ztglJudHmF25ADsmOoFrXEPaA+k91rziuamFISjm6X+F+N
	 +iX4wUERSquyNGZBoRPpq1SX1MFtnsVvvMcCb8iZuM3pRYe2k7imoREfUyY4+IyHJ0
	 wgqHAEtT5b7Ttu5ynZsDVA0FgP0C7ZDGCEbT9RETsBCAISJleUxgRUUqrdUPFRulMC
	 CyxHu1r6KjKYYCywb0WzLl6Hhf5KiphdPKpj3EdcqYwMA+LN+2cdyWiiveW+F/Ottt
	 vNjr1ScLhIMz6VQ/Kk8SX0VpQBJvH4sTSg7KGX6efURkGHwsrkBw81u134rjuUv+5W
	 gBcDCuTyBG3AQ==
Date: Tue, 6 Aug 2024 19:15:04 +0200
From: Marco Moock <mm@dorfdsl.de>
To: oss-security@lists.openwall.com
Message-ID: <20240806191504.0df85cf8@dorfdsl.de>
In-Reply-To: <ZrJQpDftQthxOT2g@symphytum.spacehopper.org>
References: <CAJbOq16ebWS21u439bcV764HhaeQHF+eO64LdMAAKFgjdDLrMg@mail.gmail.com>
	<20240806171232.6bd08942@zbook>
	<ZrJQpDftQthxOT2g@symphytum.spacehopper.org>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.43; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] feedback requested regarding deprecation of TLS
 1.0/1.1

Am 06.08.2024 um 17:34:44 Uhr schrieb Stuart Henderson:

> On 2024/08/06 17:12, Marco Moock wrote:

> > Is it reasonable to output that on STDERR any time those protocols
> > are used?=20=20
>=20
> From a library?!

openssl is also sometimes used as a normal binary to test connections
etc.

--=20
Gru=C3=9F
Marco

Send unsolicited bulk mail to 1722958484muell@cartoonies.org
