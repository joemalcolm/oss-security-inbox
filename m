Received: (qmail 5827 invoked by uid 550); 31 Dec 2025 07:17:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20079 invoked from network); 31 Dec 2025 07:00:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767164390; x=1767769190; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M8Uubbn1FNISbeIHQ7T8/QmJJag2cxpcWxSLWJU4KNA=;
        b=UNIBa9hdSySjraZkNv/Z2Rt+GnQj+UTRANK7A1oX/NZ2AA1wbG9neyeHXjm0NYRW80
         FjwQ/lcwexmZiF0YoXHUTSzktY2AnzPDrqRdFIe2sWPWEy71iTn70qw+cdWYVcU8VkLB
         dnDGoM9pXVYvkn0tG10S8MDJko+WYynj3kLDub+4lkdka4Tf0DH9XO69WZJ6vBJKJfVA
         c+IlFpYKgTq2cmMV1xDoJyGDUqXmO85X1o0CRA4c00O3azoJfxxmVIaqAl8j2xlWvpSF
         2GvaBDkDvcpW0Dfq/jlD61jEVrGelrwdW3r8kURJByim4HqfQhrmjROpsVuT4f4okhCe
         btaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767164390; x=1767769190;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=M8Uubbn1FNISbeIHQ7T8/QmJJag2cxpcWxSLWJU4KNA=;
        b=NrDQsU+jYNV8YfO2Auq6K2CQm1uNJaIEvHS8c+soibEbyidPPsQleBNgTk9dIG9APD
         Wqly+feVkKBIo4T3maUuBniX7B2k93FLpKWYNEjPiNCypeSgv8N5yKALLYxDlTVRLKpZ
         7WJkikPYEroLnTLIMpkZ5im5rEDc1DLl5PTwZEseb4SuUqW6fsSfru9xO+LLbYMabAuU
         9fSK27jhxXv6XdOVOFI9TFOyPehoLAUFqPkV8yASy70nxYwiTDdmDs/ZfSlMiZ7s3Hry
         x5+eRM6CzOkwibvTS00Ur/2bzp3nTKk42N+gGeBR/dFVSDdQFO0CbXrVoCmBYY7ObBA8
         kvlw==
X-Gm-Message-State: AOJu0YxtN3S/gCqoe7n2gi0gZ89rgQtZnYpupF84RZCSqS7Xfqa8mHH8
	ug5Ndcg0BsQm5vH91NhoKbmsJdBozj9wfYTzEhFKUsWUPHivQYA5gvOfjDlFZiAD7d8NEKf1WOG
	POySUjNf5kcMUc8xMXCZvltfZWenZPbkMhvIQ
X-Gm-Gg: AY/fxX5SfgYePL8rAVDDyYijFYiwy5AtCkYg9eL20OydHmmY50ATsUU67a2EXpdHiG1
	39IZGey/7C/VTXXcL0g01bh99kwHyPDLPxyjmNlOiLcA8Ccz4V0zZWu8aITD+Jon07tmPrjyL3L
	pdG+w11ibuJVW+9kGyl/rGpRB3IVcpkg3wH14m2mUwQRu539AQhhFXm1OfdJ+fI1duw1GxjFGxu
	KUNew48Fh8u3EyV9qKFbey6+ntRyMRrxnjqdbqBSh54AcXgoLZEOWDrzRzJYfmT3OZIUSjCyZNU
	rvCNMtZunm8Yy+bWbE7LJiypESLMTIKH+15wlVJyI3vLo5SS5URJxpE=
X-Google-Smtp-Source: AGHT+IEg7RtBp5VuIBZEf8sVbzbx5K/NVvMJGKSRUJVEVk5h2wM7XyuUT/dcJ2fqAkPWOCFPZ3KUUVGJZJODKlrvrMA=
X-Received: by 2002:a05:651c:1507:b0:382:4ed0:2b9e with SMTP id
 38308e7fff4ca-3824ed036f4mr64879071fa.35.1767164389625; Tue, 30 Dec 2025
 22:59:49 -0800 (PST)
