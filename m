X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7035" "Tuesday" "14" "May" "2019" "08:54:18" "+0000" "halfdog" "me@halfdog.net" nil "150" nil nil nil nil "5" nil nil (number mark "U       me@halfdog.n May 14  150/7035  " thread-indent "\"Re: [oss-security] fprintd: found storing user fingerprints without encryption\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] fprintd: found storing user fingerprints without encryption" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21984 invoked by uid 550); 14 May 2019 08:54:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21966 invoked from network); 14 May 2019 08:54:21 -0000
From: halfdog <me@halfdog.net>
To: oss-security@lists.openwall.com
In-reply-to: <CAPZbWncFa4YvkvGUEYW5L=50-brSWt_aBKthkCzC+5zd4Vk+WQ@mail.gmail.com>
References: <CAPZbWnf64OLnNjuJuzmmsVNSi8tOPX+Kaiy0Evd47dw+NQP3NQ@mail.gmail.com> <CAPZbWne7ggvhAc3q22e1kYgmiQi7L+OTTmzXh8YBybZrcDHvjg@mail.gmail.com> <alpine.LNX.2.02.1905081051030.29468@i8.fpunygfrxha.qr> <6fe9f0a9-01d6-369c-5146-23c7a6d9555c@thermi.consulting> <CAPZbWnfDh0dZ8wpnLN7OsXAkKrBPyfnt52Cnz=74t4XCVXG3BQ@mail.gmail.com> <dc36d64e-ac76-29f7-5d54-225b54c2d707@thermi.consulting> <CAPZbWnfVUF-YR21kg=1c7Yh8wW=QBhOd0hW+2pvMjf+eyA=KUg@mail.gmail.com> <CAPZbWncGi8L7OkotuHnajwKutYEmPnY8oYc6gwG8yeMY0wPTNA@mail.gmail.com> <alpine.LNX.2.02.1905081352280.25606@i8.fpunygfrxha.qr> <872-1557480054.563908@mmCb.bu1W.zlxn> <CAPZbWnfSknrMDTR+5wjGO6Bgcym8uLa60etn7NXab987tE7quQ@mail.gmail.com> <CAPZbWncFa4YvkvGUEYW5L=50-brSWt_aBKthkCzC+5zd4Vk+WQ@mail.gmail.com>
Comments: In-reply-to Seong-Joong Kim <sungjungk@gmail.com>
   message dated "Sat, 11 May 2019 09:20:12 +0900."
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
Date: Tue, 14 May 2019 08:54:18 +0000
Message-ID: <2958-1557824058.656142@_q-Y.dRjQ.knDW>
Subject: Re: [oss-security] fprintd: found storing user fingerprints without encryption

Seong-Joong Kim writes:
> Additionally,  I think that fingerprint reader is widely used
> on laptop, rather than standalone product for PC. It is hard
> to find standalone product in supporting device officially,
> except for Digital Persona U.are.U and Eikon Touch series.
> (see https://fprint.freedesktop.org/supported-devices.html)
> Most of them are forms of fingerprint module or no longer sell
> the standalone product.

Lack of external fingerprint readers with very short unsecured
biometric data path from reader to smart-card is most likely
due to the weak security of fingerprint data. Therefore this
device would fulfill highest biometric data storage and processing
requirements but using biometric data of nearly lowest security
value (latent fingerprints, high resolution (press) images of
fingers, reconstruction of fingerprint from biometric templates,
ease of printing fingerprints and spoofing alive-detection, ...).
Therefore external devices for fingerprint processing should
be rare. The situation is different when looking at other biometric
methods.

But still security could be improved getting rid of at least
unencrypted/unprotected storage of the fingerprint templates
for comparison, e.g. in schemes like: using notebook fingerprint
reader, performing biometric template generation on notebook
main processor (if attacker has already access to the processor,
RAM at this moment, the fingerprint data for unlocking is usually
of no great value any more), submit the biometric data to the
secure element for comparison (a NFC smart card, inserted smart
card or USB dongle) and use the then unlocked key data to perform
e.g. decryption. Therefore the biometric data is only left unsecured
on weak hardware from ackquisition to processing but not on disk.

> Currently, most of major vendors' laptops, including Dell,
> HP and Lenovo, have been equipped with both embedded fingerprint
> module and TPM. Thus, I suggested implementing interfaces to
> talk with hardware security module.

If I understand correctly, TPMs usually cannot be loaded with
special purpose secure applets, e.g. to perform the fingerprint
comparison on chip. If current TPMs are already capable, this
would be really the way to go for the average customer (average
security usecases/requirements).

I personally would not like that solution too much and would
appreciate something where the key data is not located within
the device or at least require two simultaneous factors to unlock
the TPM, e.g. a passphrase + biometric data.

Otherwise you can just use the fingerprints on the stolen laptop
to recover the biometric data - unless you are working with gloves
all the time :-)

