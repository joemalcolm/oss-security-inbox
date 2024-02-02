Received: (qmail 32324 invoked by uid 550); 3 Feb 2024 04:17:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32300 invoked from network); 3 Feb 2024 04:17:22 -0000
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/simple;
 d=fifthhorseman.net; i=@fifthhorseman.net; q=dns/txt; s=2019;
 t=1706933983; h=from : to : subject : in-reply-to : references : date
 : message-id : mime-version : content-type : from;
 bh=Bv4Jd5zUZhnWHfWhKwrBRNKe0uAGm7KRaeXMgqU5m8U=;
 b=XuOnjoL31n+JbH+Inmezzv54fkPOKVHm+GMr8V/xfLqRG/rGnTG8IqIvSXTb2STvOCHXt
 cYCrPPBEOTab09OBg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=fifthhorseman.net;
 i=@fifthhorseman.net; q=dns/txt; s=2019rsa; t=1706933983; h=from : to
 : subject : in-reply-to : references : date : message-id :
 mime-version : content-type : from;
 bh=Bv4Jd5zUZhnWHfWhKwrBRNKe0uAGm7KRaeXMgqU5m8U=;
 b=RDD71IvT/pPrt991ss96Iu9w+ZL/d90a6yb/ssEepm5DhABiOQLwNMaUpTyxiHverNNzQ
 C9rlTu1YOJcDXoNfQoWgSwDgY1swJtTXUPClgpJSkZyGtoYR/Z1McCg05reCmBpm7Il0wjA
 LufhcOP/6ybTRgcefYI51GFP5xHVvhjz61Hl3JoXt2K4AwRn3Rye+4/KPkp2Hb+VOqI+L3j
 /myAXVrIfOfoJ1jkX0++J63CPgB5F7pfcrJOHhy3BmkT/wTIrIIQSPEocwZK6Rl9Al+r7+U
 uTIPczLtssZaUXNSO0mqTEN4V6K6aidsyL1ge4WybPxIfc0OkjCsxrY647+w==
From: Daniel Kahn Gillmor <dkg@fifthhorseman.net>
To: nightmare.yeah27@aceecat.org, oss-security@lists.openwall.com
In-Reply-To: <r2yfkmeszb5nz37jepgatysvm3ajua3kwte72sfzdicffh5vze@oizk252b5l77>
References: <20240201123100.42ba1334.hanno@hboeck.de>
 <r2yfkmeszb5nz37jepgatysvm3ajua3kwte72sfzdicffh5vze@oizk252b5l77>
Autocrypt: addr=Daniel Kahn Gillmor; prefer-encrypt=mutual; keydata=
 xjMEZXEJyxYJKwYBBAHaRw8BAQdA5BpbW0bpl5qCng/RiqwhQINrplDMSS5JsO/YO+5Zi7HCi
 QQfFgoAMQWCZadnIAUJBdtHCwMLCQcDFQoIApsBAh4BFiEE1HcEDHDCFWpcKYVJu36RAUlea/
 cACgkQu36RAUlea/edDQD+M2QjnoEyu/TjI+gRXBpXQ5jCsnnp9FdYhaSSUW/vZ8kBAJByWlj
 A9aMfVaVrmvgcYw7jzJz+gmZspBRB++5LZ20NzRc8ZGtnQGZpZnRoaG9yc2VtYW4ubmV0PsLA
 EQQTFgoAeQMLCQdHFAAAAAAAHgAgc2FsdEBub3RhdGlvbnMuc2VxdW9pYS1wZ3Aub3JnEu/CS
 CeyWwC6j4ihJr2u/z6delsF1pvYW3ufgf1L538DFQoIApsBAh4BFiEE1HcEDHDCFWpcKYVJu3
 6RAUlea/cFAmWnX5AFCQXZ8EUACgkQu36RAUlea/cjVwD+ONjdHM74rAa6EEiiqaPjlptiaZx
 CVqFYXnib6EbZARkBAPnnR8pW8vCBnDXHKu65jNqwF3aH761NaOqqMFfppg8GzjMEZXEJyxYJ
 KwYBBAHaRw8BAQdAjX25Fq2Q9IUFeHy6yByIQPBnFOedFliuEiCIUzJsENDCwMUEGBYKAS1HF
 AAAAAAAHgAgc2FsdEBub3RhdGlvbnMuc2VxdW9pYS1wZ3Aub3JnwqKWsw56uoWVLIFcs7ZecJ
 gwpsSNevWCzbviKQ8yRLUCmwK+oAQZFgoAbwWCZXEJywkQdy0WHjXNS4FHFAAAAAAAHgAgc2F
 sdEBub3RhdGlvbnMuc2VxdW9pYS1wZ3Aub3JnEIJSOxuw2y/UJmg5M3BLpN0JYjODZpXiEVFu
 1byARzMWIQR0vATEPYYIS+hnLAZ3LRYeNc1LgQAAsH8BAKg1C5LK/D7pSkXCD+jfTSP+CqM58
 iHLjh4vKhpOKsTJAQCHldtEjxJ1ksPTFgG9HihHH7qc6/wvvLw77ETMpwlrAxYhBNR3BAxwwh
 VqXCmFSbt+kQFJXmv3BQJlp1+rBQkCF4lgAAoJELt+kQFJXmv3ydsA/2roQZ2Jm/7iUrg/2C5
 ClWA/xbvPC31LyMkGGH2/rq8tAP9BgqLuCPnNTVPqeX9+9qqMmaFq7wmvjq5I+yycAw9CDc44
 BGVxCcsSCisGAQQBl1UBBQEBB0BZMsRrRaaeFSYMF1ZdfRmVgBriDUIr99eDQ085BK14DgMBC
 AfCwAYEGBYKAG5HFAAAAAAAHgAgc2FsdEBub3RhdGlvbnMuc2VxdW9pYS1wZ3Aub3JnsazAWX
 tEHUPmSTmcRZAIsAsNiO8k0hdjsfRlRVipgJgCmwwWIQTUdwQMcMIValwphUm7fpEBSV5r9wU
 CZadfqwUJAheJYAAKCRC7fpEBSV5r90AjAPwLgY1iKiFJEj32SVD5f721929l79VxQB5FlQss
 x1n5kQEA6Uct2tPvbB6T7p5KG3Gl+tbi7oJAuxFmpkpW5/N2Owg=
