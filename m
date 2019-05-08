X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6333" "Wednesday" "8" "May" "2019" "12:24:56" "+0200" "Noel Kuntze" "noel.kuntze+oss-security@thermi.consulting" nil "101" nil "^Cc:" nil nil "5" nil nil (number mark "        noel.kuntze+ May  8  101/6333  " thread-indent "\"Re: [oss-security] Re: fprintd: found storing user fingerprints without encryption\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Re: fprintd: found storing user fingerprints without encryption" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17876 invoked by uid 550); 8 May 2019 10:37:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 6131 invoked from network); 8 May 2019 10:25:09 -0000
X-Virus-Scanned: amavisd-new at thermi.consulting
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=thermi.consulting;
	s=201810; t=1557311096;
	bh=P6eJOrLq8vFh4dWa2FE2qu4wAtSX3Ox2BgEBqPcGcxM=;
	h=Subject:To:From:Date:MIME-Version:Content-Type;
	b=w/EXaZvGa19a8alWv2eArNLcXltINqPD5pRu0ma2ABgCSmbrIJdIZ9aa6siVJYGm3
	 l+TyjJ7MWDgXVEA9by3GZW6ycKMUaSxVq6LCqLgNlEAzNNTto/yITXlVfwjNxeT4ti
	 7wGMlRZLAmHNbkJj+fu9SK1GBhzkUJNjM7ILHdavwpmOYGP4edBFbqWMnczS0PQIQY
	 m43P1K26QVg3/munwH/5Cqt2uIbtP2XJF76z+zSUa/+g+fCHF8jW0JQ6f5WyPJ0Wua
	 NsXR4DLU65NTlzvuJtBedHAO7apdmhm5o6DwEa6kvnmviuAon8j8BwtT9b8NRNLiUG
	 J2SbLFnNIEX+Q==
References: <CAPZbWnf64OLnNjuJuzmmsVNSi8tOPX+Kaiy0Evd47dw+NQP3NQ@mail.gmail.com>
 <CAPZbWne7ggvhAc3q22e1kYgmiQi7L+OTTmzXh8YBybZrcDHvjg@mail.gmail.com>
 <alpine.LNX.2.02.1905081051030.29468@i8.fpunygfrxha.qr>
 <6fe9f0a9-01d6-369c-5146-23c7a6d9555c@thermi.consulting>
 <CAPZbWnfDh0dZ8wpnLN7OsXAkKrBPyfnt52Cnz=74t4XCVXG3BQ@mail.gmail.com>
Message-ID: <dc36d64e-ac76-29f7-5d54-225b54c2d707@thermi.consulting>
MIME-Version: 1.0
In-Reply-To: <CAPZbWnfDh0dZ8wpnLN7OsXAkKrBPyfnt52Cnz=74t4XCVXG3BQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US
Cc: oss-security@lists.openwall.com, Roman Drahtmueller <draht@schaltsekun.de>
Date: Wed, 8 May 2019 12:24:56 +0200
From: Noel Kuntze <noel.kuntze+oss-security@thermi.consulting>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: fprintd: found storing user fingerprints
 without encryption
To: Seong-Joong Kim <sungjungk@gmail.com>

