Received: (qmail 18099 invoked by uid 550); 28 Jan 2026 16:14:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20013 invoked from network); 28 Jan 2026 09:21:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=openssl.org; s=google; t=1769592102; x=1770196902; darn=lists.openwall.com;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IGgBL464XHuwYrHoL4hXbWjaRj3IfGM7OLYAqYNSrLI=;
        b=VGZcjQ4IzmafOnr3UwEbklGX7IwI6E6gROyspbHYKxHuyO7Z5vKOp0hfxrxknOIjkT
         kYlToWFO2tH6g8Q/97fl6ZUfxt+MXnOHQq+6w3+vOzyCJSKURmrhgW7C7ukyaKya9NPH
         WT4wms6VpUPN7gQk/1xX5TMpxVQqWsuFLA9BdOtPuPe5IgiGFMmdj0Gt+2/qdadOkdMP
         GwBy4czcOLX+6fRidZQFoIFGtHvNeWdOk1Ii65Zv79YkMge655JakgawikeQsvzbj+JB
         ELJn0hIA+nSBPitUd4aaTlGN9Blf90Oj5BNvAsy1Xspnd4x7UyC4VHz9fhHteZ+Psei8
         hIlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769592102; x=1770196902;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IGgBL464XHuwYrHoL4hXbWjaRj3IfGM7OLYAqYNSrLI=;
        b=iZSEDTYgkSAcR7RO7aSWknjq2qQcEs2UAnfZzNAhYV5XkvhJA8FezpFDx7C5wNqFB6
         PVK8zjnw4Wez0jgPVnIKlC3YL9ywBSansLzJvqXus1wUdSqKCiVaWas8LfU1E/MQVuSz
         xjW/zew1PQ83CRctIq371RnZ6f+fyUY+OXqya0ei6gP8E8pettSopakp3VHsZA6lfYfF
         9DxoU1Xy6IUA5qzETWP63hpXqc/Oj5n0WYZVZuvQVCG155x4aHQfN95Up7JO3dslbS3C
         A9K5gWNhTTp1oGlTMFP/wo1xC/FLK+AoNKT6qTJRTAphd1wBM4mP98tR7MqheIzjoU1d
         OSLw==
X-Forwarded-Encrypted: i=1; AJvYcCWOSuU9q8aNFqabo8uo3M9lEogSjOmhyn0b0nITuxPuM2CQZj4Nd5COsmAKdc6w9pZna7q6ebnjXxxxIMA=@lists.openwall.com
X-Gm-Message-State: AOJu0YzzLuTF7stjov0OvsFBVO/4tvVO6tJJoXJSsmX9PHuuuw6iXTla
	gs71is3t9wqGW0v33DtOAboa9Tq6t95O+z/1WMMXlx+qsEr3IWsy8gPweAwPo0/dKKI=
X-Gm-Gg: AZuq6aLtY1XgZmt1uVmqp+s5Ncywdp1tdZlQqqBaukMbTVIGTeuGuNr/nIdWMM/s5vw
	T2941+kh5KyQOcE+lc7d5TXduBlwzeCug31eGXWmItp6GIyHj3+lUL350N6cA5tKYynzwuz5sM0
	bT671TkLB3YKMLQk8+G4wRfNEuImdGEAiZqJp3ezUHHOBjTOUPov+uKXE9IoBoCStfPrhSnmKpc
	Zvf9IgOz8G/6dMAIO9PKm1oxmY96h5eBYrdHISvYvj1Gr/705R/UBSHut5v7HsXKt06yhmroS5Z
	1FFVckUajjmvhUUn470c7y74q3mFZ5fAGiXfemZpUAXkR7x9PO4/z8FGOo0eoIXvN8tZbzcERgm
	F2hyJpLj7stPqb+Sj38U+zWQe6QdgcfkqDgeKDl5eUHnOjrepvOSMfoDhLKA08eyGcnIF8rk8q8
	H1PN6ihN513NjLJZsBEWR/QtUnV3Q/6bZ/Uu8=
X-Received: by 2002:a05:6000:61e:b0:435:9ee1:f90d with SMTP id ffacd0b85a97d-435dd02e229mr6822851f8f.10.1769592102375;
        Wed, 28 Jan 2026 01:21:42 -0800 (PST)
Message-ID: <c26e1de1bddfdf783926294fa3d2b8933352d144.camel@openssl.org>
From: Tomas Mraz <tomas@openssl.org>
To: Demi Marie Obenour <demiobenour@gmail.com>, 
	oss-security@lists.openwall.com
Date: Wed, 28 Jan 2026 10:21:41 +0100
In-Reply-To: <c9c2b61f-f6f7-4d6d-8331-3a38a4311e11@gmail.com>
References: <adbbeba91ee3dedcb1ee1b3afc92c8d830979e73.camel@openssl.org>
	 <c9c2b61f-f6f7-4d6d-8331-3a38a4311e11@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.3 (3.54.3-2.fc41) 
MIME-Version: 1.0
Subject: Re: [oss-security] OpenSSL Security Advisory (corrected - added
 CVE-2026-22795 and CVE-2026-22796)