Date: Fri, 02 Feb 2024 18:47:15 -0500
Message-ID: <87jznme8e4.fsf@fifthhorseman.net>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"
Subject: Re: [oss-security] Re: Python standard library defaults to insecure
 TLS for mail protocols

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Thanks Hanno for raising this.

Hanno's conclusion is the right one: the mail protocol implementations
in stdlib need to default to the standard default TLS behavior, which is
requires verifying the server identity.

On Thu 2024-02-01 09:45:36 -0800, nightmare.yeah27@aceecat.org wrote:
> On Thu, Feb 01, 2024 at 12:31:00PM +0100, Hanno B=C3=B6ck wrote:
>
>> Also relevant is RFC 8314, which contains guidelines for TLS
>> connections in email protocols [5]. ("MUAs MUST validate TLS server
>> certificates [...]") It targets client software, but I believe it is
>> reasonable to apply the same standards to client APIs.
>
> Relaying *MTAs* do not usually verify the certificate of the server
> they connect to. When they do, it creates problems because MTA
> certificates are very often self-signed. IIRC Yahoo relays in
> particular used to have this problem (or still do?)

This is a poor counterargument.  Note that Hanno's example was for
IMAP_SSL, which is not used by any MTA i'm aware of.

> It is true that MTAs are not usually written in Python :-) So maybe
> the proposal is OK. But there's a general point to note here, namely
> not all protocols are the same wrt TLS.

This note is fair: there are implementations that use TLS *without*
confirming the server identity.  However, those implementations should
have to explicitly opt *into* that looser behavior by default.

The baseline toolkit should not start in the unverified mode, for any
protocol that uses TLS.

As the lead author of the deliberately minimalist imap-dl from
mailscripts (https://git.spwhitton.name/mailscripts/tree/imap-dl) i
happen to be lucky enough to have avoided this because i have tried to
support a configuration which happened to want to have a dedicated set
of CA certificates.

The relevant code there is:

-----
    ca_certs =3D conf.get('retriever', 'ca_certs', fallback=3DNone)
    [=E2=80=A6]
    ctx =3D ssl.create_default_context(cafile=3Dca_certs)
    [=E2=80=A6]
    server:str =3D conf.get('retriever', 'server')
    with imaplib.IMAP4_SSL(host=3Dserver,
                           port=3Dint(conf.get('retriever', 'port', fallbac=
k=3D993)),
                           ssl_context=3Dctx) as imap:
-----

Basically, i avoided getting burned by really dumb luck.

Had i not implemented that particular use case (which is admittedly
distracting from imap-dl's minimalist goals), i would certainly have
expected that the default would be an ssl_default_context().

This needs to be fixed in the stdlib.

      --dkg

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEARYIAB0WIQR0vATEPYYIS+hnLAZ3LRYeNc1LgQUCZb1/BQAKCRB3LRYeNc1L
gfPKAPsGJ2FvxbImbQ/uGvD+av8U7P/FoBuMqd0WQp3yj96uegD/ZrJARYxLh7tZ
VNrePQE2XqJjlbC1Ryjmf3AYqjIkKAI=
=szOS
-----END PGP SIGNATURE-----
--=-=-=--
