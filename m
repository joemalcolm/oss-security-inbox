Received: (qmail 24034 invoked by uid 550); 8 Aug 2024 21:02:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1438 invoked from network); 8 Aug 2024 20:55:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=citron; t=1723150543; x=1723817209; h=date:to:subject:in-reply-to:
  references:mail-followup-to:mime-version:content-type:
  content-transfer-encoding:message-id:from:author:from:subject:date:to:cc:
  resent-author:resent-date:resent-from:resent-sender:resent-to:resent-cc:
  resent-reply-to:resent-message-id:in-reply-to:references:mime-version:
  content-type:content-transfer-encoding:content-disposition:content-id:
  content-description:message-id:mail-followup-to:openpgp:blahblahblah;
 bh=YGldUqCULRFZTHHFwhpEjBGQceV3v8a71pNxwlGG4WM=;
 b=ZYc/lKrFZmfGmiGBFempfPNU4e+GM1/ILYCP3pQQbS3dnbGaU8095SS0PLk/N11XzG+Mq03u
  ze/0rhZI4BfPPyKobJi4FBelgXBk6FXbP469gbrFZT4HW/j64ZhxiYHJr6hl8lqN84FSte3GaL
  0iv5gjUTi2+5K4cCQIQ8fS6RI49ne5gDll02w3zeWFFt+DsdKD0/WtidvUzYcWuIZlT9o48fnR
  RfhReYDCvmVuBYdTGXd893FxuDKZSkuQ8mbF+Q6zNXaWuzpFAfx5C4yVelMWuQ2MGNFNub1uN8
  PFyDZpJFQMAU0D+/CuTrsJHle4wd6DUWZMQlvLnh6sjF6wHw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=orange; t=1723150543; x=1723817209; h=date:to:subject:in-reply-to:
  references:mail-followup-to:mime-version:content-type:
  content-transfer-encoding:message-id:from:author:from:subject:date:to:cc:
  resent-author:resent-date:resent-from:resent-sender:resent-to:resent-cc:
  resent-reply-to:resent-message-id:in-reply-to:references:mime-version:
  content-type:content-transfer-encoding:content-disposition:content-id:
  content-description:message-id:mail-followup-to:openpgp:blahblahblah;
 bh=YGldUqCULRFZTHHFwhpEjBGQceV3v8a71pNxwlGG4WM=;
 b=BkrzEqz3UBrJUFODnTcZj1jai7mxkz7RDpD/7XbNAtFwuTL7B1ABbFNwaOMpXAtebTqQQ0Iw
  bPOkG5Ou995PDw==
Date: Thu, 08 Aug 2024 22:55:40 +0200
To: oss-security@lists.openwall.com
In-Reply-To: <20240808190532.Uwg8_Ylc@steffen%sdaoden.eu>
References: <CAJbOq16ebWS21u439bcV764HhaeQHF+eO64LdMAAKFgjdDLrMg@mail.gmail.com>
 <20240806171232.6bd08942@zbook> <ZrJv8PDeCxQQJVxH@itl-email>
 <20240807144047.GA12108@test> <20240807174807.GA4206@openwall.com>
 <CADz+4x8wo6KaCU9b2s_+VkB08X7U4WWJHj66UfyvRU1qKUUd-A@mail.gmail.com>
 <20240807201640.1RD27ogN@steffen%sdaoden.eu>
 <E3810E68-25CC-456F-9DC4-A03752C43E79@redhat.com>
 <20240808190532.Uwg8_Ylc@steffen%sdaoden.eu>
Mail-Followup-To: oss-security@lists.openwall.com
User-Agent: s-nail v14.9.24-621-g0d1e55f367
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Message-Id: <20240808205540.267A1153AD7@kent.sdaoden.eu>
From: steffen <steffen@sdaoden.eu>
Subject: Re: [oss-security] feedback requested regarding deprecation
 of TLS 1.0/1.1

Steffen Nurpmeso wrote in
 <20240808190532.Uwg8_Ylc@steffen%sdaoden.eu>:
 |Clemens Lang wrote in
 | <E3810E68-25CC-456F-9DC4-A03752C43E79@redhat.com>:
 ||> On 7. Aug 2024, at 22:16, Steffen Nurpmeso <steffen@sdaoden.eu> wrote:
 ...
 ||> To reiterate that SSL/TLS are standards, they had version
 ||> iterations, which possibly got around some real protocol problem.
 ||> These offer standardized sets of ciphersuites, some of those, of
 ||> the elder versions, are "no longer secure".  (I am no
 ...
 ||> as i understand it, even TLSv1 supported forward-secrecy stuff, ie
 ||>=20
 ||>  # openssl ciphers -v EECDH+AESGCM:EECDH+AES256:CHACHA20:!DHE
 ||>=20
 ||> gives two members, and except for the SHA-1 MAC this looks pretty
 ||> modern.  But again: i am far from being an expert.
 ||
 ||TLS < 1.2 only supports a single signature algorithm, which uses SHA1-MD=
5 \
 ||\
 ||as digest.
 ||Only TLS >=3D 1.2 supports the signature_algorithms extension to negotia=
te \
 ||modern digests.
 ||
 ||MD-5 is fully broken. SHA-1 is questionable. Their combination may \
 ||withstand attacks a little bit longer, but probably not by much.
 ||
 ||The MAC is actually fine, since it=E2=80=99s HMAC with SHA-1, which isn=
=E2=80=99t as \
 ||affected by a SHA-1 collision attack [1].
 ||
 ||  [1]: https://security.stackexchange.com/questions/187866/why-aren-t-co=
ll\
 ||  \
 ||  isions-important-with-hmac
 |
 |Ok, here you got me.  I would have to (actually a little bit of
 |re-) read the entire TLS specification 1.1 (2246) in order to give
 |some useful answer.  Ie, whether the non-HMAC usage of MD5/SHA-1
 |in TLSv1.1 is used in a way that is truly problematic, or whether
 |they exist in data blocks that are protected by other means,
 |protected by the stream cipher or signed by a key that anyway has
 |to be verified via private/public key cryptography.

That is: whether "vulnerability" thus means to create a fake
packet with identical MD-5 and SHA-1 hashes (it seems TLSv1.1
always uses both concurrently, at least for RSA) as the
cryptographically verifiable one that ships with the packet.

It seems to me this is hard stuff, especially for "the occasional
attack".  *But*, if the protocol is resistant against downgrading
it would be used only for those connections which cannot use
anything else.

The real question for me (who cannot help possible remote stations
that cannot do any better) is how applications can deal with being
specific.  For example openssl-s_client(1) allows per-connection
cipher suite configuration, the MUA i maintain does so per
destination server if you want to, for example.  The postfix MTA
supports policy maps for at least the client side like this

       /etc/postfix/tls_policy:
           example.edu                 none
           example.mil                 may
           example.gov                 encrypt protocols=3DTLSv1
           example.com                 verify ciphers=3Dhigh

This narrows the necessary case of less modern support down to
(possibly falsely announced) host names, or fixed IP numbers.

I, as a non-cryptographer, would wonder whether some of the cipher
suites that are by default possible do not impose greater risks
than that.

 |I never read 5246, just downloaded it an hour ago to read the
 |referenced appendix.  (Not a network expert etc.)
