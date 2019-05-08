X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3420" "Wednesday" "8" "May" "2019" "15:13:58" "+0200" "Roman Drahtmueller" "draht@schaltsekun.de" nil "87" nil nil nil nil "5" nil nil (number mark "U       draht@schalt May  8   87/3420  " thread-indent "\"Re: [oss-security] Re: fprintd: found storing user fingerprints without encryption\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Re: fprintd: found storing user fingerprints without encryption" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9260 invoked by uid 550); 8 May 2019 13:14:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9240 invoked from network); 8 May 2019 13:14:09 -0000
Date: Wed, 8 May 2019 15:13:58 +0200 (CEST)
From: Roman Drahtmueller <draht@schaltsekun.de>
To: Seong-Joong Kim <sungjungk@gmail.com>
cc: oss-security@lists.openwall.com, 
    Noel Kuntze <noel.kuntze+oss-security@thermi.consulting>
In-Reply-To: <CAPZbWncGi8L7OkotuHnajwKutYEmPnY8oYc6gwG8yeMY0wPTNA@mail.gmail.com>
Message-ID: <alpine.LNX.2.02.1905081352280.25606@i8.fpunygfrxha.qr>
References: <CAPZbWnf64OLnNjuJuzmmsVNSi8tOPX+Kaiy0Evd47dw+NQP3NQ@mail.gmail.com> <CAPZbWne7ggvhAc3q22e1kYgmiQi7L+OTTmzXh8YBybZrcDHvjg@mail.gmail.com> <alpine.LNX.2.02.1905081051030.29468@i8.fpunygfrxha.qr> <6fe9f0a9-01d6-369c-5146-23c7a6d9555c@thermi.consulting>
 <CAPZbWnfDh0dZ8wpnLN7OsXAkKrBPyfnt52Cnz=74t4XCVXG3BQ@mail.gmail.com> <dc36d64e-ac76-29f7-5d54-225b54c2d707@thermi.consulting> <CAPZbWnfVUF-YR21kg=1c7Yh8wW=QBhOd0hW+2pvMjf+eyA=KUg@mail.gmail.com>
 <CAPZbWncGi8L7OkotuHnajwKutYEmPnY8oYc6gwG8yeMY0wPTNA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; format=flowed; charset=US-ASCII
Subject: Re: [oss-security] Re: fprintd: found storing user fingerprints
 without encryption

[...]

> I am not insisting that encryption key should be on the disk or is
> encrypted with a static key that is embedded in the binary.
> Instead, we can make fprintd to use a TPM, if available.


The problem persists: The encryption key must be available for the FP 
data to be accessible, and so it is for an attacker. It doesn't matter 
where you store the key.

A TPM (and, transitively, products that encrypt with TPM-sealed or 
TPM-bound key material) is good for the situation where the system is 
physically stolen while powered down (or the drive fails). But that's not 
our problem here.


> Otherwise, but even though it is not perfect, it would be better to apply
> the fingerprint data protection, such as keyring or access control, rather
> than raw fingerprint template.
> FYI, Windows Hello might use Next Generation Cryptography (called CNG) to
> protect and store user private data and encryption keys.


There are not many options left to solve the stored credential problem, 
and it should be clear that saving a file, encrypted or not, is not the 
solution.

One possible solution is to use a hash algorithm, potentially cost-based, 
to derive a bit string (that is suitable for comparison with the 
persisted authoritative string) from the output of a fingerprint reader.

Another one is to use the fingerprint reader output as input to a KDF, 
which unwraps the private key of an asymmetric key pair, against which a 
challenge can be requested or which unwraps further wrapping material to 
bootstrap a key hierarchy (that can be discarded and rebuilt at any 
useful time). (*)

>> I think that this is similar approach with Lenovo Fingerprint Manager,
> Microsoft Windows Hello and other products.

I can only recommend to NOT TRUST in any security value that is not 
satisfyingly documented and/or open-sourced, but instead to expect the 
worst.

The worst btw is introducing a false sense for a security value by 
wipe-the-eye type of design (security by obscurity).


(*) Note that the overall system design for a multi-purpose key hierarchy 
must be able to cope with the requirement that "master key data", which 
might encompass biometric data, must never be accessible even to 
operating system components. A small portion of memory that is accessible 
only for a very small, associated portion of code, doing only minimal 
things, but never let go the secret. This is non-trivial to build and 
typically mandates a root of trust beyond the O/S builder.

> Have you read the following papers about fingerprint image reconstruction
> technology from standard templates?

[...]

Those are all good papers, and all of them potentially lead to the 
conclusion that
a) your fingerprint is a username, yet not public, but not secret either
b) your username is subject to being copied, regardless of how it is
    manifested.
c) biometric authentication is flawed unless combined with
    other authentication factor types


> Lastly, as you mentioned,  it is a stupid idea to use it for various
> authentication.
> But, it is still working on various authentication/identification system.


Make informed desisions about the sufficiency and adequacy of your 
protection measures based on:

* the value of your assets
* the threats against your assets
* the risks that threats against your assets create damages

In movies, the fingerprint-reader-protected-only "max security" lab 
isn't.

R.
