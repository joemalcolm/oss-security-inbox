X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4601" "Wednesday" "8" "May" "2019" "19:04:25" "+0900" "Seong-Joong Kim" "sungjungk@gmail.com" nil "126" nil "^Cc:" nil nil "5" nil nil (number mark "        sungjungk@gm May  8  126/4601  " thread-indent "\"Re: [oss-security] Re: fprintd: found storing user fingerprints without encryption\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Re: fprintd: found storing user fingerprints without encryption" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17464 invoked by uid 550); 8 May 2019 10:37:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24502 invoked from network); 8 May 2019 10:04:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=eaaWar3anjnmEHWHqWCptwTdQL08pA+ejt+2rRHP0SI=;
        b=eV9gLYuanW7LiqRTkCTWETFwblyO7cr+pzDiEcuN05VCVxgGYXntuPRm16VgsobWR4
         98J49H/XNcS9M4irvV+V0fBtUvXv2acnCHJ91AbmkAzTTtGGVlfETuC6aKH4IrOLR50O
         2NuIkHB/5ZI2+3eGt+5aL4SfPBxgIbUWQTBMdRi5MqBsfudM8xV5Tk1K5q3wtjijcIZk
         dJQn+B1XKjU91ZAUTtbmjvN/WVwOPVSLV+IifIDMLARfLoulLVfqcEytcNy34yoZdNto
         +vo5FcwI4O34XoA4IySWdcPNIe10T8tOvIt1qZlAtXj30tEds4wB/3NNPgf63PnGBa3Z
         4zeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=eaaWar3anjnmEHWHqWCptwTdQL08pA+ejt+2rRHP0SI=;
        b=EsdF92QbaPAMNsH45uzOTNtWnAWwmzqV+otnqZ79DrBjXSSu778F5jYphKevBdGCs2
         jhokZR3EpBdjO4JUyfWjO2p0MBWj9R5Ei+lHSLSYeGjeesNvB6oZg3piBvta2Uir8ysc
         e1gIEWyPCf2knt4eOgTlkAFZ+QBrff9AVPBjqdpxfHhtlOauz41q+8F2BOrzxacHGQQl
         evtLsZ0/K9sIgNZn/D2fd9NCACJKPjCFXMWAqG1zZLQNx19SOlh68kLwABDU4qbKVEzY
         apyCBWTQlVhODeke/cWLlQy2Xais0eENB9h/xNa0nJWvCPPo7juSe0GdlH+Xwvkz0QJ1
         t1bA==
X-Gm-Message-State: APjAAAUZyRXtQQitbKRL3rDIwmv/Do4t7vEYqEsGio3kijy/0ADkE05q
	x0AcBXTynJPF9KjnNJ5zDtSRTwF5PzyeWg2LxTMNEj2HF+LRmA==
X-Google-Smtp-Source: APXvYqxNVF2TSohqM+QaPWhhK/qR2FL9Wj9ZnCs91OqX0XkT8YAJlTQqVHN5v/FAZ72BtK7lFlNm7JnD2rEA7zc0yVA=
X-Received: by 2002:a50:907a:: with SMTP id z55mr20246412edz.140.1557309877091;
 Wed, 08 May 2019 03:04:37 -0700 (PDT)
MIME-Version: 1.0
References: <CAPZbWnf64OLnNjuJuzmmsVNSi8tOPX+Kaiy0Evd47dw+NQP3NQ@mail.gmail.com>
 <CAPZbWne7ggvhAc3q22e1kYgmiQi7L+OTTmzXh8YBybZrcDHvjg@mail.gmail.com>
 <alpine.LNX.2.02.1905081051030.29468@i8.fpunygfrxha.qr> <6fe9f0a9-01d6-369c-5146-23c7a6d9555c@thermi.consulting>
In-Reply-To: <6fe9f0a9-01d6-369c-5146-23c7a6d9555c@thermi.consulting>
Message-ID: <CAPZbWnfDh0dZ8wpnLN7OsXAkKrBPyfnt52Cnz=74t4XCVXG3BQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000077fd305885d761c"
Cc: oss-security@lists.openwall.com, Roman Drahtmueller <draht@schaltsekun.de>
Date: Wed, 8 May 2019 19:04:25 +0900
From: Seong-Joong Kim <sungjungk@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: fprintd: found storing user fingerprints
 without encryption
To: Noel Kuntze <noel.kuntze+oss-security@thermi.consulting>