If your master key storage can be removed easily, e.g. an USB-dongle
(mind the max number of plug/unplug cycles for common connectors),
theft of key storage and device at the same time will be quite
rare. Apart from that, the key store can also be used to perform
emergency locking/shutdown of the device, e.g. by unplugging it.

hd

> 2019년 5월 10일 (금) 오후 7:31, Seong-Joong Kim
> <sungjungk@gmail.com>님이 작성:
>
>> I think my initial suggestion is not really good enough.
>>
>> Currently, there is no way to defend this issue except for
>> supporting hardware, such as TPM or USB token, rather than
>> encryption by software in Linux environment.
>>
>> If necessary, how about implementing interfaces to talk with
>> hardware security module, such as TPM or PKCS#11 compatible
>> devices.
>>
>> Otherwise, users should avoid using fingerprint
>> authentication/identification.
>>
>> Any idea?
>>
>> Sincerely,
>>
>> 2019년 5월 10일 (금) 오후 6:22, halfdog
>> <me@halfdog.net>님이 작성:
>>
>>> Roman Drahtmueller writes: > [...] > > > I am not insisting
>>> that encryption key should be on the disk or is > > encrypted
>>> with a static key that is embedded in the binary. > > Instead,
>>> we can make fprintd to use a TPM, if available. > > > The
>>> problem persists: The encryption key must be available for
>>> the FP > data to be accessible, and so it is for an attacker.
>>> It doesn't matter > where you store the key. > > A TPM (and,
>>> transitively, products that encrypt with TPM-sealed or >
>>> TPM-bound key material) is good for the situation where the
>>> system is > physically stolen while powered down (or the
>>> drive fails). But that's not > our problem here.
>>>
>>> Therefore dedicated tamper-proof IC-designs+embedded software
>>> exist, that perform the biometry template storage and matching
>>> on the chip (MoC). There are some vendors out there providing
>>> such hardware + MoC-algorithms, but mainly fingerprint and
>>> some iris biometry variants seem certified so far. These
>>> are intended for access cards or USB-tokens in two or more-factor
>>> authentication schemes in a 1-to-1 match fashion, not as
>>> centralized 1-to-many matching schemes also deployed rarely
>>> (e.g. in Japan where they really like biometrics as long
>>> as you do not have to touch the biometry reader ...).
>>>
>>> > [...] > > > Otherwise, but even though it is not perfect,
>>> it would be better to apply > > the fingerprint data protection,
>>> such as keyring or access control, rather > > than raw fingerprint
>>> template. > > FYI, Windows Hello might use Next Generation
>>> Cryptography (called CNG) to > > protect and store user private
>>> data and encryption keys. > > There are not many options
>>> left to solve the stored credential problem, > and it should
>>> be clear that saving a file, encrypted or not, is not the
>>> > solution. > > One possible solution is to use a hash algorithm,
>>> potentially cost-based, > to derive a bit string (that is
>>> suitable for comparison with the > persisted authoritative
>>> string) from the output of a fingerprint reader.
>>>
>>> At the momenent I do not know of any algorithms providing
>>> sufficient entropy binary hash data from fingerprints in
>>> a reliable way. Changing extraction to deliver more entropy
>>> results in higher FNR during authentication step later on,
>>> I think.
>>>
>>> > [...]
>>>
>>> When working on a project to provide highest security MoC
>>> solutions with Linux (for other type of biometry, not
>>> fingerprints), Nitrokey was offering an open-source USB-token
>>> hardware (even the PCBs are open source, if I remember correctly).
>>> That platform seemed closest to be a good starting point
>>> for developing such an open source MoC biometry solution
>>> as they sell also one part with a certified tamper proof
>>> trusted element that seemed to allow performing biometry
>>> template storage and comparison on chip if programmed correctly.
>>>
>>> Time in the project was too limited to explore, if that hardware
>>> would REALLY allow to upgrade it to a powerful, highly secure
>>> but still affordable open source biometry system for use
>>> by journalists, human rights activists, NGOs ... and nerds,
>>> e.g. for password+biometry secured full disk encryption schemes.
>>>
>>> > [...]
>>>
>>> hd
>>>
>>>

