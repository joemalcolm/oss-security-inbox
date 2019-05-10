X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3091" "Friday" "10" "May" "2019" "09:20:54" "+0000" "halfdog" "me@halfdog.net" nil "70" nil nil nil nil "5" nil nil (number mark "U       me@halfdog.n May 10   70/3091  " thread-indent "\"Re: [oss-security] Re: fprintd: found storing user fingerprints without encryption\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Re: fprintd: found storing user fingerprints without encryption" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23667 invoked by uid 550); 10 May 2019 09:22:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23646 invoked from network); 10 May 2019 09:22:23 -0000
From: halfdog <me@halfdog.net>
To: oss-security@lists.openwall.com
In-reply-to: <alpine.LNX.2.02.1905081352280.25606@i8.fpunygfrxha.qr>
References: <CAPZbWnf64OLnNjuJuzmmsVNSi8tOPX+Kaiy0Evd47dw+NQP3NQ@mail.gmail.com> <CAPZbWne7ggvhAc3q22e1kYgmiQi7L+OTTmzXh8YBybZrcDHvjg@mail.gmail.com> <alpine.LNX.2.02.1905081051030.29468@i8.fpunygfrxha.qr> <6fe9f0a9-01d6-369c-5146-23c7a6d9555c@thermi.consulting> <CAPZbWnfDh0dZ8wpnLN7OsXAkKrBPyfnt52Cnz=74t4XCVXG3BQ@mail.gmail.com> <dc36d64e-ac76-29f7-5d54-225b54c2d707@thermi.consulting> <CAPZbWnfVUF-YR21kg=1c7Yh8wW=QBhOd0hW+2pvMjf+eyA=KUg@mail.gmail.com> <CAPZbWncGi8L7OkotuHnajwKutYEmPnY8oYc6gwG8yeMY0wPTNA@mail.gmail.com> <alpine.LNX.2.02.1905081352280.25606@i8.fpunygfrxha.qr>
Comments: In-reply-to Roman Drahtmueller <draht@schaltsekun.de>
   message dated "Wed, 08 May 2019 15:13:58 +0200."
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Date: Fri, 10 May 2019 09:20:54 +0000
Message-ID: <872-1557480054.563908@mmCb.bu1W.zlxn>
Subject: Re: [oss-security] Re: fprintd: found storing user fingerprints without encryption

Roman Drahtmueller writes:
> [...]
>
> > I am not insisting that encryption key should be on the disk or is
> > encrypted with a static key that is embedded in the binary.
> > Instead, we can make fprintd to use a TPM, if available.
>
>
> The problem persists: The encryption key must be available for the FP 
> data to be accessible, and so it is for an attacker. It doesn't matter 
> where you store the key.
>
> A TPM (and, transitively, products that encrypt with TPM-sealed or 
> TPM-bound key material) is good for the situation where the system is 
> physically stolen while powered down (or the drive fails). But that's not 
> our problem here.

Therefore dedicated tamper-proof IC-designs+embedded software
exist, that perform the biometry template storage and matching
on the chip (MoC). There are some vendors out there providing
such hardware + MoC-algorithms, but mainly fingerprint and some
iris biometry variants seem certified so far. These are intended
for access cards or USB-tokens in two or more-factor authentication
schemes in a 1-to-1 match fashion, not as centralized 1-to-many
matching schemes also deployed rarely (e.g. in Japan where they
really like biometrics as long as you do not have to touch the
biometry reader ...).

> [...]
>
> > Otherwise, but even though it is not perfect, it would be better to apply
> > the fingerprint data protection, such as keyring or access control, rather
> > than raw fingerprint template.
> > FYI, Windows Hello might use Next Generation Cryptography (called CNG) to
> > protect and store user private data and encryption keys.
>
> There are not many options left to solve the stored credential problem, 
> and it should be clear that saving a file, encrypted or not, is not the 
> solution.
>
> One possible solution is to use a hash algorithm, potentially cost-based, 
> to derive a bit string (that is suitable for comparison with the 
> persisted authoritative string) from the output of a fingerprint reader.

At the momenent I do not know of any algorithms providing sufficient
entropy binary hash data from fingerprints in a reliable way.
Changing extraction to deliver more entropy results in higher
FNR during authentication step later on, I think.

> [...]

When working on a project to provide highest security MoC solutions
with Linux (for other type of biometry, not fingerprints), Nitrokey
was offering an open-source USB-token hardware (even the PCBs are
open source, if I remember correctly). That platform seemed closest
to be a good starting point for developing such an open source MoC
biometry solution as they sell also one part with a certified tamper
proof trusted element that seemed to allow performing biometry
template storage and comparison on chip if programmed correctly.

Time in the project was too limited to explore, if that hardware
would REALLY allow to upgrade it to a powerful, highly secure but
still affordable open source biometry system for use by journalists,
human rights activists, NGOs ... and nerds, e.g. for password+biometry
secured full disk encryption schemes.

> [...]

hd

