Received: (qmail 28530 invoked by uid 550); 8 Aug 2024 18:43:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25777 invoked from network); 8 Aug 2024 18:41:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=citron; t=1723142479; x=1723809145; h=date:author:from:to:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  mime-version:content-type:content-transfer-encoding:author:from:subject:
  date:to:cc:resent-author:resent-date:resent-from:resent-sender:resent-to:
  resent-cc:resent-reply-to:resent-message-id:in-reply-to:references:
  mime-version:content-type:content-transfer-encoding:content-disposition:
  content-id:content-description:message-id:mail-followup-to:openpgp:
  blahblahblah; bh=BUGt9/vzqhq4gHvSLZ2Xj9qTldDbqG8r4ineluC9Xg8=;
 b=UFKMPuHu778LtQ23UOFqDL1H6mQjQCh5lfoYYr51gxM1Ip2uJmExEO9PSmIK42m6xYy+F7mU
  +pT3b1NA2NX2Hl+kRhStKztOaVjpIIE6riWCSxAbBk5dZdPxkH8hPnxTYvRvtxiP59UmWMqECe
  VCaAOwblHBgMsGcD2aK02Xxs1IMURr/XMfHtSd3k1PYjFukQjc6+Fq06l5IqCf2qE0Aq5NW4Xt
  VaVu2VmS6rJl9wNJgY95qAw2Qm5711k6ePOnoGHvg2R8NXObJWuV4jYlPzOh+GJGmg6yJPXggm
  CfNvyI+BfYdGvLFf65Z4MFP9Z1sjCX1k1TMYCXLdFXwOaHiw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=orange; t=1723142479; x=1723809145; h=date:author:from:to:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  mime-version:content-type:content-transfer-encoding:author:from:subject:
  date:to:cc:resent-author:resent-date:resent-from:resent-sender:resent-to:
  resent-cc:resent-reply-to:resent-message-id:in-reply-to:references:
  mime-version:content-type:content-transfer-encoding:content-disposition:
  content-id:content-description:message-id:mail-followup-to:openpgp:
  blahblahblah; bh=BUGt9/vzqhq4gHvSLZ2Xj9qTldDbqG8r4ineluC9Xg8=;
 b=nQS1FGooFMTLy6K0ovf9Pl58H1ljgy1PGY0dc9iBpnZkU1cWH8WGS4vdFgxRsKVMlLeJzVVJ
  avMaz4/P1I0dBw==
Date: Thu, 08 Aug 2024 20:41:18 +0200
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: oss-security@lists.openwall.com
Message-ID: <20240808184118.J7FhHVm2@steffen%sdaoden.eu>
In-Reply-To: <CAH8yC8k01PEivvgmP7hk2mW7WTfxVohmFrF7FRr6NwkkzVUj3A@mail.gmail.com>
References: <CAJbOq16ebWS21u439bcV764HhaeQHF+eO64LdMAAKFgjdDLrMg@mail.gmail.com>
 <20240806171232.6bd08942@zbook> <ZrJQpDftQthxOT2g@symphytum.spacehopper.org>
 <1dfc8a2f-cc26-4e05-b41d-0398c925226d@gmail.com>
 <20240807140212.ls_NX9bg@steffen%sdaoden.eu>
 <CAH8yC8k01PEivvgmP7hk2mW7WTfxVohmFrF7FRr6NwkkzVUj3A@mail.gmail.com>
Mail-Followup-To: oss-security@lists.openwall.com
User-Agent: s-nail v14.9.24-621-g0d1e55f367
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] feedback requested regarding deprecation
 of TLS 1.0/1.1

Jeffrey Walton wrote in
 <CAH8yC8k01PEivvgmP7hk2mW7WTfxVohmFrF7FRr6NwkkzVUj3A@mail.gmail.com>:
 |On Wed, Aug 7, 2024 at 4:47=E2=80=AFPM Steffen Nurpmeso <steffen@sdaoden.=
eu> wrote:
 |> [...]
 |> Given that most sensitive software supports easy configuration, for
 |> example by passing through "MinProtocol" configuration settings to
 |> *SSL (and i so much like the possibility of a "global central
 |> OpenSSL configuration file" that bundles all relevant settings,
 |> yet so few programs support that possibility), topics like these
 |> always strike me as hysteria.  And before the ears ring, i quickly
 |> say "as defaults are safe".
 |
 |Small nit: there is no SSL or TLS min version or max version.
 |
 |There is a TLS record version, and a TLS protocol version. The record
 |layer carries the protocol messages. The record version is kind of
 |boring. It has not changed much, and I would speculate you could
 |select TLS 1.0 and it would be the same as TLS 1.2 or TLS 1.3 (though
 |I did not verify the claim). The TLS protocol version is much more
 |interesting, and it is what people customarily think of when they hear
 |TLS 1.0, TLS 1.2, and TLS 1.3. It changed a lot between TLS 1.1/TLS
 |1.2, and TLS 1.2/TLS 1.3.
 |
 |TLS record version and TLS protocol version are _not_ a range of
 |min/max. They are discrete versions of the protocol for the underlying
 |transport (record) and the upper protocol data units (messages).
 |
 |Also see <https://datatracker.ietf.org/doc/html/rfc5246#appendix-E>.
 |It talks about how to set the various versions for maximum
 |interoperability.

Ok -- i was talking about the actual OpenSSL interface in
question, like SSL_CTX_set_min_proto_version(3), and -- much much
more so! -- the wonderful SSL_CONF_CTX that i as an application /
library programmer can "pass through" to users, via the much
beloved SSL_CONF_CMD(3ssl), so that they can interact with the
*SSL library directly, via strings.  (And there is "MinProtocol".)

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
|
| Only during dog days:
| On the 81st anniversary of the Goebbel's Sportpalast speech
| von der Leyen gave an overlong hypocritical inauguration one.
| The brew's essence of our civilizing advancement seems o be:
|   Total war - shortest war -> Permanent war - everlasting war
