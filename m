X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["9309" "Wednesday" "8" "May" "2019" "20:50:33" "+0900" "Seong-Joong Kim" "sungjungk@gmail.com" nil "243" nil "^Date:" nil nil "5" nil nil (number mark "U       sungjungk@gm May  8  243/9309  " thread-indent "\"Re: [oss-security] Re: fprintd: found storing user fingerprints without encryption\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Re: fprintd: found storing user fingerprints without encryption" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15665 invoked by uid 550); 8 May 2019 11:56:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11346 invoked from network); 8 May 2019 11:50:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=umY9baSZ8U22kPUa5iT9UckzzhTpNVjG8gW2YhsErJ4=;
        b=t/hGrU7WjSiWUQhr1LyE++LpoP3zp6Xz4+Xw7IaE10OMXZkAsF9iqOcenGxlxWBHCK
         4XsdjG+zSU9fRe9nNL2Z/yy45DJQQbbreGjcQjIfkboHtyj+9hbN85wazoODL0Fi0uTM
         z8OLE8kG9SBgDUM3YvHhWh/WnCqgTu55L0Rmdmm4K9abM6yzsmcfbWbxxBTiuXau/QiM
         eBHm/1Uf/GjVM7oaVmpabS5B+a3mg09+ggAQSYtHPJHbuWGauuF7qDIEnpyyYDHhd1z9
         uRDCpCbKaSxTiwGhZYsN2OwdDITKP9x/n8HBZTBt0jL4q5td6eDglgk1gE/lKBBQhLIv
         WPvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=umY9baSZ8U22kPUa5iT9UckzzhTpNVjG8gW2YhsErJ4=;
        b=n7EZ21mA3e8A9X8XKHiW6J8ItsSWPlIT7atp2znV8oACHvaOwBdo5JLrZGUCdbchGF
         YOffy6wIrCVyVD6QEgjqFQiayfEjnwhtcfwIZsDuNGKTpBsPItl3VsUZPwJq3smI+j2e
         3IBDKmb3byaTi6K+iMullH9sl0Se2aAASZyULrmufswuw0NoPtPIkDbwNE/QAPI4WP8N
         ys35VRjyPQcPmIl5zbY1gWsbabZRGYQmPb6Ug/C59nLYpGyhwK6an1VLGhU8P+5mDPXX
         I24TjICv4yoPoaRivNMqaq2im/OSaP2CkYOGlaz+MDSVUmJpH900FiNccDGqkjNyhOup
         uk+A==
X-Gm-Message-State: APjAAAXDHk9GQNuv6u/SNXxEKXnmuZwP1uCiwMBnARAGHdzDvuSBK1Qg
	3vrSaJwikSeeQI/x+7iavmX/QfZAWIQmcZGVehQ/9i1MPsM=
X-Google-Smtp-Source: APXvYqzLONqQZ67Gp42MkpsmGSmloqwd7xadNwX8dzLONg/Am9Do0sprI99BOOwLuq8bd4IBv322+uagwC6vBYrhbWc=
X-Received: by 2002:a50:9297:: with SMTP id k23mr39405350eda.280.1557316245154;
 Wed, 08 May 2019 04:50:45 -0700 (PDT)
MIME-Version: 1.0
References: <CAPZbWnf64OLnNjuJuzmmsVNSi8tOPX+Kaiy0Evd47dw+NQP3NQ@mail.gmail.com>
 <CAPZbWne7ggvhAc3q22e1kYgmiQi7L+OTTmzXh8YBybZrcDHvjg@mail.gmail.com>
 <alpine.LNX.2.02.1905081051030.29468@i8.fpunygfrxha.qr> <6fe9f0a9-01d6-369c-5146-23c7a6d9555c@thermi.consulting>
 <CAPZbWnfDh0dZ8wpnLN7OsXAkKrBPyfnt52Cnz=74t4XCVXG3BQ@mail.gmail.com>
 <dc36d64e-ac76-29f7-5d54-225b54c2d707@thermi.consulting> <CAPZbWnfVUF-YR21kg=1c7Yh8wW=QBhOd0hW+2pvMjf+eyA=KUg@mail.gmail.com>
In-Reply-To: <CAPZbWnfVUF-YR21kg=1c7Yh8wW=QBhOd0hW+2pvMjf+eyA=KUg@mail.gmail.com>
Message-ID: <CAPZbWncGi8L7OkotuHnajwKutYEmPnY8oYc6gwG8yeMY0wPTNA@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000986f1b05885ef188"
Date: Wed, 8 May 2019 20:50:33 +0900
From: Seong-Joong Kim <sungjungk@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: fprintd: found storing user fingerprints
 without encryption
To: oss-security@lists.openwall.com, Drahtmueller <draht@schaltsekun.de>, 
	Noel Kuntze <noel.kuntze+oss-security@thermi.consulting>

