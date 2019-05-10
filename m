X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3973" "Friday" "10" "May" "2019" "19:31:34" "+0900" "Seong-Joong Kim" "sungjungk@gmail.com" nil "101" nil nil nil nil "5" nil nil (number mark "U       sungjungk@gm May 10  101/3973  " thread-indent "\"Re: [oss-security] Re: fprintd: found storing user fingerprints without encryption\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Re: fprintd: found storing user fingerprints without encryption" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12095 invoked by uid 550); 10 May 2019 10:36:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7660 invoked from network); 10 May 2019 10:31:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=yKSqxwLcUT/MneTAvQNDapfsHZQvL83Uelk8qpc7jZo=;
        b=FxxZ6qO/s7uiE68E/v06NmrXBDM8pIUpIqT1z22gVhNLmKHmAwlIH5uw2KSJ7ln2yw
         1xOGFuAyjuOTg62VG1SOeQ2oZm5EqOmX23mXieTFhVNwFV9zn7EmkuHYbR3BDtT4gk8q
         h1tJzXNgmI6Va/ay5O2NygQn54bOpgq5KkAsGUjg9jLxZSLGO3M5oz0+cJgGRFFetZyQ
         IzQWzITon9/k7xuT/PgKSbj7TYj7XY46qvUSYYijg9FC/9sVjRUHvGY0zGyzYbFcasX9
         /NBN+EuWsPEpxJOoOkdbc/FcVN6xiYMQuvbxuMuih7O9glsVM+mofYYw0ADf3zr9I6vg
         tq/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=yKSqxwLcUT/MneTAvQNDapfsHZQvL83Uelk8qpc7jZo=;
        b=m8njz097pqdMwZEE56YYr26TUqAcDj6D6PwHwiPQM3GWygvt492jIJkaDGct1gamuv
         bRfxpZW4SlFF5PChHnI5iDmzYVnkHcdDjO4utUITowcA64tljzQev1R3uId8QaFf/F2u
         MIVgg5knQS7L/XY+Ue567RZSYkXRY5C7dpx0x0eswNgUXxCzB2N8qcqisjj6lACRgevK
         mWN+PWObygkROaFpmf9D/o386GuadR7HU+zU7bDfpILSgTERshDqJ4UO+3nTx6qkTSfy
         hmPl7OmtomPrCbxmu/CZpfbbTNlULEzTJrtsoPbgbFGTGZS0n+jfMSenbegDVH+SdR5T
         XvdA==
X-Gm-Message-State: APjAAAVMPjufa18P5DrB/alLBDKpVuPwnt/qJ2NAXAqaKmL8f4if0q6R
	0G718ToA0FpRqiW3Ko9aZv8Ul2suY6k5iDWg7nTk+NOBIaQ=
X-Google-Smtp-Source: APXvYqyaO/nfzznRZv6LnNi4M5Rx30tOOpzirzQhLKX7vBe/qspQ5JkLIR3ZAHrvfIRTZXkCAbk2fy3PAfOD26zorOM=
X-Received: by 2002:a50:a51c:: with SMTP id y28mr3324712edb.280.1557484305341;
 Fri, 10 May 2019 03:31:45 -0700 (PDT)
MIME-Version: 1.0
References: <CAPZbWnf64OLnNjuJuzmmsVNSi8tOPX+Kaiy0Evd47dw+NQP3NQ@mail.gmail.com>
 <CAPZbWne7ggvhAc3q22e1kYgmiQi7L+OTTmzXh8YBybZrcDHvjg@mail.gmail.com>
 <alpine.LNX.2.02.1905081051030.29468@i8.fpunygfrxha.qr> <6fe9f0a9-01d6-369c-5146-23c7a6d9555c@thermi.consulting>
 <CAPZbWnfDh0dZ8wpnLN7OsXAkKrBPyfnt52Cnz=74t4XCVXG3BQ@mail.gmail.com>
 <dc36d64e-ac76-29f7-5d54-225b54c2d707@thermi.consulting> <CAPZbWnfVUF-YR21kg=1c7Yh8wW=QBhOd0hW+2pvMjf+eyA=KUg@mail.gmail.com>
 <CAPZbWncGi8L7OkotuHnajwKutYEmPnY8oYc6gwG8yeMY0wPTNA@mail.gmail.com>
 <alpine.LNX.2.02.1905081352280.25606@i8.fpunygfrxha.qr> <872-1557480054.563908@mmCb.bu1W.zlxn>
