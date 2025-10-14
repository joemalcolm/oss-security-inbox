Received: (qmail 22344 invoked by uid 550); 14 Oct 2025 18:29:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11330 invoked from network); 14 Oct 2025 17:12:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
	t=1760461940;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=X4RLgZcmBHdx8g5B/qJo0xmw3IRSPNVpcO5qdwND6Vs=;
	b=SQaqxiBRSFr0kOD0rx3s2mmBG8rLt0ionvjOVuNNeYtcOAvFHw53L7FOHFc2sIkE+Vt8xa
	fZaMk1RxIkzkNMoMzlxHn0xXicHLjoAaqFK8XcraHkGAWg6JQLA5lSZVDpKzGJgo3J2KF2
	wjJmlZUDF5rFdvFhE2OmCUpO7RUCraY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
	s=meesny; t=1760461940;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=X4RLgZcmBHdx8g5B/qJo0xmw3IRSPNVpcO5qdwND6Vs=;
	b=RXR6Mbjo461QqZP59tz075zk9xJrU8MmFNOnV4n2HLQmDSplksM/n6DMvwDuh9+8zIPsnX
	HriINv94Zzt8WC/aN/mlwVugCDjXKmkPwqPC4IH3fJ9U2CegHobeUZsMErPVKEZHrIcECi
	QFC5WP7rZbS5wYEBUdImYG9q1lTcycY=
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=bbb smtp.mailfrom=bbb@iki.fi
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1760461940; a=rsa-sha256; cv=none;
	b=imtoHHs6xRGsIY9ngYU11vzTfAe5cnVzDHpIucrHsV/hbS+Z8BJNVPRHX2/i5AfDDAvr4/
	0bO0EG4EnaZ3duyva+qH0baB9o9ViIcXudJpX4UkFmFZ2LDiPaHm/XASDQAdBbpW137Z95
	1A7hVI0mCbncqecDn45Q0UL854H6BF0=
Date: Tue, 14 Oct 2025 13:12:18 -0400 (EDT)
From: Billy Brumley <bbb@iki.fi>
To: oss-security@lists.openwall.com
In-Reply-To: <26073564-c863-4012-b943-295dec9a5111@gmail.com>
Message-ID: <99b8ce87-c95b-4679-62ee-6576764f38e9@iki.fi>
References: <fd686bd9-d2a7-89f9-f438-7ed38e127591@iki.fi>  <CAH8yC8nZDxYF1NyGjHn8yOADBioNwPB4WTjUZGPmbRTvPLq2tw@mail.gmail.com>  <ME0P300MB0713AA2595680B38B28287AEEEEAA@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>  <CAFRnB2XECXsKDSuvBCeWHwC9apboBdvhYCEFrUo2TuonHs1yFw@mail.gmail.com>
 <26073564-c863-4012-b943-295dec9a5111@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256; boundary="1757367822-53280776-1760461940=:25770"
Subject: Re: [oss-security] BoringSSL private key loading is not constant
 time

--1757367822-53280776-1760461940=:25770
Content-Type: text/plain; charset=US-ASCII; format=flowed

> It appears to be the number of trailing zero bytes in an elliptic
> curve secret key.  That lets an attacker narrow the search space,
> but that is all.

Thank you, that's accurate from the science perspective.

Yet more importantly, the implementation is not constant time in the 
accepted model we've been using since 2004. It seems BoringSSL has their 
own definition for that, better suiting their business model -- 
"alternative facts"

BBB

-- 
Dr. Billy B. Brumley, D.Sc. (Tech.)
Research Director, ESL Global Cybersecurity Institute (GCI)
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
--1757367822-53280776-1760461940=:25770
Content-Type: application/pkcs7-signature; name=smime.p7s
Content-Transfer-Encoding: BASE64
Content-Description: S/MIME Cryptographic Signature
Content-Disposition: attachment; filename=smime.p7s

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

--1757367822-53280776-1760461940=:25770--

