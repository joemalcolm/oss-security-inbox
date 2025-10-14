Received: (qmail 17968 invoked by uid 550); 14 Oct 2025 23:30:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24054 invoked from network); 14 Oct 2025 20:33:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
	t=1760473986;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=wFV1IeWG4AbU9U709QCSjd8Q9IvVzVnSF5G38NQvTTU=;
	b=ojQibIwBYHBMXj3OB1OY5p3jfn0OdJ3xiHv7yKgHQBO8fgGixqtBJJ3j3An93nv20r16+g
	GXDDf/vpCPehMsBWVFKapH613jsuqOyhx5iyjBU67CwjnzUzW9bN/J0rSyQPEEBWGIPjIv
	1F7DiI0BjXWyWQshL66pIUoScCDw4mA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
	s=meesny; t=1760473986;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=wFV1IeWG4AbU9U709QCSjd8Q9IvVzVnSF5G38NQvTTU=;
	b=f9l7VSkUjihHR34cc2RaBYK/i04g4bm3vNjRHDzIBz7hp8dged6p63fZYmrA6VCuVcuPo7
	7GZyQQt4qYZd7jhzUKx4fNzS+WfWOifvpy9852N5Omz9g8UT/Xs89iX4eL49MN3H1IfLXu
	+maxwQJR+TZx2y4HzBVaTquPgth6nEo=
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=bbb smtp.mailfrom=bbb@iki.fi
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1760473986; a=rsa-sha256; cv=none;
	b=GepcRL7/fXfsmR/WdpnLLieCS9M3p11ifZ/fxfKoLUmk5gx2cNoL0vo1qsI+nF+FX96sw9
	hbgznFP23yKQyVIxPmH7SXnoKNZ0ZBeuyph5BC3rKq3TJld9+2xvAFEfBi67EdYLlpF1r2
	R4rD0kwkI1PQCTja55q9oTcQNycIxK4=
Date: Tue, 14 Oct 2025 16:33:04 -0400 (EDT)
From: Billy Brumley <bbb@iki.fi>
To: oss-security@lists.openwall.com
In-Reply-To: <CAF8qwaB=b0EDUTckx-ZHdAHkj-_kN9xPmfVFJP8XxCUq-W9Q5Q@mail.gmail.com>
Message-ID: <8673595-762e-f05b-884c-ae4123239775@iki.fi>
References: <fd686bd9-d2a7-89f9-f438-7ed38e127591@iki.fi> <CAH8yC8nZDxYF1NyGjHn8yOADBioNwPB4WTjUZGPmbRTvPLq2tw@mail.gmail.com>  <ME0P300MB0713AA2595680B38B28287AEEEEAA@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>  <CAFRnB2XECXsKDSuvBCeWHwC9apboBdvhYCEFrUo2TuonHs1yFw@mail.gmail.com>
 <CAF8qwaB=b0EDUTckx-ZHdAHkj-_kN9xPmfVFJP8XxCUq-W9Q5Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256; boundary="1757367822-842814374-1760473986=:25770"
Subject: Re: [oss-security] BoringSSL private key loading is not constant
 time

--1757367822-842814374-1760473986=:25770
Content-Type: text/plain; format=flowed; charset=US-ASCII

Before I start, I've been a member of this list since c. 2010 when I was a 
PhD student.

Unfortunately David Benjamin is not being genuine in his reply, and is 
playing the cat-and-mouse misinformation game.

And extra bonus, being super rude to up-and-coming security professionals 
is the modus operandi for Google security engineers. (Not me, I have thick 
skin. But for all the gen avo kids out there.)

Because a student (and I) reported this issue in 2019 to his company

Digging the 2019 reply then:

"""

In order to avoid cross-thread synchronization overhead later, we cache 
the public part of the key at load time as you've noted. The second 
recomputation is inefficient and due to the way that the code is 
structured. We haven't optimised it away as key-loading is typically not a 
hot spot.

We intend that operations on the private key be constant time with the 
usual definition. (I.e. the trace of instructions executed and memory 
locations accessed does not depend on the contents of the secret.) We 
don't aim to defend against physical side-channel analysis.

On those grounds, doing extra private-key operations is not a security 
concern because, if we're not leaking any information, two times nothing 
is still nothing. If you find that our implementation isn't constant-time, 
we would consider that to be a security concern. """

I'm sure those of you listening closely, and that are capable of critical 
thinking, understand the statement

"If you find that our implementation isn't constant-time, we would 
consider that to be a security concern"

directly conflicts with what David said.

There's some transparancy for you.

A hint to Google security folks: the correct reply, at this stage, is

"Sorry about that. We screwed up, we understand, you're right, you've 
dedicated your life to this and we're just humble engineers. Thanks so 
much for donating your time and a shit-ton of European tax-payer money to 
a $350b company. We'll fix it."

Cheers,

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
--1757367822-842814374-1760473986=:25770
Content-Type: application/pkcs7-signature; name=smime.p7s
Content-Transfer-Encoding: BASE64
Content-Description: S/MIME Cryptographic Signature
Content-Disposition: attachment; filename=smime.p7s

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

--1757367822-842814374-1760473986=:25770--

