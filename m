Received: (qmail 7887 invoked by uid 550); 14 Oct 2025 16:07:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 27836 invoked from network); 14 Oct 2025 04:22:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=lahtoruutu;
	t=1760415714;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=26P5XUmurUPoam2oH50HYg8BbrtIaTA4JDZ0p3O/Zbc=;
	b=vF6Nl4MmBLTiziJzRE91bQnP/aYi+NXG4NPJakFneEFOCy/MwPLGODz++qXBekolG5G8dw
	IdD8PrHV2NlMqoisLS/OXiJIF8L62B41RU8HsO8VDg4W823EFhVLvcsSKaowAZjOnfwPOL
	51/XyRgrlnOv9rwwGuBCKo3uk/bkSs40VIGbEceD0XrKFN0/ZZC6vS/9uMrlTnqfBQO1BN
	hikoNMRd6drH7W350c0YKjOpzaAOVG0g6AkzsbXnGr+oqgi7gTXY6Yon7C6hsk+7hnBk97
	uROVdxAL2LAhF1PCvxuPSYmgvRlrtdWz4otSXuIYVMcfLX8khGSprBWKBYRVSg==
ARC-Seal: i=1; s=lahtoruutu; d=iki.fi; t=1760415714; a=rsa-sha256;
	cv=none;
	b=aTnSId1nFwenrwEqoirD5qeKw/uHMeIglISyEZ/4Soo/OWv3M2eTp0SmNXG+5T46Q3zfpD
	xKH0ANk0/E43iRFiea1rq9s61ADfzx0DEwME8ymZ6dnlbXNw8HXk83o3lsxUzytEymE2gZ
	TmkKV+ydphpWVIpNI/k5EnzJjVospidfTyNj3ecXU3dk2jw8R11Y/az40cwz68BxJBqEGf
	Qs/kc2rK8vvQrwfjgzfB55Ms8LqeoVjy0MYwmkqCWRE+LnrMog1H7+NtEb9t8hlh8H+j2n
	NncXgPkXixEWgqS0dPojylAqTmwMPVCVFGpLZ/TZa+pG6sIrxJj158vkd1G7gg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=bbb smtp.mailfrom=bbb@iki.fi
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
	s=lahtoruutu; t=1760415714;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=26P5XUmurUPoam2oH50HYg8BbrtIaTA4JDZ0p3O/Zbc=;
	b=cHmT+boI2wXi7aysuCb0voSOUoaWzhzdRkD6/8RHRHTDsIyXPkHteTWj7QR63qGK/IkuUq
	BinwrEKD2d9XnkAx3u8eDGDCgMMdjIAStkpFJomxwt7gGeWSuQGtQpQr4DshiR2wLAv4OO
	gpLRQlGiC9KCS3RaRrJ509lpNkLNek12NnsEyhmbt12c1gs5MJBGquYe5PobS4K7LpgWlv
	9Q74oh23tscvtQxPMlB5IlsVDgXTpRLXrIN62//xol3Pdsbo8OpUuWTGEBkif+kkT51VBf
	eoYG6aKwo9gqWKv1V7X43IV8AydTbwRFrs8e6RCdKXI/IDuD8XQY3gQDEkeVfA==
Date: Tue, 14 Oct 2025 00:21:52 -0400 (EDT)
From: Billy Brumley <bbb@iki.fi>
To: oss-security@lists.openwall.com
In-Reply-To: <CAH8yC8nZDxYF1NyGjHn8yOADBioNwPB4WTjUZGPmbRTvPLq2tw@mail.gmail.com>
Message-ID: <c34fa28b-ab45-4f6f-248d-4d6dd96d446d@iki.fi>
References: <fd686bd9-d2a7-89f9-f438-7ed38e127591@iki.fi> <CAH8yC8nZDxYF1NyGjHn8yOADBioNwPB4WTjUZGPmbRTvPLq2tw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256; boundary="1757367822-229632029-1760415714=:25770"
Subject: Re: [oss-security] BoringSSL private key loading is not constant
 time

--1757367822-229632029-1760415714=:25770
Content-Type: text/plain; charset=US-ASCII; format=flowed

Hey Jeff,

Good to hear from you -- it's been a while :)

> What does the attacker learn besides the key length?  Isn't that
> mostly public information, like the TLS options used during cipher
> suite negotiation?

I reckon you're aware, but just to make it explicit for the list lurkers:

key length and effective key length are not the same thing.

If I asked you to post the top byte of your BitCoin private key to this 
list, would you? (Maybe you would, right? There's not much entropy in one 
byte to begin with. But OTOH private key bits are private ...)

(Re: Peter's post, indeed I don't see much actual value in the leak. But I 
do believe in transparency, hence the PoC and oss-security post.)

Best,

BBB

