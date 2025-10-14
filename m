Received: (qmail 26622 invoked by uid 550); 14 Oct 2025 23:18:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26589 invoked from network); 14 Oct 2025 23:18:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760483897; x=1761088697; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0GVGHGUX5dFqF+ntQpoKNBswBtUvE7h9wQawdjC9YUw=;
        b=TRcaCin99QUjzlZYET7Ij7rGer0ycSyGkUPiV4+uJgenNplYddjGAje3bQZvE3MvXq
         A6JNnw+0m7FB/+sS9XvWCS1PDQCgcnPjl8eBCSfezc1OYFqjL9cOk1FF2caynil7zSqF
         sMmkGaVGiFNCLbOnfjD0JahN7PlWEeVSg+Ly+NGsRsp5kBAYihTqHoYQ2pBuO/Fr4qjh
         S2YLTfyznDmUM9gPa7VV41Uxme6FZ14HNj/o9e5fbSrPM0NQYQ+b1RmAyJNf1DsgIoEm
         6NqyEIoPJNIw/fiwSeaAfMXkToyt8acTiek0HBJJ7d+1ak7nW67Ccw0UwFBLyIyLKg1S
         CXMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760483897; x=1761088697;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0GVGHGUX5dFqF+ntQpoKNBswBtUvE7h9wQawdjC9YUw=;
        b=RKv/3/fkWXo9vebqGg6A9O+0FOcbNMf4tgVBibPeF6eInwhN3zA/HATx3H+UlSLqba
         vHxWv5SRCfIeyap/9+apWv5WfiRpbXRk+n6xXVY6OtP6JYabn2geKJWkX2ngvGetgiBB
         /5d6AN9o1Yjt/kBi2F84ZoeLpWH4lls1V9mSK76AVkWaHUT0mcURiGIPiLWEazhY8zPA
         8BFFEUpYAFAXoKa/VX6rh1ljv09NWRKm4qBFCYXv4aOskWAXsxqs+gL1529sFAXam8qQ
         9+hOOz15mSOvK0yTSPMrkAp9pkUwABoDYZ7iVB9h/zcbApl8TytsSw7YYsAXW6e/IZOO
         17Ag==
X-Gm-Message-State: AOJu0Yz8ngehjw9uReXg0GNvEYP/Nf7eGyFFFRyffMW/TX1+qMtQODQI
	6s8OETjkJiGpxT1X77WZuiU+GmyUDdJWBS7C5BL5pXgqPcybIHYwCWJ1jlReGouus094I+bOIel
	6nPsSElq4fzY/fcttKgL2oOHalybKUuiy6nBj
X-Gm-Gg: ASbGncua0u5zbszOmY3ANuSjvFYVve15881yaf8LQiwi2yYDNiTGJla8sTkiHNPMwuJ
	90w6KfRUcQGJDC/nTtTupDRh/uxKUTVtkuEMseXENo11RaMZCmRNPbsdsOj2ff3Q24vgeNjTUrt
	/6SWR6Jl8SOnvhuS+NLdaFNf7SiHuc9JFeVWCUQBCE2/M0Y9bVIcs8wawpwLKw7BHIImrx/z8ga
	qdXt+8isDz4eZ+so6D/q3g84qQrCmpyQm9l/zVWmq2UpgcKnxRBzxtbT0VRAq5XUTJqJJXoVZH8
	cCvFklxxBYGm
X-Google-Smtp-Source: AGHT+IEoVuwVtFD655iSBqFtlefHh3OAOoyRfXp2CosTygQNs1VMbm3evPxNJuufBtcl/AEuTdHDfGpHqLAXgPsZbbc=
X-Received: by 2002:a53:cbc1:0:b0:636:fd5:ed0a with SMTP id
 956f58d0204a3-63cbe0f5f90mr21018936d50.16.1760483896829; Tue, 14 Oct 2025
 16:18:16 -0700 (PDT)
MIME-Version: 1.0
References: <fd686bd9-d2a7-89f9-f438-7ed38e127591@iki.fi> <CAH8yC8nZDxYF1NyGjHn8yOADBioNwPB4WTjUZGPmbRTvPLq2tw@mail.gmail.com>
 <ME0P300MB0713AA2595680B38B28287AEEEEAA@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
 <CAFRnB2XECXsKDSuvBCeWHwC9apboBdvhYCEFrUo2TuonHs1yFw@mail.gmail.com>
 <CAF8qwaB=b0EDUTckx-ZHdAHkj-_kN9xPmfVFJP8XxCUq-W9Q5Q@mail.gmail.com> <20251014204248.659865b9@hboeck.de>
In-Reply-To: <20251014204248.659865b9@hboeck.de>
From: Alex Gaynor <alex.gaynor@gmail.com>
Date: Tue, 14 Oct 2025 19:18:05 -0400
X-Gm-Features: AS18NWAzD5Z-Z2cJJKBa2NGxW3J9R-as7jW7fositeTRWDoXYi7B6h69h3mqgac
Message-ID: <CAFRnB2Wqp_OKMVwzxQBy0C7yE3iW+_Eqd_fzH3jDvAz0emzeGA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] BoringSSL private key loading is not constant time

Hey Hanno,

My understanding is that historically OpenSSL may have had this bug,
though I'm sure it's not alone. (We almost introduced this bug into
pyca/cryptography, but caught it before releasing.)

I think for pyca/cryptography we'd also be quite interested in
emitting a warning for this case:
https://github.com/pyca/cryptography/issues/13672

Alex

On Tue, Oct 14, 2025 at 7:11=E2=80=AFPM Hanno B=C3=B6ck <hanno@hboeck.de> w=
rote:
>
> Hi David,
>
> Thanks for the explanation. At least for me, this is different from how
> I initially interpreted this issue.
>
> It would appear that the ideal solution would be to phaseout such
> malencoded EC keys. Do you have any idea how prevalent they are, and
> which implementations created them?
>
> I wonder if there are steps that can be done to get to a deprecation.
>
> Applications could emit warnings when loading such keys, and APIs could
> provide an optional flag that rejects them if application programmers
> want that. That could lead to a detection of existing such keys and
> ideally remaining implementations creating them would be recognized
> and fixed. Possibly, this could allow deprecation in a few years.
>
> Any thoughts on that? Any implementors of EC key using software that
> might want to go in that direction?
>
>
> --
> Hanno B=C3=B6ck
> https://hboeck.de/



--=20
All that is necessary for evil to succeed is for good people to do nothing.
