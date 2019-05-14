X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5751" "Tuesday" "14" "May" "2019" "08:35:22" "+0000" "halfdog" "me@halfdog.net" nil "121" nil nil nil nil "5" nil nil (number mark "U       me@halfdog.n May 14  121/5751  " thread-indent "\"Re: [oss-security] fprintd: found storing user fingerprints without encryption\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] fprintd: found storing user fingerprints without encryption" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30116 invoked by uid 550); 14 May 2019 08:35:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30095 invoked from network); 14 May 2019 08:35:26 -0000
From: halfdog <me@halfdog.net>
To: oss-security@lists.openwall.com
In-reply-to: <CAPZbWnfSknrMDTR+5wjGO6Bgcym8uLa60etn7NXab987tE7quQ@mail.gmail.com>
References: <CAPZbWnf64OLnNjuJuzmmsVNSi8tOPX+Kaiy0Evd47dw+NQP3NQ@mail.gmail.com> <CAPZbWne7ggvhAc3q22e1kYgmiQi7L+OTTmzXh8YBybZrcDHvjg@mail.gmail.com> <alpine.LNX.2.02.1905081051030.29468@i8.fpunygfrxha.qr> <6fe9f0a9-01d6-369c-5146-23c7a6d9555c@thermi.consulting> <CAPZbWnfDh0dZ8wpnLN7OsXAkKrBPyfnt52Cnz=74t4XCVXG3BQ@mail.gmail.com> <dc36d64e-ac76-29f7-5d54-225b54c2d707@thermi.consulting> <CAPZbWnfVUF-YR21kg=1c7Yh8wW=QBhOd0hW+2pvMjf+eyA=KUg@mail.gmail.com> <CAPZbWncGi8L7OkotuHnajwKutYEmPnY8oYc6gwG8yeMY0wPTNA@mail.gmail.com> <alpine.LNX.2.02.1905081352280.25606@i8.fpunygfrxha.qr> <872-1557480054.563908@mmCb.bu1W.zlxn> <CAPZbWnfSknrMDTR+5wjGO6Bgcym8uLa60etn7NXab987tE7quQ@mail.gmail.com>
Comments: In-reply-to Seong-Joong Kim <sungjungk@gmail.com>
   message dated "Fri, 10 May 2019 19:31:34 +0900."
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
Date: Tue, 14 May 2019 08:35:22 +0000
Message-ID: <2938-1557822922.903457@q0_S.WXHA.Kw1l>
Subject: Re: [oss-security] fprintd: found storing user fingerprints without encryption

Seong-Joong Kim writes:
> I think my initial suggestion is not really good enough.
>
> Currently, there is no way to defend this issue except for
> supporting hardware, such as TPM or USB token, rather than
> encryption by software in Linux environment.
>
> If necessary, how about implementing interfaces to talk with
> hardware security module, such as TPM or PKCS#11 compatible
> devices.

>From those solutions I looked at (but not for fingerprint but
other type of biometry), those using standard interfaces already
seemed to be those allowing easiest and most stable integration
with open source software. They do not require any specific libraries,
components hardware drivers to be present on the target system,
no proprietary protocols involved.

Those solutions usually behave like a crypto-smart-card to be
unlocked only by an external pin-pad mounted on the card reader,
except that you do not enter a pin but use your biometrics data.

I did not look on the PC-to-reader protocol in detail but I assume
that requesting e.g. decryption/signing from the card, the PC
will ask the card (via the reader) to perform the crypto operation,
the card replies with something like "pin required", the PC displays
a message to the user, the user enters pin (or biometry), the
reader replies with "card now usable" or "card locked/card destroyed"
when exceeding the maximum number of attempts.

> Otherwise, users should avoid using fingerprint
> authentication/identification.

I would not say that in general. That really depends on the security
requirements of user. While a standard door lock might be appropriate
to secure a house (even if the key material can be reconstructed
by stealing the lock, the door or the complete house - last case
is similar to a standard notebook theft), the same lock will
be deemed inappropriate to secure nuclear facilities. Also the
usecases for locking/unlocking should be considered: do you perform
50 lock/unlocks per day for a device, that would be otherwise
quite unprotected (no password, because password entry is too
inconvenient - or using a weak password) or do you protect data
at rest only accessed once per week (final storage location of
a disk to disk to disk backup cascade)?

So fingerprint might be the sweetest spot depending on the asset
value, but also the value of the (non-renewable) biodata and
the usecases of the locking scheme.

hd

> 2019년 5월 10일 (금) 오후 6:22, halfdog <me@halfdog.net>님이
> 작성:
>
>> Roman Drahtmueller writes: > [...] > > > I am not insisting
>> that encryption key should be on the disk or is > > encrypted
>> with a static key that is embedded in the binary. > > Instead,
>> we can make fprintd to use a TPM, if available. > > > The
>> problem persists: The encryption key must be available for
>> the FP > data to be accessible, and so it is for an attacker.
>> It doesn't matter > where you store the key. > > A TPM (and,
>> transitively, products that encrypt with TPM-sealed or > TPM-bound
>> key material) is good for the situation where the system is
>> > physically stolen while powered down (or the drive fails).
>> But that's not > our problem here.
>>
>> Therefore dedicated tamper-proof IC-designs+embedded software
>> exist, that perform the biometry template storage and matching
>> on the chip (MoC). There are some vendors out there providing
>> such hardware + MoC-algorithms, but mainly fingerprint and
>> some iris biometry variants seem certified so far. These are
>> intended for access cards or USB-tokens in two or more-factor
>> authentication schemes in a 1-to-1 match fashion, not as
>> centralized 1-to-many matching schemes also deployed rarely
>> (e.g. in Japan where they really like biometrics as long as
>> you do not have to touch the biometry reader ...).
>>
>> > [...] > > > Otherwise, but even though it is not perfect,
>> it would be better to apply > > the fingerprint data protection,
>> such as keyring or access control, rather > > than raw fingerprint
>> template. > > FYI, Windows Hello might use Next Generation
>> Cryptography (called CNG) to > > protect and store user private
>> data and encryption keys. > > There are not many options left
>> to solve the stored credential problem, > and it should be
>> clear that saving a file, encrypted or not, is not the > solution.
>> > > One possible solution is to use a hash algorithm, potentially
>> cost-based, > to derive a bit string (that is suitable for
>> comparison with the > persisted authoritative string) from
>> the output of a fingerprint reader.
>>
>> At the momenent I do not know of any algorithms providing
>> sufficient entropy binary hash data from fingerprints in a
>> reliable way. Changing extraction to deliver more entropy
>> results in higher FNR during authentication step later on,
>> I think.
>>
>> > [...]
>>
>> When working on a project to provide highest security MoC
>> solutions with Linux (for other type of biometry, not
>> fingerprints), Nitrokey was offering an open-source USB-token
>> hardware (even the PCBs are open source, if I remember correctly).
>> That platform seemed closest to be a good starting point for
>> developing such an open source MoC biometry solution as they
>> sell also one part with a certified tamper proof trusted element
>> that seemed to allow performing biometry template storage
>> and comparison on chip if programmed correctly.
>>
>> Time in the project was too limited to explore, if that hardware
>> would REALLY allow to upgrade it to a powerful, highly secure
>> but still affordable open source biometry system for use by
>> journalists, human rights activists, NGOs ... and nerds, e.g.
>> for password+biometry secured full disk encryption schemes.
>>
>> > [...]
>>
>> hd
>>
>>