On Wed, 2026-01-28 at 04:06 -0500, Demi Marie Obenour wrote:
> On 1/27/26 10:48, Tomas Mraz wrote:
> > OpenSSL Security Advisory [27th January 2026]
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >=20
> > Improper validation of PBMAC1 parameters in PKCS#12 MAC
> > verification (CVE-2025-11187)
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >=20
> > Severity: Moderate
> >=20
...
> > Exploiting this issue requires a user or application to process
> > a maliciously crafted PKCS#12 file. It is uncommon to accept
> > untrusted
> > PKCS#12 files in applications as they are usually used to store
> > private
> > keys which are trusted by definition. For this reason the issue was
> > assessed
> > as Moderate severity.
>=20
> I would not at all be surprised if using untrusted private keys is
> not uncommon.=C2=A0 It can be easier to upload a key pair and certificate
> than to download a CSR, sign it, and then upload the certificates.
>=20
> Also, programs may well assume that the PKCS#12 authenticated
> encryption is sufficient to mitigate risks from an untrusted file.
>=20

Yes, but it is still uncommon enough to keep this at Moderate severity
in our opinion.


> > Stack buffer overflow in CMS AuthEnvelopedData parsing (CVE-2025-
> > 15467)
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > =3D=3D=3D=3D
> >=20
> > Severity: High
> >=20
...
> If an application calls PKCS7_d2i() and then checks a signature,
> is it affected?

No. PKCS7 API is not affected, only CMS API.

>=20
> > Out of bounds write in PKCS12_get_friendlyname() UTF-8 conversion
> > (CVE-2025-69419)
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >=20
> > Severity: Low
> >=20
...
> > The vulnerability is reachable via the public
> > PKCS12_get_friendlyname() API
> > when parsing attacker-controlled PKCS#12 files. While
> > PKCS12_parse() uses a
> > different code path that avoids this issue,
> > PKCS12_get_friendlyname() directly
> > invokes the vulnerable function. Exploitation requires an attacker
> > to provide
> > a malicious PKCS#12 file to be parsed by the application and the
> > attacker
> > can just trigger a one zero byte write before the allocated buffer.
> > For that reason the issue was assessed as Low severity according to
> > our
> > Security Policy.
>=20
> One byte out of bound writes have been exploited before.
> See
> https://projectzero.google/2016/12/chrome-os-exploit-one-byte-overflow-an=
d.html

Yes, but this is much more constrained vulnerability than the one you
are linking.


> > Missing ASN1_TYPE validation in TS_RESP_verify_response() function
> > (CVE-2025-69420)
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >=20
> > Severity: Low
> >=20
> > Issue summary: A type confusion vulnerability exists in the
> > TimeStamp Response
> > verification code where an ASN1_TYPE union member is accessed
> > without first
> > validating the type, causing an invalid or NULL pointer dereference
> > when
> > processing a malformed TimeStamp Response file.
> >=20
> > Impact summary: An application calling TS_RESP_verify_response()
> > with a
> > malformed TimeStamp Response can be caused to dereference an
> > invalid or
> > NULL pointer when reading, resulting in a Denial of Service.
> >=20
> > The functions ossl_ess_get_signing_cert() and
> > ossl_ess_get_signing_cert_v2()
> > access the signing cert attribute value without validating its
> > type.
> > When the type is not V_ASN1_SEQUENCE, this results in accessing
> > invalid memory
> > through the ASN1_TYPE union, causing a crash.
>=20
> Is the data read from the bad pointer returned to the caller?

If you're thinking about leaking some data to the attacker. No, we do
not think this can be exploited in such way.

>=20
>=20
> > ASN1_TYPE Type Confusion in the PKCS7_digest_from_attributes()
> > function (CVE-2026-22796)
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >=20
> > Severity: Low
> >=20
> > Issue summary: A type confusion vulnerability exists in the
> > signature
> > verification of signed PKCS#7 data where an ASN1_TYPE union member
> > is
> > accessed without first validating the type, causing an invalid or
> > NULL
> > pointer dereference when processing malformed PKCS#7 data.
> >=20
> > Impact summary: An application performing signature verification of
> > PKCS#7
> > data or calling directly the PKCS7_digest_from_attributes()
> > function can be
> > caused to dereference an invalid or NULL pointer when reading,
> > resulting in
> > a Denial of Service.
> >=20
> > The function PKCS7_digest_from_attributes() accesses the message
> > digest attribute
> > value without validating its type. When the type is not
> > V_ASN1_OCTET_STRING,
> > this results in accessing invalid memory through the ASN1_TYPE
> > union, causing
> > a crash.
>=20
> Is the memory accessed through the bad pointer returned to the caller
> in any way?

Again, we do not think this vulnerability can be used to leak any
private data to the attacker.

>=20
--=20
Tom=C3=A1=C5=A1 Mr=C3=A1z, Chief Technology Officer, OpenSSL Foundation
Join the Code Protectors or support us on Github Sponsors
https://openssl-foundation.org/donate/


