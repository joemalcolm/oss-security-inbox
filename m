Received: (qmail 9971 invoked by uid 550); 14 Oct 2025 16:22:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17668 invoked from network); 14 Oct 2025 16:10:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
	t=1760458225;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=2iE5ws7XYYpv7sK5K6H1Le2Wmb2ciS2YVROnbpU4svU=;
	b=yv8SX9gki/s3W63uFTaNH8qsRpT1L/uCwZYM+70aVuJJAAhAL4Onq4Jdg6aYjhVIHHsRxg
	cuvyXdlU91biHj/WdxonM94twaYjIc302injxg3rsmrF6y0f4PosXFbFYTIisoAuGSyyk2
	un0RPYi/rbTTGkSNCQ3pvAE+fMXaObI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
	s=meesny; t=1760458225;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=2iE5ws7XYYpv7sK5K6H1Le2Wmb2ciS2YVROnbpU4svU=;
	b=J0AkycOw5oLTNiJiRk+Egj5EqQ/WdNdVrDiSrAhBH9wLEJCyTYBzLgNsuLoXMB9E7wNZIt
	NGU9LaNHayIvUjkhUVItp+e6Iy0vvH/NxrcD27nmT8FobU+lomMGNi/05JxpBPKubezD1c
	co6XNxqGlXijbxu37D6c4WYWRiWuIr8=
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=bbb smtp.mailfrom=bbb@iki.fi
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1760458225; a=rsa-sha256; cv=none;
	b=XyhPlYau1sQJZIrgVkLqLo0H/Rer9YaXJlQi7I8anxClk4qW+IMte4yKVA6svRTXT8cs+5
	sc3u3QWpJHT3+HmBMBYzHgZqNABfWHgNqGOCtyL1MVdCdsvjje6IH+1c/x/jwllOeMGDEA
	jC41EkIPfwkv102qidx3DTTwZSPPMZc=
Date: Tue, 14 Oct 2025 12:10:23 -0400 (EDT)
From: Billy Brumley <bbb@iki.fi>
To: oss-security@lists.openwall.com
In-Reply-To: <CAFRnB2XECXsKDSuvBCeWHwC9apboBdvhYCEFrUo2TuonHs1yFw@mail.gmail.com>
Message-ID: <92f8c3a1-b61-52bd-c56e-965891a84530@iki.fi>
References: <fd686bd9-d2a7-89f9-f438-7ed38e127591@iki.fi> <CAH8yC8nZDxYF1NyGjHn8yOADBioNwPB4WTjUZGPmbRTvPLq2tw@mail.gmail.com>  <ME0P300MB0713AA2595680B38B28287AEEEEAA@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
 <CAFRnB2XECXsKDSuvBCeWHwC9apboBdvhYCEFrUo2TuonHs1yFw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256; boundary="1757367822-575140477-1760458225=:25770"
Subject: Re: [oss-security] BoringSSL private key loading is not constant
 time

--1757367822-575140477-1760458225=:25770
Content-Type: text/plain; format=flowed; charset=US-ASCII

Hey Alex,

> it's not really an attack of note. In this case, as I understand it,
> the only thing that's alleged to be leaked is the length of a key,
> which already wasn't confidential.

Is byte 31 (indexed from zero, bc I'm a computer scientist, not a savage) 
of Jeff's BitCoin private key confidential or not?

The leak reveals if it's all-zero or not, which of course, 1/256 keys are, 
so it affects a significant portion of the Internet. (Maybe not Jeff, but 
I assure you Jeff is significant, and I value him as a human being.)

It's your reputation as a securty profession on the line, so please speak 
up. You chose to have the discussion on oss-security without understanding 
the post, so here we are.

(I'm shocked we're still battling this CVE 15 years later. This was the 
running joke in the talk.)

Let us know,

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
--1757367822-575140477-1760458225=:25770
Content-Type: application/pkcs7-signature; name=smime.p7s
Content-Transfer-Encoding: BASE64
Content-Description: S/MIME Cryptographic Signature
Content-Disposition: attachment; filename=smime.p7s

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

--1757367822-575140477-1760458225=:25770--

