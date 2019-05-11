X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4857" "Saturday" "11" "May" "2019" "09:20:12" "+0900" "Seong-Joong Kim" "sungjungk@gmail.com" nil "120" nil nil nil nil "5" nil nil (number mark "U       sungjungk@gm May 11  120/4857  " thread-indent "\"Re: [oss-security] Re: fprintd: found storing user fingerprints without encryption\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Re: fprintd: found storing user fingerprints without encryption" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20282 invoked by uid 550); 11 May 2019 10:16:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8056 invoked from network); 11 May 2019 00:20:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=49MUI3PtpxiGBPe8XU50b6fbtFEFnXTZ00POIMNuUeo=;
        b=j5lZg3HTTmhvNuQNxEKST19ZkjUhEByGT9SjG0L6PGy40XzSrtMepsvmmV7uSZBUe3
         oKUdV34g7RM5xPCTpA+aVtiEUakiVGS8RtjmuXBrHfB+j6FW6oo/fELzkikiw8Z1v304
         1Z47iL6c34ICHnK1ZL1ZVPSXXk+mO8MQL4tK+G2BerQe1X63F3BoZe3T7lBLYgmGwE38
         1/h5s/lYHozMEDPmb1fSoxBVh5EwYAn3CynmRzaxf2p5YTJdDwoYWFpjivXm7vZehmT5
         NQb7MWIMj22kkzp8v39Fr18caBqexGu4z49vKzQ9X15VJCZxYyvv0Ew4rVHBfLAt2JMv
         opOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=49MUI3PtpxiGBPe8XU50b6fbtFEFnXTZ00POIMNuUeo=;
        b=TfeJPC7yRMRWvQKb48tODU26VhgZ8cZfHA8u2ovYSmyHa2W78F7ylZMFhffP3X253n
         9GeD1XYKLLQVpr7zvtOXV1770+Nb2K6jApLJ1XHMVnz2W8Dt1JVy8ATmO162UtdYMevT
         zjyo+P0fRo/XaWD2aeJ93tzVYfXFaK6ClkZs/AMJrCWnDTplIelirepGBktWO97Edkds
         6eBXbmPLC5UhetH77LNYUfem37C6pGDPUtjfdng33YUL/wlkCPg7CnyaeB4Lhmad+w17
         gPmxRws8HRVRDlt92tLBu+wGxn6XmSW4zckX/KiSMHXCAr7NniXXK+iWLDxtCA09jfVa
         It2w==
X-Gm-Message-State: APjAAAXSOucL3tYS8yQOQSf+Ve5WQ3RAgNzYinjjZRV0rcuCET/c9SaL
	XPiCRQJ/+rEVuYZSSVsheY6NGLTKg5P3FEmzHVMnYw==
X-Google-Smtp-Source: APXvYqyxReXSx0tdrZtqd1g80IUTX1mj+Ih5/87JGDamvn3sryIO0NY1cvaf2wv417sv9n8SMe+fn+YYLrwMBLd+DG8=
X-Received: by 2002:a50:a51c:: with SMTP id y28mr8048010edb.280.1557534025026;
 Fri, 10 May 2019 17:20:25 -0700 (PDT)
MIME-Version: 1.0
References: <CAPZbWnf64OLnNjuJuzmmsVNSi8tOPX+Kaiy0Evd47dw+NQP3NQ@mail.gmail.com>
 <CAPZbWne7ggvhAc3q22e1kYgmiQi7L+OTTmzXh8YBybZrcDHvjg@mail.gmail.com>
 <alpine.LNX.2.02.1905081051030.29468@i8.fpunygfrxha.qr> <6fe9f0a9-01d6-369c-5146-23c7a6d9555c@thermi.consulting>
 <CAPZbWnfDh0dZ8wpnLN7OsXAkKrBPyfnt52Cnz=74t4XCVXG3BQ@mail.gmail.com>
 <dc36d64e-ac76-29f7-5d54-225b54c2d707@thermi.consulting> <CAPZbWnfVUF-YR21kg=1c7Yh8wW=QBhOd0hW+2pvMjf+eyA=KUg@mail.gmail.com>
 <CAPZbWncGi8L7OkotuHnajwKutYEmPnY8oYc6gwG8yeMY0wPTNA@mail.gmail.com>
 <alpine.LNX.2.02.1905081352280.25606@i8.fpunygfrxha.qr> <872-1557480054.563908@mmCb.bu1W.zlxn>
 <CAPZbWnfSknrMDTR+5wjGO6Bgcym8uLa60etn7NXab987tE7quQ@mail.gmail.com>
