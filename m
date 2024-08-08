Received: (qmail 29755 invoked by uid 550); 8 Aug 2024 19:42:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25996 invoked from network); 8 Aug 2024 19:05:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=citron; t=1723143934; x=1723810600; h=date:author:from:to:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  mime-version:content-type:content-transfer-encoding:author:from:subject:
  date:to:cc:resent-author:resent-date:resent-from:resent-sender:resent-to:
  resent-cc:resent-reply-to:resent-message-id:in-reply-to:references:
  mime-version:content-type:content-transfer-encoding:content-disposition:
  content-id:content-description:message-id:mail-followup-to:openpgp:
  blahblahblah; bh=Hm6F/ZSyVejNAs1kW29HIlTXaCfnR+k5Ygccs+saPd8=;
 b=muKP2T+DeNBEEzyWgf9xnqwDLpV66dBd/y58Y011v0iNtUf+zG+olKtiVJMAmwEG6YIdM8Qx
  Q7VpawWCpxvDHjKl3X8fSOZ6iV818cuSRjdiT2hjPR6HEcgM6qER7JkVRAwG0hdZ3nISEyKB8v
  w5HLeMBJMy1i/2uslhPnjh1MXWYH7m1Udkm5pA3rmuU+7svtfnCNLgoEGA5jjkNkvlUSugXzDj
  n7Fd5G0hPNIlHLEsPNOLxjORz1Fv4bKNsGTGUz6lSJi3ACPIxBdSZRbPXlEi/tlGsYvek61WXf
  6rW9KflquQ8tsY9/gSv4fpV/Hrqc9quVAJjfjTKRSUXcLa8w==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=orange; t=1723143934; x=1723810600; h=date:author:from:to:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  mime-version:content-type:content-transfer-encoding:author:from:subject:
  date:to:cc:resent-author:resent-date:resent-from:resent-sender:resent-to:
  resent-cc:resent-reply-to:resent-message-id:in-reply-to:references:
  mime-version:content-type:content-transfer-encoding:content-disposition:
  content-id:content-description:message-id:mail-followup-to:openpgp:
  blahblahblah; bh=Hm6F/ZSyVejNAs1kW29HIlTXaCfnR+k5Ygccs+saPd8=;
 b=HPhBV7kCEwYAakC3fmlrfOozuTtdpq9xovwZ1MM6lTKLbZb4+x/iajxH7vOrwGYmaLhQJ+CC
  QJoxcdXwFKmgAQ==
Date: Thu, 08 Aug 2024 21:05:32 +0200
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: oss-security@lists.openwall.com
Message-ID: <20240808190532.Uwg8_Ylc@steffen%sdaoden.eu>
In-Reply-To: <E3810E68-25CC-456F-9DC4-A03752C43E79@redhat.com>
References: <CAJbOq16ebWS21u439bcV764HhaeQHF+eO64LdMAAKFgjdDLrMg@mail.gmail.com>
 <20240806171232.6bd08942@zbook> <ZrJv8PDeCxQQJVxH@itl-email>
 <20240807144047.GA12108@test> <20240807174807.GA4206@openwall.com>
 <CADz+4x8wo6KaCU9b2s_+VkB08X7U4WWJHj66UfyvRU1qKUUd-A@mail.gmail.com>
 <20240807201640.1RD27ogN@steffen%sdaoden.eu>
 <E3810E68-25CC-456F-9DC4-A03752C43E79@redhat.com>
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

Clemens Lang wrote in
 <E3810E68-25CC-456F-9DC4-A03752C43E79@redhat.com>:
 |Hello Steffen,

Hallo.  (I presume.)

 |> On 7. Aug 2024, at 22:16, Steffen Nurpmeso <steffen@sdaoden.eu> wrote:
 |>=20
 |> Isn't that terribly rhetorical, and can kill sheeps indeed.
 |> To reiterate that SSL/TLS are standards, they had version
 |> iterations, which possibly got around some real protocol problem.
 |> These offer standardized sets of ciphersuites, some of those, of
 |> the elder versions, are "no longer secure".  (I am no
 |> cryptographer to tell whether they ever were completely so, or
 |> whether there are "mathematical tricks" to get away without brute
 |> force for them.  That aside.)  That is basically it.  But, as far
 |> as i understand it, even TLSv1 supported forward-secrecy stuff, ie
 |>=20
 |>  # openssl ciphers -v EECDH+AESGCM:EECDH+AES256:CHACHA20:!DHE
 |>=20
 |> gives two members, and except for the SHA-1 MAC this looks pretty
 |> modern.  But again: i am far from being an expert.
 |
 |TLS < 1.2 only supports a single signature algorithm, which uses SHA1-MD5=
 \
 |as digest.
 |Only TLS >=3D 1.2 supports the signature_algorithms extension to negotiat=
e \
 |modern digests.
 |
 |MD-5 is fully broken. SHA-1 is questionable. Their combination may \
 |withstand attacks a little bit longer, but probably not by much.
 |
 |The MAC is actually fine, since it=E2=80=99s HMAC with SHA-1, which isn=
=E2=80=99t as \
 |affected by a SHA-1 collision attack [1].
 |
 |  [1]: https://security.stackexchange.com/questions/187866/why-aren-t-col=
l\
 |  isions-important-with-hmac

Ok, here you got me.  I would have to (actually a little bit of
re-) read the entire TLS specification 1.1 (2246) in order to give
some useful answer.  Ie, whether the non-HMAC usage of MD5/SHA-1
in TLSv1.1 is used in a way that is truly problematic, or whether
they exist in data blocks that are protected by other means,
protected by the stream cipher or signed by a key that anyway has
to be verified via private/public key cryptography.
I never read 5246, just downloaded it an hour ago to read the
referenced appendix.  (Not a network expert etc.)

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