--000000000000986f1b05885ef188
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I am sorry to say that I am not familiar with this mailing list.

I am not insisting that encryption key should be on the disk or is
encrypted with a static key that is embedded in the binary.
Instead, we can make fprintd to use a TPM, if available.
Otherwise, but even though it is not perfect, it would be better to apply
the fingerprint data protection, such as keyring or access control, rather
than raw fingerprint template.
FYI, Windows Hello might use Next Generation Cryptography (called CNG) to
protect and store user private data and encryption keys.

> I think that this is similar approach with Lenovo Fingerprint Manager,
Microsoft Windows Hello and other products.

Have you read the following papers about fingerprint image reconstruction
technology from standard templates?
[1] R. Cappelli et al., =E2=80=9CFingerprint Image Reconstruction from Stan=
dard
Templates=E2=80=9D, IEEE Trans. on Pattern Analysis and Machine Intelligenc=
e,
vol.29, no.9, pp.1489-1503, 2007.
[2] A. Ross et al., =E2=80=9CFrom template to image: Reconstructing fingerp=
rints
from minutiae points=E2=80=9D, IEEE Trans on Pattern Analysis and Machine
Intelligence, vol.29, no.4, pp.544-560, 2007.
[3] R. Cappelli et al., =E2=80=9CCan Fingerprints be reconstructed from ISO
Templates?=E2=80=9D, IEEE ICARCV 2006.
[4] J. Feng et al., =E2=80=9CFingerprint Reconstruction: From Minutiae to P=
hase=E2=80=9D,
IEEE Trans on Pattern Analysis and Machine Intelligence, vol.33, no.2,
pp.209-223, 2011.
[5] A. Rozsa et al., "Genetic Algorithm Attack on Minutiae-Based
Fingerprint Authentication and Protected Template Fingerprint Systems",
CVPR 2015.

>They presents methods to create sophisticated and natural-looking
fingerprints only from the numerical template data.
>They successfully evaluate this approach against a number of undisclosed
state-of-the-art algorithms and the NIST Fingerprint Image Software.

Lastly, as you mentioned,  it is a stupid idea to use it for various
authentication.
But, it is still working on various authentication/identification system.