-- 
Dr. Billy B. Brumley, D.Sc. (Tech.)
Director of Research, ESL Global Cybersecurity Institute (GCI)
Kevin O'Sullivan Endowed Professor, Department of Cybersecurity (CSEC)
Director, Platform Security Laboratory (PLATSEC)
Rochester Institute of Technology
Cybersecurity Hall 70-1770
100 Lomb Memorial Drive
Rochester, NY, 14623-5608, USA
S/MIME public key: https://people.rit.edu/bbbics/bbbics@rit.edu.crt
S/MIME public key: https://people.rit.edu/bbbics/bbb@iki.fi.crt
https://www.rit.edu/directory/bbbics-billy-brumley
https://www.rit.edu/cybersecurity/
--1757367822-229632029-1760415714=:25770
Content-Type: application/pkcs7-signature; name=smime.p7s
Content-Transfer-Encoding: BASE64
Content-Description: S/MIME Cryptographic Signature
Content-Disposition: attachment; filename=smime.p7s

MIIF/QYJKoZIhvcNAQcCoIIF7jCCBeoCAQExDzANBglghkgBZQMEAgEFADALBgkqhkiG9w0BBwGg
ggNnMIIDYzCCAkugAwIBAgIUJu0wGO0TKFqKl1hgSc9xVYoAza0wDQYJKoZIhvcNAQELBQAwMDET
MBEGA1UEAwwKYmJiQGlraS5maTEZMBcGCSqGSIb3DQEJARYKYmJiQGlraS5maTAeFw0yNTA2Mjgw
NzI3MzhaFw0zNTA2MjYwNzI3MzhaMDAxEzARBgNVBAMMCmJiYkBpa2kuZmkxGTAXBgkqhkiG9w0B
CQEWCmJiYkBpa2kuZmkwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQC5SD697RkkQ2ub
rkNNzU2uc79govD2IjM2TS4MjSsNka9WAYL0bbcHns0Lo4fFt/VUqhP+pL+suhaA7nijUp9/3kEu
OlklZy+NSKAu71yOClPdsNlHL6TdQyEDl5iEh1eYefLRoFsMewQAqX51MIUM35amEd+aN5ISUS6/
5eVczGsgH6f1ze0Rk3JIu8EFsFswlx15zN92wKWx9HBpcGu5EKja2G1FFwEPzhfk29bPzOOvYeT8
SmSwtW6d3/+Za2lLycPN4dZgnR79hxLJ0Q1EGUseHE7avneBFpHflZJQgxl+uRlHNiSLg8cN4vxo
OQ6av23loa3o/bFtIMFTIarDAgMBAAGjdTBzMBUGA1UdEQQOMAyBCmJiYkBpa2kuZmkwDAYDVR0T
AQH/BAIwADAOBgNVHQ8BAf8EBAMCBaAwHQYDVR0lBBYwFAYIKwYBBQUHAwQGCCsGAQUFBwMCMB0G
A1UdDgQWBBRlPI6l1CEXaELskHosTJaSi4Y9TjANBgkqhkiG9w0BAQsFAAOCAQEAsLGuJZkoaCpG
xZV8N6D5tlsBNN86zygq8vxcoRxzTGyBmaUJb90FNinT5qSHEdmCh0KG2S0cSURYoZ7uiojgKJLi
sPabU/INHodpVQTISQROkpAMo3wroJUUjDJaZTOIDfaUbIH3H1MEWlkbat78sS5vfhWEnBE0tVQD
zLB+Xw9mlUq8sCg91KZiqVTRu1KL/bvjdjQEcfbZmNuA6mFbBcljMhPyWXsK0ZNI4jqezUDDAepd
QEUQnwCwwIkuhtofnbFuHk12LGa7q2TejzsQXdA84yvIxTyh1oYi01fYPGeRjYb1Gys4nL6lOHgd
CaKfV5X8r3DCKf156CfMv0asKjGCAlowggJWAgEBMEgwMDETMBEGA1UEAwwKYmJiQGlraS5maTEZ
MBcGCSqGSIb3DQEJARYKYmJiQGlraS5maQIUJu0wGO0TKFqKl1hgSc9xVYoAza0wDQYJYIZIAWUD
BAIBBQCggeQwGAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG9w0BCQUxDxcNMjUxMDE0
MDQyMTUyWjAvBgkqhkiG9w0BCQQxIgQgsXlosO5rFP0sdm3Z3VHirqnuljX74SrdFKG3xqHISJYw
eQYJKoZIhvcNAQkPMWwwajALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsGCWCGSAFlAwQBAjAK
BggqhkiG9w0DBzAOBggqhkiG9w0DAgICAIAwDQYIKoZIhvcNAwICAUAwBwYFKw4DAgcwDQYIKoZI
hvcNAwICASgwDQYJKoZIhvcNAQEBBQAEggEAHzZnQZoXU2MVSOD5EfTnB6kB8Oqe8wM3QZ0uAqta
QDx2aKvF8AmnoHgZl5ZNNYWBgH2U0KC1GKVHAM1JTnSyNeDASzpRwUzW9O8f3C+qk5I856vWMvL7
JngnFjKUvNCDDhl40+dLr3mnIQNp4kXGV7zPXrvL1l423w3PfSkt42aKVxZPITG2NcMs4zePFAK3
C4pfZ41jAWxSx8UuA63tSK6+tl+J9ZuDYtwqKtFDK9+BQW/iKvPH4E6UF9M8EB488ouubZ9JQk8N
roQsupJVZUypBFQNMO+NXejKU9kzlaWPUVKBf+raRf3dS0kYunH+IqlrIGTTnMsRJfEl9qByGA==

--1757367822-229632029-1760415714=:25770--