MIME-Version: 1.0
References: <3318308d-70b1-4ab3-9cca-ab4ea67dd27d@gmail.com>
 <20251228042744.GA629@openwall.com> <0009d6cc-143e-41e6-b240-eb526a9cb306@gmail.com>
 <d892df77-a488-4a51-af35-697897e3984e@gpg.fail> <c3b701f4-057b-41ca-9848-1e205e79fd48@gmail.com>
In-Reply-To: <c3b701f4-057b-41ca-9848-1e205e79fd48@gmail.com>
From: Jeffrey Walton <noloader@gmail.com>
Date: Wed, 31 Dec 2025 01:59:12 -0500
X-Gm-Features: AQt7F2rQJwU-5MKBpmC2qWVm0FpNBDl2zc9EU9uznfSG2etaqBBeGI9rU-sdJHY
Message-ID: <CAH8yC8k5f0aRjGjP4ADDWG3iocN_mgu08P2n7KTQ+W-5Oc4Atg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Many vulnerabilities in GnuPG

On Tue, Dec 30, 2025 at 11:54=E2=80=AFPM Demi Marie Obenour
<demiobenour@gmail.com> wrote:
>
> On 12/29/25 11:57, Lexi Groves (49016) wrote:
> > Hi! Thanks for the comment. Some clarifications from us:
>
> (snip)
>
> >  > > Given a signed document, you can either check the signature or
> > check the signature and recover the original document. To check the
> > signature use the --verify option. To verify the signature and extract
> > the document use the --decrypt option. The signed document to verify and
> > recover is input and the recovered document is output.

At the risk of splitting hairs (I did not see someone else point it out):

  1. "check the signature" - signature scheme with appendix (SSA)
  2. "check the signature and recover the original document" -
signature scheme with recovery (SSR)

SSA (item 1) requires two objects -- the original document and the
signature.  The verification process needs both the document and the
signature objects.  A detached signature scheme is a SSA.

SSR (Item 2) requires one object -- the signature over the document.
The verification process can extract the original document.  This is
sometimes (usually?) what people mean when they say "encrypt with the
private key".

> >  > > ```
> >  > > blake% gpg --output doc --decrypt doc.sig
> >  > > gpg: Signature made Fri Jun  4 12:02:38 1999 CDT using DSA key ID
> > BB7576AC
> >  > > gpg: Good signature from "Alice (Judge) <alice@cyb.org>"
> >  > > ```
> >
> > We assumed that the manual was the source of truth and assumed that
> > using `--decrypt` was the standard way to do this; we may have been
> > biased here, because apparently the common knowledge about this
> > (according to some other documentation that we did not see) was using
> > `--output/-o`. However, due to the nature of the attack, setting the
> > wrong output file while hashing the correct file, `--output` works the
> > same way:
> >
> > ```
> > $ gpg --output x --verify msg.txt.sig msg.txt
> > gpg: Signature made Mon 29 Dec 2025 02:59:11 PM CET
> > gpg:                using EDDSA key EE6EADB4CBB063887A3BE2B413AEBEC571B=
A1447
> > gpg: Good signature from "39c3 demo <demo@gpg.fail>" [ultimate]
> > $ cat msg.txt
> > asdf
> > $ cat x
> > Malicious
> > ```
>
> Does this work with 'gpgv'?
>
> I think most software update tools use `msg.txt` directly and so are
> not vulnerable, *unless* the signature uses text mode in which case
> a different attack might work.  Can you see if APT is vulnerable?

For completeness, the scheme Debian and APT use is documented in the
Debian manual.  See Section 7.5.1 at
<https://www.debian.org/doc/manuals/securing-debian-manual/deb-pack-sign.en=
.html>.

Jeff
