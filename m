Received: (qmail 11622 invoked by uid 550); 31 Dec 2025 19:53:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22485 invoked from network); 31 Dec 2025 12:51:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=gnupg.org;
	s=20181017; h=Content-Type:MIME-Version:Message-ID:In-Reply-To:Date:
	References:Subject:Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=7cIfe4fqmkIE6DyxWV8yV8WD9GsAv/gYbuyxm9e4GYw=; b=aLc8bTOv3poeT9NvAPjWxD9KRn
	5I4U/lVOVjdnB2vXeDq3BUZitJ3j7htgKkbZHFJH7OOi0yuhAcwHlj5/EWp6S/LAEW4x9gOo+EM7T
	dVHuOddM8Q1FMYjsEyzRZZp+N1JrmPVs3nsPjTIT5XxEdJHolFIpWH9wpJO6H6XyYCXc=;
From: Werner Koch <wk@gnupg.org>
To: Demi Marie Obenour <demiobenour@gmail.com>
Cc: oss-security@lists.openwall.com,  Jacob Bachmeyer <jcb62281@gmail.com>,
  Solar Designer <solar@openwall.com>,  contact@gpg.fail
References: <3318308d-70b1-4ab3-9cca-ab4ea67dd27d@gmail.com>
	<20251228042744.GA629@openwall.com>
	<0009d6cc-143e-41e6-b240-eb526a9cb306@gmail.com>
	<87zf71pqe9.fsf@jacob.g10code.de>
	<f1811ded-6a8c-4eca-a8fc-4f9c77e4db5a@gmail.com>
	<87ms30s6eo.fsf@jacob.g10code.de>
	<fa5d8b21-114e-4791-928c-a6b0a56ba544@gmail.com>
Jabber-ID: wk@jabber.gnupg.org
Date: Wed, 31 Dec 2025 13:54:23 +0100
In-Reply-To: <fa5d8b21-114e-4791-928c-a6b0a56ba544@gmail.com> (Demi Marie
	Obenour's message of "Tue, 30 Dec 2025 15:06:37 -0500")
Message-ID: <87a4yyrev4.fsf@jacob.g10code.de>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=Al_Qa.ida_quarter_Reyosa_Brush_fire_NOCS_AGT._AMME_Plague_smugglers=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Subject: Re: [oss-security] safe use of cleartext signatures?

--=Al_Qa.ida_quarter_Reyosa_Brush_fire_NOCS_AGT._AMME_Plague_smugglers=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Tue, 30 Dec 2025 15:06, Demi Marie Obenour said:
> On 12/30/25 03:47, Werner Koch wrote:
>> data (with --output FILE).  Actually we have the same problem with MIME
>> when forwarding a mail.  Not all MUAs correctly mark which parts are
>> signed by which signature.
>
> What about for detached signatures?

PGP/MIME and S/MIME use detached signature.  There is one MIME object
for the signed text and one MIME object with the signature.


Salam-Shalom,

   Werner

--=20
The pioneers of a warless world are the youth that
refuse military service.             - A. Einstein

--=Al_Qa.ida_quarter_Reyosa_Brush_fire_NOCS_AGT._AMME_Plague_smugglers=
Content-Type: application/pgp-signature; name="openpgp-digital-signature.asc"

-----BEGIN PGP SIGNATURE-----

iJ8EARYKAEcWIQSHd0YfKgdOvEgNNZQZzByeCFsQegUCaVUc/xsUgAAAAAAEAA5t
YW51MiwyLjUrMS4xMSwyLDINHHdrQGdudXBnLm9yZwAKCRAZzByeCFsQenLFAP9p
v9MqEwFVkS46MiAE3kdDIK8jSwDyqbcmngpqdFVNGQEAnaa5ieYTaBcDjyXNr/9N
VO7zlOyRCVMBZl4c+CkPRAM=
=iLxC
-----END PGP SIGNATURE-----
--=Al_Qa.ida_quarter_Reyosa_Brush_fire_NOCS_AGT._AMME_Plague_smugglers=--