In-Reply-To: <872-1557480054.563908@mmCb.bu1W.zlxn>
From: Seong-Joong Kim <sungjungk@gmail.com>
Date: Fri, 10 May 2019 19:31:34 +0900
Message-ID: <CAPZbWnfSknrMDTR+5wjGO6Bgcym8uLa60etn7NXab987tE7quQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000c360190588861227"
Subject: Re: [oss-security] Re: fprintd: found storing user fingerprints
 without encryption

--000000000000c360190588861227
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I think my initial suggestion is not really good enough.

Currently, there is no way to defend this issue except for supporting
hardware, such as TPM or USB token, rather than encryption by software in
Linux environment.

If necessary, how about implementing interfaces to talk with hardware
security module, such as TPM or PKCS#11 compatible devices.

Otherwise, users should avoid using fingerprint
authentication/identification.

Any idea?

Sincerely,

2019=EB=85=84 5=EC=9B=94 10=EC=9D=BC (=EA=B8=88) =EC=98=A4=ED=9B=84 6:22, h=
alfdog <me@halfdog.net>=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=84=B1:

> Roman Drahtmueller writes:
> > [...]
> >
> > > I am not insisting that encryption key should be on the disk or is
> > > encrypted with a static key that is embedded in the binary.
> > > Instead, we can make fprintd to use a TPM, if available.
> >
> >
> > The problem persists: The encryption key must be available for the FP
> > data to be accessible, and so it is for an attacker. It doesn't matter
> > where you store the key.
> >
> > A TPM (and, transitively, products that encrypt with TPM-sealed or
> > TPM-bound key material) is good for the situation where the system is
> > physically stolen while powered down (or the drive fails). But that's
> not
> > our problem here.
>
> Therefore dedicated tamper-proof IC-designs+embedded software
> exist, that perform the biometry template storage and matching
> on the chip (MoC). There are some vendors out there providing
> such hardware + MoC-algorithms, but mainly fingerprint and some
> iris biometry variants seem certified so far. These are intended
> for access cards or USB-tokens in two or more-factor authentication
> schemes in a 1-to-1 match fashion, not as centralized 1-to-many
> matching schemes also deployed rarely (e.g. in Japan where they
> really like biometrics as long as you do not have to touch the
> biometry reader ...).
>
> > [...]
> >
> > > Otherwise, but even though it is not perfect, it would be better to
> apply
> > > the fingerprint data protection, such as keyring or access control,
> rather
> > > than raw fingerprint template.
> > > FYI, Windows Hello might use Next Generation Cryptography (called CNG)
> to
> > > protect and store user private data and encryption keys.
> >
> > There are not many options left to solve the stored credential problem,
> > and it should be clear that saving a file, encrypted or not, is not the
> > solution.
> >
> > One possible solution is to use a hash algorithm, potentially
> cost-based,
> > to derive a bit string (that is suitable for comparison with the
> > persisted authoritative string) from the output of a fingerprint reader.
>
> At the momenent I do not know of any algorithms providing sufficient
> entropy binary hash data from fingerprints in a reliable way.
> Changing extraction to deliver more entropy results in higher
> FNR during authentication step later on, I think.
>
> > [...]
>
> When working on a project to provide highest security MoC solutions
> with Linux (for other type of biometry, not fingerprints), Nitrokey
> was offering an open-source USB-token hardware (even the PCBs are
> open source, if I remember correctly). That platform seemed closest
> to be a good starting point for developing such an open source MoC
> biometry solution as they sell also one part with a certified tamper
> proof trusted element that seemed to allow performing biometry
> template storage and comparison on chip if programmed correctly.
>
> Time in the project was too limited to explore, if that hardware
> would REALLY allow to upgrade it to a powerful, highly secure but
> still affordable open source biometry system for use by journalists,
> human rights activists, NGOs ... and nerds, e.g. for password+biometry
> secured full disk encryption schemes.
>
> > [...]
>
> hd
>
>

--000000000000c360190588861227--