> 2019=EB=85=84 5=EC=9B=94 8=EC=9D=BC (=EC=88=98) =EC=98=A4=ED=9B=84 7:24, =
Noel Kuntze
> <noel.kuntze+oss-security@thermi.consulting>=EB=8B=98=EC=9D=B4 =EC=9E=91=
=EC=84=B1:
>
>> Am 08.05.19 um 12:04 schrieb Seong-Joong Kim:
>> > 2019=EB=85=84 5=EC=9B=94 8=EC=9D=BC (=EC=88=98) =EC=98=A4=ED=9B=84 6:2=
9, Noel Kuntze
>> <noel.kuntze+oss-security@thermi.consulting>=EB=8B=98=EC=9D=B4 =EC=9E=91=
=EC=84=B1:
>> >
>> >     Hello List,
>> >
>> >     Am 08.05.19 um 11:19 schrieb Roman Drahtmueller:
>> >     >>> Dear all,
>> >     >>>
>> >     >>> I would like to report a vulnerability of 'fprintd'.
>> >     >>>
>> >     >>> 'fprintd' does not encrypt sensitive information before storag=
e.
>> >     >>> *CWE-311: Missing Encryption of Sensitive Data*
>> >     >
>> >     > [...]
>> >     >
>> >     > This misses the point.
>> >     >
>> >     > * Encryption shifts the problem to protecting the symmetric key,
>> which
>> >     >   is the very same problem. =3D> Encryption solves other problem=
s,
>> but not
>> >     >   this one.
>> >     > * If you have sufficient privileges to access the fingerprint
>> data,
>> >     >   then you no longer need the data.
>> >     > * You can't "safeguard" the fingerprint data by applying
>> additional O/S
>> >     >   controls such as SELinux, AppArmor, etc, you can only add more
>> useful
>> >     >   privilege transitions and protect against attacks that exploit
>> >     >   implementation errors. Google "store fingerprint data ios
>> android",
>> >     >   there are suitable solutions.
>> >     >
>> >     > Mostly: Your fingerprint is not a secret like a password, it is a
>> username.
>> >     >
>> >     > Since you can't change the fingerprint (biometrics problem), it
>> is not very useful as a single authentication factor. Either you live wi=
th
>> this, or you combine the fingerprint with a different authentication fac=
tor
>> type.
>> >     >
>> >     > Roman.
>> >
>> >     Another argument: You leave your fingerprint on everything you
>> touch. The glass you drank from at the bar on Saturday evening? That has
>> your fingerprints. Your front door? It has those, too.
>> >     Fingerprints aren't sensitive information. The only entities
>> attributing any sensitivity to them are the following: Court systems whe=
re
>> fingerprints are allowed as evidence (although it's stupid because you c=
an
>> easily duplicate fingerprints) and companies/persons using fingerprints =
for
>> authentication (which for the same reason as previously mentioned is not=
 a
>> good idea).
>> >     And as Roman mentioned already, you can't change your fingerprints
>> easily (Sand paper and acids are your friends, but that's not comfortable
>> at all and compromises your ability to hold things in your hands. So don=
't
>> to that.).
>> >
>> >     If, for some reason, you still want to "securely" (at least with a
>> higher level of security than plain text) store your fingerprint, you ne=
ed
>> to use a hardware backed kernel keyring that stores the encryption keys =
or
>> use a hardware based security solution for storing the fingerprints in t=
he
>> first case. You likely won't find any such solution though that isn't
>> broken already in some regard.
>> >
>> >     Kind regards
>> >
>> >     Noel
>> >
>> >     --
>> >     Noel Kuntze
>> >     IT security consultant
>> >
>> >     GPG Key ID: 0x0739AD6C
>> >     Fingerprint: 3524 93BE B5F7 8E63 1372 AF2D F54E E40B 0739 AD6C
>> >
>> > In Microsoft's Windows Hello, fingerprint data is kept locally on
>> user's PC in an encrypted way while Linux does not, even though they are
>> based on same fingerprint reader hardware.
>> > Windows Hello may use Next Generation Cryptography (called CNG) to
>> protect and store user private data and encryption keys.
>> > (see
>> https://support.microsoft.com/en-au/help/4468253/windows-hello-and-priva=
cy-microsoft-privacy
>> )
>> >
>> > Lenovo's Fingerprint Manager Pro also stores user's fingerprints
>> encrypted in its local environment.
>> > In this regard, a flaw was discovered in Lenovo Fingerprint Manager Pro
>> (see CVE-2017-3762).
>> > (see
>> https://thenextweb.com/security/2018/01/26/lenovo-fingerprint-manager-fl=
aw-windows/
>> )
>> >
>> > Moreover, FireEye researchers Tao Wei and Yulong Zhang outlined new
>> ways to attack Android devices to extract user fingerprints at Black Hat
>> USA 2015 (see Fingerprints On Mobile Devices: Abusing and Leaking?).
>> > (see
>> https://www.zdnet.com/article/hackers-can-remotely-steal-fingerprints-fr=
om-android-phones/
>> )
>> >
>> >
>> > This vulnerability could allow a process to access the stored
>> fingerprint and then it can be reverted to natural-looking original
>> fingerprint image.
>> > It allows the attacker to impersonate a legitimate
>> authentication/identification by using stolen fingerprints.
>> >
>> > Once fingerprint has been leaked, victims are leaked for the rest of
>> life since it lasts for a life.
>> > Moreover, fingerprints are usually associated with every citizen=E2=80=
=99s
>> identity and immigration record.
>> > It would be a hazard if the attacker can remotely harvest fingerprints
>> in a large scale.
>> >
>> > What do you think of it?
>> >
>> (I moved your message down because evidently people bottom post here.
>> Don't top post.)
>>
>> Hello,
>>
>> You do realize that every secret that is stored in a way that is readable
>> by software without authentication that is independent of any software
>> running on the host is in fact readable, right?
>> It is irrelevant if you encrypt your "secret" storage with a key that is
>> on the disk or is encrypted with a static key that is embedded in the
>> binary. It's on the same level of security as storing it in plain text
>> regarding attackers that have access to the host on a software level. Wh=
at
>> Windows Hello does is only any more secure if the key storage is backed =
by,
>> for example, a TPM that needs to be unlocked first using attestation. The
>> whole problem reverts to securing a host against intrusion via software =
in
>> this scenario.
>>
>> > This vulnerability could allow a process to access the stored
>> fingerprint and then it can be reverted to natural-looking original
>> fingerprint image.
>>
>> That is only the case if an actual picture is stored. If you only store
>> any detected minutiae, you can't revert to an image. That's because the
>> detection of the minutiae is fuzzy and every measurement is different.
>>
>> > Once fingerprint has been leaked, victims are leaked for the rest of
>> life since it lasts for a life.
>> > Moreover, fingerprints are usually associated with every citizen=E2=80=
=99s
>> identity and immigration record.
>> > It would be a hazard if the attacker can remotely harvest fingerprints
>> in a large scale.
>> >
>>
>> Yes, exactly like I mentioned. It's a stupid idea to use it for any type
>> of authentication, verification or evidence.
>>
>> Kind regards
>>
>> Noel
>>
>> --
>> Noel Kuntze
>> IT security consultant
>>
>> GPG Key ID: 0x0739AD6C
>> Fingerprint: 3524 93BE B5F7 8E63 1372 AF2D F54E E40B 0739 AD6C
>>
>>

--000000000000986f1b05885ef188--