In-Reply-To: <CAPZbWnfSknrMDTR+5wjGO6Bgcym8uLa60etn7NXab987tE7quQ@mail.gmail.com>
From: Seong-Joong Kim <sungjungk@gmail.com>
Date: Sat, 11 May 2019 09:20:12 +0900
Message-ID: <CAPZbWncFa4YvkvGUEYW5L=50-brSWt_aBKthkCzC+5zd4Vk+WQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000004991fc058891a6bd"
Subject: Re: [oss-security] Re: fprintd: found storing user fingerprints
 without encryption

--0000000000004991fc058891a6bd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Additionally,  I think that fingerprint reader is widely used on laptop,
rather than standalone product for PC.
It is hard to find standalone product in supporting device officially,
except for Digital Persona U.are.U and Eikon Touch series.
(see https://fprint.freedesktop.org/supported-devices.html)
Most of them are forms of fingerprint module or no longer sell the
standalone product.

Currently, most of major vendors' laptops, including Dell, HP and Lenovo,
have been equipped with both embedded fingerprint module and TPM.
Thus, I suggested implementing interfaces to talk with hardware security
module.

Sincerely,

2019=EB=85=84 5=EC=9B=94 10=EC=9D=BC (=EA=B8=88) =EC=98=A4=ED=9B=84 7:31, S=
eong-Joong Kim <sungjungk@gmail.com>=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=84=B1:

> I think my initial suggestion is not really good enough.
>
> Currently, there is no way to defend this issue except for supporting
> hardware, such as TPM or USB token, rather than encryption by software in
> Linux environment.
>
> If necessary, how about implementing interfaces to talk with hardware
> security module, such as TPM or PKCS#11 compatible devices.
>
> Otherwise, users should avoid using fingerprint
> authentication/identification.
>
> Any idea?
>
> Sincerely,
>
> 2019=EB=85=84 5=EC=9B=94 10=EC=9D=BC (=EA=B8=88) =EC=98=A4=ED=9B=84 6:22,=
 halfdog <me@halfdog.net>=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=84=B1:
>
>> Roman Drahtmueller writes:
>> > [...]
>> >
>> > > I am not insisting that encryption key should be on the disk or is
>> > > encrypted with a static key that is embedded in the binary.
>> > > Instead, we can make fprintd to use a TPM, if available.
>> >
>> >
>> > The problem persists: The encryption key must be available for the FP
>> > data to be accessible, and so it is for an attacker. It doesn't matter
>> > where you store the key.
>> >
>> > A TPM (and, transitively, products that encrypt with TPM-sealed or
>> > TPM-bound key material) is good for the situation where the system is
>> > physically stolen while powered down (or the drive fails). But that's
>> not
>> > our problem here.
>>
>> Therefore dedicated tamper-proof IC-designs+embedded software
>> exist, that perform the biometry template storage and matching
>> on the chip (MoC). There are some vendors out there providing
>> such hardware + MoC-algorithms, but mainly fingerprint and some
>> iris biometry variants seem certified so far. These are intended
>> for access cards or USB-tokens in two or more-factor authentication
>> schemes in a 1-to-1 match fashion, not as centralized 1-to-many
>> matching schemes also deployed rarely (e.g. in Japan where they
>> really like biometrics as long as you do not have to touch the
>> biometry reader ...).
>>
>> > [...]
>> >
>> > > Otherwise, but even though it is not perfect, it would be better to
>> apply
>> > > the fingerprint data protection, such as keyring or access control,
>> rather
>> > > than raw fingerprint template.
>> > > FYI, Windows Hello might use Next Generation Cryptography (called
>> CNG) to
>> > > protect and store user private data and encryption keys.
>> >
>> > There are not many options left to solve the stored credential problem,
>> > and it should be clear that saving a file, encrypted or not, is not the
>> > solution.
>> >
>> > One possible solution is to use a hash algorithm, potentially
>> cost-based,
>> > to derive a bit string (that is suitable for comparison with the
>> > persisted authoritative string) from the output of a fingerprint reade=
r.
>>
>> At the momenent I do not know of any algorithms providing sufficient
>> entropy binary hash data from fingerprints in a reliable way.
>> Changing extraction to deliver more entropy results in higher
>> FNR during authentication step later on, I think.
>>
>> > [...]
>>
>> When working on a project to provide highest security MoC solutions
>> with Linux (for other type of biometry, not fingerprints), Nitrokey
>> was offering an open-source USB-token hardware (even the PCBs are
>> open source, if I remember correctly). That platform seemed closest
>> to be a good starting point for developing such an open source MoC
>> biometry solution as they sell also one part with a certified tamper
>> proof trusted element that seemed to allow performing biometry
>> template storage and comparison on chip if programmed correctly.
>>
>> Time in the project was too limited to explore, if that hardware
>> would REALLY allow to upgrade it to a powerful, highly secure but
>> still affordable open source biometry system for use by journalists,
>> human rights activists, NGOs ... and nerds, e.g. for password+biometry
>> secured full disk encryption schemes.
>>
>> > [...]
>>
>> hd
>>
>>

--0000000000004991fc058891a6bd--