Am 08.05.19 um 12:04 schrieb Seong-Joong Kim:
> 2019년 5월 8일 (수) 오후 6:29, Noel Kuntze <noel.kuntze+oss-security@thermi.consulting>님이 작성:
>
>     Hello List,
>
>     Am 08.05.19 um 11:19 schrieb Roman Drahtmueller:
>     >>> Dear all,
>     >>>
>     >>> I would like to report a vulnerability of 'fprintd'.
>     >>>
>     >>> 'fprintd' does not encrypt sensitive information before storage.
>     >>> *CWE-311: Missing Encryption of Sensitive Data*
>     >
>     > [...]
>     >
>     > This misses the point.
>     >
>     > * Encryption shifts the problem to protecting the symmetric key, which
>     >   is the very same problem. => Encryption solves other problems, but not
>     >   this one.
>     > * If you have sufficient privileges to access the fingerprint data,
>     >   then you no longer need the data.
>     > * You can't "safeguard" the fingerprint data by applying additional O/S
>     >   controls such as SELinux, AppArmor, etc, you can only add more useful
>     >   privilege transitions and protect against attacks that exploit
>     >   implementation errors. Google "store fingerprint data ios android",
>     >   there are suitable solutions.
>     >
>     > Mostly: Your fingerprint is not a secret like a password, it is a username.
>     >
>     > Since you can't change the fingerprint (biometrics problem), it is not very useful as a single authentication factor. Either you live with this, or you combine the fingerprint with a different authentication factor type.
>     >
>     > Roman.
>
>     Another argument: You leave your fingerprint on everything you touch. The glass you drank from at the bar on Saturday evening? That has your fingerprints. Your front door? It has those, too.
>     Fingerprints aren't sensitive information. The only entities attributing any sensitivity to them are the following: Court systems where fingerprints are allowed as evidence (although it's stupid because you can easily duplicate fingerprints) and companies/persons using fingerprints for authentication (which for the same reason as previously mentioned is not a good idea).
>     And as Roman mentioned already, you can't change your fingerprints easily (Sand paper and acids are your friends, but that's not comfortable at all and compromises your ability to hold things in your hands. So don't to that.).
>
>     If, for some reason, you still want to "securely" (at least with a higher level of security than plain text) store your fingerprint, you need to use a hardware backed kernel keyring that stores the encryption keys or use a hardware based security solution for storing the fingerprints in the first case. You likely won't find any such solution though that isn't broken already in some regard.
>
>     Kind regards
>
>     Noel
>
>     -- 
>     Noel Kuntze
>     IT security consultant
>
>     GPG Key ID: 0x0739AD6C
>     Fingerprint: 3524 93BE B5F7 8E63 1372 AF2D F54E E40B 0739 AD6C
>
> In Microsoft's Windows Hello, fingerprint data is kept locally on user's PC in an encrypted way while Linux does not, even though they are based on same fingerprint reader hardware.
> Windows Hello may use Next Generation Cryptography (called CNG) to protect and store user private data and encryption keys.
> (see https://support.microsoft.com/en-au/help/4468253/windows-hello-and-privacy-microsoft-privacy)
>
> Lenovo's Fingerprint Manager Pro also stores user's fingerprints encrypted in its local environment.
> In this regard, a flaw was discovered in Lenovo Fingerprint Manager Pro (see CVE-2017-3762).
> (see https://thenextweb.com/security/2018/01/26/lenovo-fingerprint-manager-flaw-windows/)
>
> Moreover, FireEye researchers Tao Wei and Yulong Zhang outlined new ways to attack Android devices to extract user fingerprints at Black Hat USA 2015 (see Fingerprints On Mobile Devices: Abusing and Leaking?).
> (see https://www.zdnet.com/article/hackers-can-remotely-steal-fingerprints-from-android-phones/)
>
>
> This vulnerability could allow a process to access the stored fingerprint and then it can be reverted to natural-looking original fingerprint image.
> It allows the attacker to impersonate a legitimate authentication/identification by using stolen fingerprints.
>
> Once fingerprint has been leaked, victims are leaked for the rest of life since it lasts for a life. 
> Moreover, fingerprints are usually associated with every citizen’s identity and immigration record. 
> It would be a hazard if the attacker can remotely harvest fingerprints in a large scale.
>
> What do you think of it?
>
(I moved your message down because evidently people bottom post here. Don't top post.)

Hello,

You do realize that every secret that is stored in a way that is readable by software without authentication that is independent of any software running on the host is in fact readable, right?
It is irrelevant if you encrypt your "secret" storage with a key that is on the disk or is encrypted with a static key that is embedded in the binary. It's on the same level of security as storing it in plain text regarding attackers that have access to the host on a software level. What Windows Hello does is only any more secure if the key storage is backed by, for example, a TPM that needs to be unlocked first using attestation. The whole problem reverts to securing a host against intrusion via software in this scenario.

> This vulnerability could allow a process to access the stored fingerprint and then it can be reverted to natural-looking original fingerprint image.

That is only the case if an actual picture is stored. If you only store any detected minutiae, you can't revert to an image. That's because the detection of the minutiae is fuzzy and every measurement is different.

> Once fingerprint has been leaked, victims are leaked for the rest of life since it lasts for a life. 
> Moreover, fingerprints are usually associated with every citizen’s identity and immigration record. 
> It would be a hazard if the attacker can remotely harvest fingerprints in a large scale.
>

Yes, exactly like I mentioned. It's a stupid idea to use it for any type of authentication, verification or evidence.

Kind regards

Noel

-- 
Noel Kuntze
IT security consultant

GPG Key ID: 0x0739AD6C
Fingerprint: 3524 93BE B5F7 8E63 1372 AF2D F54E E40B 0739 AD6C

