Received: (qmail 3739 invoked by uid 550); 2 Aug 2024 15:02:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26266 invoked from network); 2 Aug 2024 15:00:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=yngvason.is; s=google; t=1722610846; x=1723215646; darn=lists.openwall.com;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fmViqBkKF36MNqbPRAijcvjTkFpugKBhXmiPtv7B+N8=;
        b=LeY2ixAXaJ9pnwxhDkE5Ly4MELHHabvmFZodjmNFM/Tzfst3wXIoaqbtHkdxwAj8jP
         0B8YBlHJ1GnHpD4JCTlBXE4MFisPmCK/QAyVNRRNkmJDVuYlKWiXB71q9LQ8IhuzG3z8
         nM9oq1+62VstiHprd3e+o+RRqEo9zCFQ8HwiA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722610846; x=1723215646;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fmViqBkKF36MNqbPRAijcvjTkFpugKBhXmiPtv7B+N8=;
        b=ipLkN7wX4Z3hlC6DpEGRa2jTca9lnIoePbV5l+6+4GwwjOMYoV7VT9XkStXxEfwiDG
         NbB7UPFx7+1U8mCUIdMnkvtbFG+TKtnkk6hrxTwLkHZ42Ca2UBtzcniNkWJYiqHxcWuP
         KZgmP681fXCSMNv7Og+XSCg0yfnn4vZ7C9yfN7R9E/+vb+/RNFlSuCIU3EPIAbimsQMg
         lZQydG7DE2LTk+Hv9qmx3mxadXL5u5YwCkRD9x/uZV4OKiixbQT0k1/Cbej+8TQi9qTU
         wHXQ1xyO2UcIQitvx9pn4HpAap74LXlsJCMaC0vEL+zJAR3vB0b3gSRcEwZ72oY11CMM
         rTWQ==
X-Forwarded-Encrypted: i=1; AJvYcCXhGakohzpLERCrLI3sI/5x5xVQp1rsvYrdsc37U4vg+S0mdD4i2+9ciEXP58r/3wmVSPtDX40/siTtf+ACCC809VUqEO5kTc7yuUksbG84
X-Gm-Message-State: AOJu0YyGIswbA2cR1+EhcvTK+hsj4xnr6rr4uPZDNT9mXn5w8u+7rad+
	o2JzHYB6DExLbGTU9ugnD3ZbQJuwhhGpRERe/BCH+5J/zWDKEJLlts0TZGqzl8WaEvyyu2n2WTP
	IKyT10PS/rvVpxUFX0EspN0i5etOCGnQGdZF+VA==
X-Google-Smtp-Source: AGHT+IHs6UtsTKEWK84PbvSTifQICC7obsFDPWiwC+Wzjf6y5RVumQwoA4DcJjCe2rHdLjcpsGL/Km+LXYHMxtU//Ew=
X-Received: by 2002:a0d:c803:0:b0:672:b4dd:eb41 with SMTP id
 00721157ae682-6896077655bmr42060007b3.15.1722610846577; Fri, 02 Aug 2024
 08:00:46 -0700 (PDT)
MIME-Version: 1.0
References: <CAFNQBQwnnA_=sZCvYf=sRzz2SXfqJB5_JEFYjCC+pcGekN9WFw@mail.gmail.com>
 <20240802143913.GA11135@openwall.com> <SA1PR22MB2978E752B5A2B186F0B4D9B9B5B32@SA1PR22MB2978.namprd22.prod.outlook.com>
 <20240802145338.GA12405@openwall.com>
In-Reply-To: <20240802145338.GA12405@openwall.com>
From: Andri Yngvason <andri@yngvason.is>
Date: Fri, 2 Aug 2024 15:00:10 +0000
Message-ID: <CAFNQBQwdQMYSu4cO_WwiupeQJOEyK=mSgHikCNFK4qqbNjTM=A@mail.gmail.com>
To: Solar Designer <solar@openwall.com>
Cc: Dane Bouchie <dbouchie@iradimed.com>, 
	"oss-security@lists.openwall.com" <oss-security@lists.openwall.com>, Travis Wise <travis@wavesquared.com>, 
	"security@raspberrypi.com" <security@raspberrypi.com>, Simon Long <simon@raspberrypi.com>, 
	"Moritz M??hlenhoff" <jmm@inutil.org>, Salvatore Bonaccorso <carnil@debian.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Neat VNC Security Vulnerability

f=C3=B6s., 2. =C3=A1g=C3=BA. 2024 kl. 14:53 skrifa=C3=B0i Solar Designer <s=
olar@openwall.com>:
>
> On Fri, Aug 02, 2024 at 02:41:18PM +0000, Dane Bouchie wrote:
> > The client chooses the security type, so they can pass in "None" to the=
 switch statement. is_allowed_security_type() now prevents that.
>
> Oh, so was the issue a trivial authentication bypass?  Evidently, logic
> errors like this are easy to miss in plain sight.
>

Yes, and yes.

>         switch (type) {
>         case RFB_SECURITY_TYPE_NONE:
>                 security_handshake_ok(client, NULL);
>                 client->state =3D VNC_CLIENT_STATE_WAITING_FOR_INIT;
>                 break;
>
> Should the above RFB_SECURITY_TYPE_NONE support continue to exist in the
> code at all, if RFB_SECURITY_TYPE_NONE is never added to the allowed
> security types array that the code now pre-checks against?  Maybe it
> should be #if 0'ed out, leaving it only as an example for debugging?
>

It is added to the list if no authentication is required.

Regards,
Andri
