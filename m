Received: (qmail 24361 invoked by uid 550); 2 Jan 2026 23:15:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1346 invoked from network); 2 Jan 2026 12:47:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767358045; x=1767962845; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=u7hNdsNbp+kGG38sZkvXMSw3YVmW0B60JdJA4+gE4ps=;
        b=ZmxpD8fGFw81Yk7P9k2XCX/fuEupZRf5o4BO6BhoCTW9B2N5HTFvfTPFWHrEv4WeRR
         Bk3XD2m6YPVOsV5v1K5JM4v8ki4ogxeg3VNaHQ1CJA9tYBvkQt3BQ7AxEL0r/PI8Pfkx
         bI2hXJO/zauJ7Os9NB2G1AUzCy9Q78y3+wn1qeenT4uqXNyeKYwL/Uz/BVGOpXiSuGYa
         OaNfVXF7YP2w38ZdrtAvyvuMr+k7IYHOyIedyUTpeFH7gx3zLfdqg8nRUwp8BpN/+IGF
         7eOQX7TI34LUOj5d2lVICv9oNd7aJHvNf2ofj1iFMThnOfWZZCTAQzXt3Yx6vGUOkVDt
         UXtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767358045; x=1767962845;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=u7hNdsNbp+kGG38sZkvXMSw3YVmW0B60JdJA4+gE4ps=;
        b=BCcm4LnG+LrmJGy4ziOwQJ/M68H0BmTNuuPUa/7iZRqVHq5z6PcXXm1Ia217dAb/aw
         eD/oOq8dOyhDvJixGzpeVedMpMOcGx2j3LYVWJqwM4KZUW7BMhv/jt42ztcqCXnNPHao
         GQCaM149s1LbE5RDUcQBCikPKmiVByFET0L9UFt+I9JZQYjbbRm7QJi5ycksS3aXTdFQ
         Rf+PpeAu/zibt9BsZ0RCEMXcSpyt39DE5w8Y9Eom2Nh1olQ4vANFLJhP/+4frOYgyQV/
         ws6q9jNB8GP4iQJfchK+R0IeKF22L3r4SX37lfPUeH1uMvIHd1Q1eIlpngAIvOfrCrvd
         vG1A==
X-Gm-Message-State: AOJu0Yzkkc1re8wvcnLxdlnmjrATA/Dm7nNT/3GgIEUqegJ4lgh8DDmT
	gWqj/RTpsKAg0oQQpvDQM2JS+DocvWAMd2YaUYBMzPzsTgVbsaYN/N8OEqyXifCDd+zvhpfeaQ4
	Ms1M1y5MnUqM/m2BREzvVwXky2cfsh5cgoaku
X-Gm-Gg: AY/fxX4Lwrm1ol2plbBs+afPt77P1oaGtWJZSAK5YomkHOKOVnesbCWay+4tU9iv8k7
	ofnNj+QaLpBVegmgqzs+o5HNwF953/UulMp4DsgUNlYhVPtC2sp/WHPat0a7PczrEKXU6cQbecM
	QqtSBCEa0S4nQdnN4cunepdCDjUDjdyK/Lpv8naqP331Mus+CdDdqo9SQUysAtVnb/vh1YIE+ev
	NcrUxthKG3qnacp1KZlH6KI7VRPPMflL+boY6/SwrHjCPK/r2S3ZD4uQV8kb0/aG0RGwX9AaLmv
	9r9jbOdzPzh9hTgrQxvA5FgqkYIUMosHQR+BOnDJSPPo4w7ByQE9RDtraEU/
X-Google-Smtp-Source: AGHT+IGv6Xr37k9qzUvwSMS/dSDIcGherJDjWtyckqF6qAvyJJGnitepElAImcD8b6TuMjGbMx0b0UG5mhER93qCsPY=
X-Received: by 2002:a2e:bc11:0:b0:37b:9e27:89f with SMTP id
 38308e7fff4ca-38121691d21mr128808391fa.37.1767358044693; Fri, 02 Jan 2026
 04:47:24 -0800 (PST)
MIME-Version: 1.0
References: <4bb0e4f7-a4f3-45cc-b519-2044b4b2871c@gmail.com>
 <928709EE-07AA-4995-B9D3-E83AC18353CC.1@smtp-inbound1.duck.com>
 <6F979157-91AD-4C55-8CCD-5CC5AA18BB50.1@smtp-inbound1.duck.com>
 <878qei6bq7.fsf@josefsson.org> <9882E5D7-2B0D-46DF-A0E2-3E23D8DCBF66@redhat.com>
In-Reply-To: <9882E5D7-2B0D-46DF-A0E2-3E23D8DCBF66@redhat.com>
From: Soatok Dreamseeker <soatok.dhole@gmail.com>
Date: Fri, 2 Jan 2026 07:48:29 -0500
X-Gm-Features: AQt7F2pS6DHVVZUd8qpPpPPOEuDZgGwxEw6fUQ6eeD6HdjjhUUV94IIdb6nl5VQ
Message-ID: <CAOvwWh3jqp9c23Xm7FuBbOrtDekXNWfTrzKkfjCJfT1602Ov3g@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000071e73a0647671ce3"
Subject: Re: [oss-security] Best practices for signature verifcation

--00000000000071e73a0647671ce3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 1, 2026 at 5:10=E2=80=AFPM Clemens Lang <cllang@redhat.com> wro=
te:

> Hi Simon,
>
>
> > On 31. Dec 2025, at 14:07, Simon Josefsson <simon@josefsson.org> wrote:
> >
> > I believe that Ed25519+SLH-DSA is the best
> > near-term PQ variant for long-term software protection, alas no
> > practical tools offers this today.
>
> SLH-DSA relies on the security of hashes, which I think we understand
> pretty well, so I=E2=80=99m not sure we need a hybrid with SLH-DSA. But t=
hen again,
> an Ed25519 pub key and signature are minuscule compared to SLH-DSA, so
> maybe that doesn=E2=80=99t matter.
>
> Note that there are some outside requirements that at least companies will
> not be able to ignore:
>
> - CNSA 2.0 (relevant for US government customers) does not allow SLH-DSA,
> only ML-DSA
> - Common Criteria certification requires elliptic curves >=3D 384 bits or
> RSA >=3D 3072 bits, ruling out ed25519
> - use of FIPS-certified primitives (historically a problem for solutions
> implemented in Go, or shipping their own implementation instead of re-usi=
ng
> OpenSSL, for example)
>
> Some of these rule out signify, for example.
>
> Any solution that hopes to be widely adopted should be able to address
> those, if necessary through cryptographic agility.
>
>
> --
> Clemens Lang
> RHEL Crypto Team
> Red Hat
>

Please be very careful with "cryptographic agility". Too many designs
follow JWT's example of letting the attacker specify the algorithm, and
then either allow "none" as a choice or mix symmetric and asymmetric modes
in the same feature.

https://soatok.blog/2022/08/20/cryptographic-agility-and-superior-alternati=
ves/

--00000000000071e73a0647671ce3--
