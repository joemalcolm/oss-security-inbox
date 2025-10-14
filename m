Received: (qmail 30592 invoked by uid 550); 14 Oct 2025 18:30:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 8028 invoked from network); 14 Oct 2025 17:40:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
	t=1760463638;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=QpAW+yhOVyJ4HC0rzzvlyNogO9gb1IY69/4CXiWBhMY=;
	b=PERkvDoGvu9orPFmqJQLs0uW6/XUT3IIp8+fX7M1RWxx5hwoyvDNSXkZl27JD3TJEejYh4
	Gsk/K5rWoHZFt6R6yjejXZ/E44pbFRcLUAKTBLDD1+YLExVhy/eXwUp0WLvrzXkL42IHFC
	kFc3tfRm4DAMjMtUeOCzlpLd3VLTz0E=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
	s=meesny; t=1760463638;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=QpAW+yhOVyJ4HC0rzzvlyNogO9gb1IY69/4CXiWBhMY=;
	b=L4rcvkjMQ04dktdbYKVeou724y4eUoBnoK5au/PIJQm4RXba1t7CejeLhgkJQkX6bdWawK
	3yuNpssmRn4wcL+Mx/JZn2vE9xK7GFXK1Qf7v3UXPXY9+WNBULs3wFeOJakIiNQgtQVBGa
	Nhx1ELvr4p0FXnIsOX+6bOstgqMrr8Q=
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=bbb smtp.mailfrom=bbb@iki.fi
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1760463638; a=rsa-sha256; cv=none;
	b=aJkApgooQtyY+XSmvKsOuxCreh/mW1SchuugUlBgOwq64twn4ilZ2/IQw4CJfVPd7uc/jN
	EjA8Ulbg5udtPnWfle2cfybJPhDkHrGuGNTb4cHMue6TDPcBdSwhBTCf5/onKquNwSyYM1
	5MsUNobNSxyau5veVw5s0OxGvHBMMEQ=
Date: Tue, 14 Oct 2025 13:40:36 -0400 (EDT)
From: Billy Brumley <bbb@iki.fi>
To: oss-security@lists.openwall.com
In-Reply-To: <CAH8yC8nZDxYF1NyGjHn8yOADBioNwPB4WTjUZGPmbRTvPLq2tw@mail.gmail.com>
Message-ID: <a2b73b21-bb57-bb73-2542-3d8089b6e277@iki.fi>
References: <fd686bd9-d2a7-89f9-f438-7ed38e127591@iki.fi> <CAH8yC8nZDxYF1NyGjHn8yOADBioNwPB4WTjUZGPmbRTvPLq2tw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256; boundary="1757367822-1018063210-1760463638=:25770"
Subject: Re: [oss-security] BoringSSL private key loading is not constant
 time

--1757367822-1018063210-1760463638=:25770
Content-Type: text/plain; charset=US-ASCII; format=flowed

Sorry Jeff not trying to unload on you, only to prevent misinformation 
from spreading.

> Is there an actual private key recovery associated with the attack?  I
> did not see it in the sources I examined.

No, only partial private key recovery. OTOH this is how research starts.

> And how does one get a server to repeatedly load a private key that is
> usually loaded once on server startup?

When we met f2f in San Diego (2013?), I'm confident in saying: I think 
we're the same generation, so you know what inetd is :D

So, the answer: inetd

It's a great example which can cause superfulous key loads, bc you get a 
new launch per connection.

(Don't have to tell folks on this list that inetd has, currently, been 
pretty much supplanted by systemd. I loved inetd. Sometimes I miss the 
90s.)

> Finally, how does an attacker change a server's governor, like from
> userspace or conservative to performance?

Check the README.md again, construct a prompt with it and ask your 
favorite GenAI, and if that question still seems relevant to you, please 
ask again on this list.

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
--1757367822-1018063210-1760463638=:25770
Content-Type: application/pkcs7-signature; name=smime.p7s
Content-Transfer-Encoding: BASE64
Content-Description: S/MIME Cryptographic Signature
Content-Disposition: attachment; filename=smime.p7s

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

--1757367822-1018063210-1760463638=:25770--