--000000000000077fd305885d761c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

In Microsoft's Windows Hello, fingerprint data is kept locally on user's PC
in an encrypted way while Linux does not, even though they are based on
same fingerprint reader hardware.
Windows Hello may use Next Generation Cryptography (called CNG) to protect
and store user private data and encryption keys.
(see
https://support.microsoft.com/en-au/help/4468253/windows-hello-and-privacy-=
microsoft-privacy
)

Lenovo's Fingerprint Manager Pro also stores user's fingerprints encrypted
in its local environment.
In this regard, a flaw was discovered in Lenovo Fingerprint Manager Pro
(see CVE-2017-3762).
(see
https://thenextweb.com/security/2018/01/26/lenovo-fingerprint-manager-flaw-=
windows/
)

Moreover, FireEye researchers Tao Wei and Yulong Zhang outlined new ways to
attack Android devices to extract user fingerprints at Black Hat USA 2015
(see Fingerprints On Mobile Devices: Abusing and Leaking?).
(see
https://www.zdnet.com/article/hackers-can-remotely-steal-fingerprints-from-=
android-phones/
)


This vulnerability could allow a process to access the stored fingerprint
and then it can be reverted to natural-looking original fingerprint image.
It allows the attacker to impersonate a legitimate
authentication/identification by using stolen fingerprints.

Once fingerprint has been leaked, victims are leaked for the rest of life
since it lasts for a life.
Moreover, fingerprints are usually associated with every citizen=E2=80=99s =
identity
and immigration record.
It would be a hazard if the attacker can remotely harvest fingerprints in a
large scale.

What do you think of it?


2019=EB=85=84 5=EC=9B=94 8=EC=9D=BC (=EC=88=98) =EC=98=A4=ED=9B=84 6:29, No=
el Kuntze
<noel.kuntze+oss-security@thermi.consulting>=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=
=84=B1:

> Hello List,
>
> Am 08.05.19 um 11:19 schrieb Roman Drahtmueller:
> >>> Dear all,
> >>>
> >>> I would like to report a vulnerability of 'fprintd'.
> >>>
> >>> 'fprintd' does not encrypt sensitive information before storage.
> >>> *CWE-311: Missing Encryption of Sensitive Data*
> >
> > [...]
> >
> > This misses the point.
> >
> > * Encryption shifts the problem to protecting the symmetric key, which
> >   is the very same problem. =3D> Encryption solves other problems, but =
not
> >   this one.
> > * If you have sufficient privileges to access the fingerprint data,
> >   then you no longer need the data.
> > * You can't "safeguard" the fingerprint data by applying additional O/S
> >   controls such as SELinux, AppArmor, etc, you can only add more useful
> >   privilege transitions and protect against attacks that exploit
> >   implementation errors. Google "store fingerprint data ios android",
> >   there are suitable solutions.
> >
> > Mostly: Your fingerprint is not a secret like a password, it is a
> username.
> >
> > Since you can't change the fingerprint (biometrics problem), it is not
> very useful as a single authentication factor. Either you live with this,
> or you combine the fingerprint with a different authentication factor typ=
e.
> >
> > Roman.
>
> Another argument: You leave your fingerprint on everything you touch. The
> glass you drank from at the bar on Saturday evening? That has your
> fingerprints. Your front door? It has those, too.
> Fingerprints aren't sensitive information. The only entities attributing
> any sensitivity to them are the following: Court systems where fingerprin=
ts
> are allowed as evidence (although it's stupid because you can easily
> duplicate fingerprints) and companies/persons using fingerprints for
> authentication (which for the same reason as previously mentioned is not a
> good idea).
> And as Roman mentioned already, you can't change your fingerprints easily
> (Sand paper and acids are your friends, but that's not comfortable at all
> and compromises your ability to hold things in your hands. So don't to
> that.).
>
> If, for some reason, you still want to "securely" (at least with a higher
> level of security than plain text) store your fingerprint, you need to use
> a hardware backed kernel keyring that stores the encryption keys or use a
> hardware based security solution for storing the fingerprints in the first
> case. You likely won't find any such solution though that isn't broken
> already in some regard.
>
> Kind regards
>
> Noel
>
> --
> Noel Kuntze
> IT security consultant
>
> GPG Key ID: 0x0739AD6C
> Fingerprint: 3524 93BE B5F7 8E63 1372 AF2D F54E E40B 0739 AD6C
>
>
>

--000000000000077fd305885d761c--
