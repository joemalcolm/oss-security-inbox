Received: (qmail 1211 invoked by uid 550); 3 Jun 2025 04:07:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17758 invoked from network); 3 Jun 2025 03:38:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748921926; x=1749526726; darn=lists.openwall.com;
        h=in-reply-to:subject:autocrypt:from:content-language:references:to
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a12T1IuGP8eDG8wfsopIDmuFdFm3Z6tQ/IlsNZ+YU0A=;
        b=MK2ep8XJcECbrhByVbzQorptcSJ1bCMVupWbqVe14BgGovrY5jBswZhCd4u8XgH2pJ
         cHvt8Y7HqEYDp9cBW+/q+vw5wYgsqBYfI305bgWPB7gslMOeZiekqMOZ7dl2YfuZMa84
         Rnv5wWj4BBhXSp/pflX4Zf1aGIUrXxx5YEVDKfV4BoKgRRlkTD53K+6dtIa2wuoM+BI+
         256jjVmGnPgQj/ujbgqFORxuFUUy/wFLLndGLMkXBtJga2vPNV+pYR51PimoAkmzbC12
         E8FOn7gvc1ReShtNvZ7JszdWMdlU6ILs2Ic+YOLAqKmcbCmGlC2+fTY1ihlD0M3tTrOC
         7pFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748921926; x=1749526726;
        h=in-reply-to:subject:autocrypt:from:content-language:references:to
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=a12T1IuGP8eDG8wfsopIDmuFdFm3Z6tQ/IlsNZ+YU0A=;
        b=ivdJHGvyQlVqysL+bXaOQi0oV0HWAD4Hbx87ON3tSqIa5/E7Jz7uJk23mtvpaB0vT3
         4uehaIIEDjzkDWEJDRaAAuzRtNYgSN+ZAHf4p+umjxhj8bXaiepis1Ex+vq5UAAwraI7
         P4JbWxr9ANQ4kGCQ5XXE94u9AGJdMCmEQkNp+GpZAA2XzExM4QZV03sgKx9jhfgdOScJ
         OTrhMJ/F0JBRY1GB8t2ybxgWRoMVSg6fo2C7mLenIQMJr6aspMHQDlbG+pwC5rR3piVA
         Ve0lwkr8F6vJDD+rnj643d//qJZz5DXeQOIjCUbzrcRqU9PhCpvf8vXGeGfvHmQiTstP
         doaQ==
X-Gm-Message-State: AOJu0YyLaXf07PLjIfrWV3GaQJR6pDOU+VVSWOdlDlrlUZ6+mNlF0Rqu
	esNCzr/rB9sSM3eMCWoQSYELGPnW1+4XYQQ0mzgjsD8YZHtABsvs4LWnf77n/g==
X-Gm-Gg: ASbGncu53ndToUu+vHrlAjut4+7QiHgF1KwaYfxz9f4IcEDixaezP4cBSICgcXsAsxr
	OC1Ne9/CJF3jkP6vlSC/3ZiC6vgAcL1KtMFUxoBKWzHxU4VxZT1160Q1ROYA+SGvSndzxtvLQ/c
	kH/PhTUY74AchRpjBeHWjpMi7VxHQrvxqq5sGS98MZaAXWqUoJwsioq63lZwlyCWggLApGjC8ru
	MrIm3dPTN8I9CXUydpWfUl+nUOfu07+GKIcyXAHCwjQ6MK+6WO7rMO5HdT1A9DumfacDhCbK1OH
	SzJiVMEbmo/ivfcRGO2j9hamhNEixBlgXOe5Hhlc6tzC8H44I8vDwz73VVC53+EjZD0=
X-Google-Smtp-Source: AGHT+IFsw8si5NqDtmKDLkqtj8XT1jl70bNQOcpOiapcCfoh2vew6c2h3k0dbuDHamoD5LXsEMDDBQ==
X-Received: by 2002:a05:6214:21cc:b0:6f5:1192:ccdf with SMTP id 6a1803df08f44-6faeefaf641mr15509086d6.6.1748921925496;
        Mon, 02 Jun 2025 20:38:45 -0700 (PDT)
Message-ID: <b379213c-55d1-4564-90aa-591edf3097c7@gmail.com>
Date: Mon, 2 Jun 2025 23:38:30 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <20250603025919.GA11183@openwall.com>
Content-Language: en-US
From: Demi Marie Obenour <demiobenour@gmail.com>
Autocrypt: addr=demiobenour@gmail.com; keydata=
 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
 +MYSfkEjBz0E8CLOcAw7JIwAaeBT
In-Reply-To: <20250603025919.GA11183@openwall.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------eJ0RnMViQGf2CR5rTUxPeion"
Subject: Re: [oss-security] Linux kernel: HFS+ filesystem implementation
 issues, exposure in distros

--------------eJ0RnMViQGf2CR5rTUxPeion
Content-Type: multipart/mixed; boundary="------------kKTl08ITk06CdPTw0BLKf28N";
 protected-headers="v1"
From: Demi Marie Obenour <demiobenour@gmail.com>
To: oss-security@lists.openwall.com
Message-ID: <b379213c-55d1-4564-90aa-591edf3097c7@gmail.com>
Subject: Re: [oss-security] Linux kernel: HFS+ filesystem implementation
 issues, exposure in distros
References: <20250603025919.GA11183@openwall.com>
In-Reply-To: <20250603025919.GA11183@openwall.com>

--------------kKTl08ITk06CdPTw0BLKf28N
Content-Type: multipart/mixed; boundary="------------sIIdQxN8mGqCdB00N9lN0jJt"

--------------sIIdQxN8mGqCdB00N9lN0jJt
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 6/2/25 22:59, Solar Designer wrote:
> Hi,
>=20
> Muhammed H=C3=BCsam Alzeyya, CC'ed here, (kind of) brought an issue in the
> Linux kernel's HFS+ filesystem implementation to s@k.o and linux-distros
> at once.  This is against both Linux kernel's and linux-distros' current
> instructions, which ask to "notify the kernel security team first, wait
> for the fix, and only then notify linux-distros or oss-security".  The
> message didn't actually get through to linux-distros for a technical
> reason, but a reply quoting its portion did.  I promptly sent a reply to
> Muhammed (CC'ing linux-distros) to explain the situation and ask a few
> questions, but got no reply.  I saw no further communication on this.
> (I also checked our server logs, and as far as I can tell there were no
> further rejected/filtered messages from Muhammed's address, neither to
> linux-distros nor to my address.)  I am now bringing this to
> oss-security for the sake of transparency and not to make an exception,
> as well as possibly to have a discussion of the general issues.
>=20
> There was another issue in the same driver publicized a few months ago,
> with a lot of detail on its exploitation (and the exploit itself):
>=20
> https://ssd-disclosure.com/ssd-advisory-linux-kernel-hfsplus-slab-out-of-=
bounds-write/
>=20
> The above post is very lengthy.  I'll quote just some pieces below:
>=20
>> SSD Advisory - Linux kernel hfsplus slab-out-of-bounds Write
>> March 18, 2025
>> SSD Secure Disclosure technical team
>> Vulnerability publication
>>
>> Summary
>> This advisory describes an out-of-bounds write vulnerability in the Linu=
x kernel that achieves local privilege escalation on Ubuntu 22.04 for activ=
e user sessions.
>>
>> Credit
>> An independent security researcher working with SSD Secure Disclosure.
>>
>> Vendor Response
>> Ubuntu has released the following advisory and fix: https://ubuntu.com/s=
ecurity/CVE-2025-0927
>>
>> Affected Versions
>> Linux Kernel, up to 6.12.0
>> Ubuntu 22.04 with Linux Kernel 6.5.0-18-generic
>>
>> CVE
>> CVE-2025-0927
>=20
>>  * Attila Szasz <szasza.contact@gmail.com>
>>  * @4ttil4sz1a
>>  *
>>  * Exploit for hfs+ slab out of bounds write
>>  * targeting Linux kernel 6.5
>=20
> So I'm also CC'ing Attila Szasz here.
>=20
> The kernel security team ended up rejecting the CVE:
>=20
> https://lore.kernel.org/linux-cve-announce/2025033057-CVE-2025-0927-1436@=
gregkh/T/#u
>=20
>> Filesystem bugs due to corrupt images are not considered a CVE for any
>> filesystem that is only mountable by CAP_SYS_ADMIN in the initial user
>> namespace. That includes delegated mounting.

If nothing else, this can be used to bypass UEFI Secure Boot.

> However, Ubuntu fixed the issue in many of their kernels, with note:
>=20
>> While the upstream kernel developers don't consider exploitable
>> corrupted filesystem images to be a security issue, Ubuntu ships with a
>> polkit rule allowing console users to automount removable media, so we
>> do want to fix this issue for our users.
>=20
> An issue here is that "allowing console users to automount removable
> media" is a high risk, especially if upstream doesn't intend the code to
> be robust and secure against corrupt or malicious filesystem images.
> Maybe there should at least be an allow-list of filesystem types, which
> would be focused on filesystems most commonly used on removable media?

Which ones would you include?

> Another issue is the disconnect on what's CVE-worthy between upstream
> and the distro.  This will keep coming up.  Maybe a solution for such
> cases is to assign CVEs against the distro rather than against upstream?

This is the only option I can see kernel.org being okay with, but it
doesn't solve the underlying problem.  kernel.org's view of what is
(and is not) a vulnerability in a filesystem is severely out of touch
with what distros actually do, and that includes security-conscious
distros like ChromiumOS.

> The linux-cve-announce thread above suggests that upstream may assign
> CVEs to filesystem implementation issues for corruptions that pass fsck.
> So theoretically a way for a distro to avoid relying on robustness and
> security of kernel code beyond what upstream cares about would be to
> force fsck before mounting a filesystem.  However, doing that even for
> filesystems that claim to be clean (as it would be required for
> security) is impractical.  Also, would the CVEs (and eventual fixes) be
> against (for) the kernel or fsck then?

Why is it impractical?  Performance?

> Anyway, now the current report by Muhammed is for another issue in
> almost the same place.  While Attila's was an out of bounds write, the
> new one is reported as an out of bounds read.  So its security relevance
> is not obvious even on systems like Ubuntu that expose this code for
> attack.  This depends on what's done with the value read out of bounds.
>=20
> Below is the portion of Muhammed's message that got to linux-distros:
>=20
>> Re: VULNERABILITY REPORT: Out-of-Bounds Read in HFS+ Filesystem's hfsplu=
s_bnode_read Function
>=20
> On Sun, May 25, 2025 at 01:30:18PM +0800, Muhammed H=C3=BCsam Alzeyya wro=
te:
>> ## Summary
>>
>> A buffer overflow vulnerability exists in the Linux kernel's HFS+
>> filesystem implementation. Specifically, the vulnerability is located in
>> the `hfsplus_bnode_read` function in `fs/hfsplus/bnode.c`. When handling=
 an
>> HFS+ filesystem, this vulnerability allows reading beyond the bounds of =
an
>> allocated memory region. The issue is triggered when the kernel attempts=
 to
>> delete a file on a specially crafted HFS+ filesystem, which can lead to
>> memory corruption, information leakage, and potential privilege escalati=
on.
>=20
>> ## Affected Environments
>>
>> This vulnerability affects:
>> - Linux kernel 6.15.0-rc2 (confirmed)
>> - Potentially earlier versions that include the HFS+ filesystem
>> implementation
>> - Any system that allows mounting of HFS+ filesystems, especially if
>> untrusted users can provide filesystem images
>=20
> Alexander

There are three filesystems that *must* be secure against malicious
images to avoid very serious problems:

1. FAT32, as this is used by the UEFI System Partition and
   so must be mounted by every UEFI-based system.
2. F2FS, as this is used by Android for its writable storage.
3. ext4, as this is used by ChromiumOS for its writable storage.

In all three cases, a malicious filesystem image can be used to
bypass secure boot.  UEFI secure boot is often considered quite
weak and I tend to agree with this, but Android and ChromiumOS
have very strong verified boot mechanisms and being able to break
them is without question worthy of a CVE.  ChromeOS Security
has confirmed that they do indeed consider "attacker corrupts
writable storage to get code execution when the machine reboots"
to be in scope for their threat model.

The only way I can think of to fix this issue is not technical,
but organizational: somehow ensure that the burden of dealing
with these bugs falls onto those who care about them, rather
than on overworked filesystem maintainers.  Is there any way
that this could reasonably be done?  Could the Android and
ChromeOS security teams triage *and fix* bugs involving crafted
images *without* the filesystem maintainers having to be
involved?  Or is the solution for the parties who care about
these vulnerabilities to completely reimplement the filesystems
in Rust and/or using FUSE?
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)=

--------------sIIdQxN8mGqCdB00N9lN0jJt
Content-Type: application/pgp-keys; name="OpenPGP_0xB288B55FFF9C22C1.asc"
Content-Disposition: attachment; filename="OpenPGP_0xB288B55FFF9C22C1.asc"
Content-Description: OpenPGP public key
Content-Transfer-Encoding: quoted-printable

-----BEGIN PGP PUBLIC KEY BLOCK-----=0A=
=0A=
xsFNBFp+A0oBEADffj6anl9/BHhUSxGTICeVl2tob7hPDdhHNgPR4C8xlYt5q49y=0A=
B+l2nipdaq+4Gk6FZfqC825TKl7eRpUjMriwle4r3R0ydSIGcy4M6eb0IcxmuPYf=0A=
bWpr/si88QKgyGSVZ7GeNW1UnzTdhYHuFlk8dBSmB1fzhEYEk0RcJqg4AKoq6/3/=0A=
UorR+FaSuVwT7rqzGrTlscnTDlPWgRzrQ3jssesI7sZLm82E3pJSgaUoCdCOlL7M=0A=
MPCJwI8JpPlBedRpe9tfVyfu3euTPLPxwcV3L/cfWPGSL4PofBtB8NUU6QwYiQ9H=0A=
zx4xOyn67zW73/G0Q2vPPRst8LBDqlxLjbtx/WLR6h3nBc3eyuZ+q62HS1pJ5EvU=0A=
T1vjyJ1ySrqtUXWQ4XlZyoEFUfpJxJoN0A9HCxmHGVckzTRl5FMWo8TCniHynNXs=0A=
BtDQbabt7aNEOaAJdE7to0AH3T/Bvwzcp0ZJtBk0EM6YeMLtotUut7h2Bkg1b//r=0A=
6bTBswMBXVJ5H44Qf0+eKeUg7whSC9qpYOzzrm7+0r9F5u3qF8ZTx55TJc2g656C=0A=
9a1P1MYVysLvkLvS4H+crmxA/i08Tc1h+x9RRvqba4lSzZ6/Tmt60DPM5Sc4R0nS=0A=
m9BBff0Nm0bSNRS8InXdO1Aq3362QKX2NOwcL5YaStwODNyZUqF7izjK4QARAQAB=0A=
zTxEZW1pIE9iZW5vdXIgKElUTCBFbWFpbCBLZXkpIDxhdGhlbmFAaW52aXNpYmxl=0A=
dGhpbmdzbGFiLmNvbT7CwY4EEwEIADgWIQR2h02fEza6IlkHHHGyiLVf/5wiwQUC=0A=
X6YJvQIbAwULCQgHAgYVCgkICwIEFgIDAQIeAQIXgAAKCRCyiLVf/5wiwWRhD/0Y=0A=
R+YYC5Kduv/2LBgQJIygMsFiRHbR4+tWXuTFqgrxxFSlMktZ6gQrQCWe38WnOXkB=0A=
oY6n/5lSJdfnuGd2UagZ/9dkaGMUkqt+5WshLFly4BnP7pSsWReKgMP7etRTwn3S=0A=
zk1OwFx2lzY1EnnconPLfPBc6rWG2moA6l0WX+3WNR1B1ndqpl2hPSjT2jUCBWDV=0A=
rGOUSX7r5f1WgtBeNYnEXPBCUUM51pFGESmfHIXQrqFDA7nBNiIVFDJTmQzuEqIy=0A=
Jl67pKNgooij5mKzRhFKHfjLRAH4mmWZlB9UjDStAfFBAoDFHwd1HL5VQCNQdqEc=0A=
/9lZDApqWuCPadZN+pGouqLysesIYsNxUhJ7dtWOWHl0vs7/3qkWmWun/2uOJMQh=0A=
ra2u8nA9g91FbOobWqjrDd6x3ZJoGQf4zLqjmn/P514gb697788e573WN/MpQ5XI=0A=
Fl7aM2d6/GJiq6LC9T2gSUW4rbPBiqOCeiUx7Kd/sVm41p9TOA7fEG4bYddCfDsN=0A=
xaQJH6VRK3NOuBUGeL+iQEVF5Xs6Yp+U+jwvv2M5Lel3EqAYo5xXTx4ls0xaxDCu=0A=
fudcAh8CMMqx3fguSb7Mi31WlnZpk0fDuWQVNKyDP7lYpwc4nCCGNKCj622ZSocH=0A=
AcQmX28L8pJdLYacv9pU3jPy4fHcQYvmTavTqowGnM08RGVtaSBNYXJpZSBPYmVu=0A=
b3VyIChsb3ZlciBvZiBjb2RpbmcpIDxkZW1pb2Jlbm91ckBnbWFpbC5jb20+wsF4=0A=
BBMBAgAiBQJafgNKAhsDBgsJCAcDAgYVCAIJCgsEFgIDAQIeAQIXgAAKCRCyiLVf=0A=
/5wiwYa/EACv8a2+MMou9cSCNoZBQaU+fTmyzft9hUE+0d5W2UY1RY3OsjFIzm9R=0A=
/4SVccfsqOYLEo+S0vQMIIIqFEq3FCpXXwPzyimotps05VA8U3Bd7yseojFygOgK=0A=
sAMOAee2RCaDDOnoJue01dfZMzzHPO/TVdp3OvnpWipfv5G1Xg96rwbhMLE3tg6N=0A=
xwAHa31Bv4/Xq8CJOoIWvx6fcmZQpz01/lSvsYn0KrfEbTKkuUf0vM9JrCTCP2oz=0A=
VNN5BYzqaq2M4r+jmSyeXLim922VOWqGkUEQ85BSEemqrRS06IU6NtEMsF8EWt/b=0A=
hWjk/9GDKTcnpdJHTrMxTspExBiNrvpI2t+YPU5B/dJJAUxvmhFrbSIbdB8umBZs=0A=
I3AMYrEmpAbh5x7jEjoskUC7uN3o9vpg1oCLS2ePDLtAtyBtbHnkA4xGD7ar8mem=0A=
xpH9lY/i+sC6CyyIUWcUDnnagKyJP0m9ks0GLsTeOCA0bft2XA6rD6aaCnMUsndT=0A=
ctrab42CV5XypjmC4U1rPJ8JQJUh1/3P48/8sMH+3krxpJ06KNWNFaUbaMTGiltZ=0A=
7x9DngklSYrX0T+2G4kVXNmjaljwkoLahwLla2gUWwBSyofXdqyhQdwZsp01KXNQ=0A=
UCyT/Pg+aDcm/E7OMV3d4lf7g/CSxiX2GSEe6BlhSz+Lmd7ZJ3g32M1ARGVtaSBN=0A=
YXJpZSBPYmVub3VyIChJVEwgRW1haWwgS2V5KSA8ZGVtaUBpbnZpc2libGV0aGlu=0A=
Z3NsYWIuY29tPsLBjgQTAQgAOBYhBHaHTZ8TNroiWQcccbKItV//nCLBBQJgOEV+=0A=
AhsDBQsJCAcCBhUKCQgLAgQWAgMBAh4BAheAAAoJELKItV//nCLBKwoP/1WSnFdv=0A=
SAD0g7fD0WlF+oi7ISFT7oqJnchFLOwVHK4Jg0e4hGn1ekWsF3Ha5tFLh4V/7UUu=0A=
obYJpTfBAA2CckspYBqLtKGjFxcaqjjpO1I2W/jeNELVtSYuCOZICjdNGw2Hl9yH=0A=
KRZiBkqc9u8lQcHDZKq4LIpVJj6ZQV/nxttDX90ax2No1nLLQXFbr5wb465LAPpU=0A=
lXwunYDij7xJGye+VUASQh9datye6orZYuJvNo8Tr3mAQxxkfR46LzWgxFCPEAZJ=0A=
5P56Nc0IMHdJZj0Uc9+1jxERhOGppp5jlLgYGK7faGB/jTV6LaRQ4Ad+xiqokDWp=0A=
mUOZsmA+bMbtPfYjDZBz5mlyHcIRKIFpE1l3Y8F7PhJuzzMUKkJi90CYakCV4x/a=0A=
Zs4pzk5E96c2VQx01RIEJ7fzHF7lwFdtfTS4YsLtAbQFsKayqwkGcVv2B1AHeqdo=0A=
TMX+cgDvjd1ZganGlWA8Sv9RkNSMchn1hMuTwERTyFTr2dKPnQdA1F480+jUap41=0A=
ClXgn227WkCIMrNhQGNyJsnwyzi5wS8rBVRQ3BOTMyvGM07j3axUOYaejEpg7wKi=0A=
wTPZGLGH1sz5GljD/916v5+v2xLbOo5606j9dWf5/tAhbPuqrQgWv41wuKDi+dDD=0A=
EKkODF7DHes8No+QcHTDyETMn1RYm7t0RKR4zsFNBFp+A0oBEAC9ynZI9LU+uJkM=0A=
eEJeJyQ/8VFkCJQPQZEsIGzOTlPnwvVna0AS86n2Z+rK7R/usYs5iJCZ55/JISWd=0A=
8xD57ue0eB47bcJvVqGlObI2DEG8TwaW0O0duRhDgzMEL4t1KdRAepIESBEA/iPp=0A=
I4gfUbVEIEQuqdqQyO4GAe+MkD0Hy5JH/0qgFmbaSegNTdQg5iqYjRZ3ttiswalq=0A=
l1/iSyv1WYeC1OAs+2BLOAT2NEggSiVOtxEfgewsQtCWi8H1SoirakIfo45Hz0tk=0A=
/Ad9ZWh2PvOGt97Ka85o4TLJxgJJqGEnqcFUZnJJriwoaRIS8N2C8/nEM53jb1sH=0A=
0gYddMU3QxY7dYNLIUrRKQeNkF30dK7V6JRH7pleRlf+wQcNfRAIUrNlatj9Txwi=0A=
vQrKnC9aIFFHEy/0mAgtrQShcMRmMgVlRoOA5B8RTulRLCmkafvwuhs6dCxN0GNA=0A=
ORIVVFxjx9Vn7OqYPgwiofZ6SbEl0hgPyWBQvE85klFLZLoj7p+joDY1XNQztmfA=0A=
rnJ9x+YV4igjWImINAZSlmEcYtd+xy3Li/8oeYDAqrsnrOjb+WvGhCykJk4urBog=0A=
2LNtcyCjkTs7F+WeXGUo0NDhbd3Z6AyFfqeF7uJ3D5hlpX2nI9no/ugPrrTVoVZA=0A=
grrnNz0iZG2DVx46x913pVKHl5mlYQARAQABwsFfBBgBAgAJBQJafgNKAhsMAAoJ=0A=
ELKItV//nCLBwNIP/AiIHE8boIqReFQyaMzxq6lE4YZCZNj65B/nkDOvodSiwfwj=0A=
jVVE2V3iEzxMHbgyTCGA67+Bo/d5aQGjgn0TPtsGzelyQHipaUzEyrsceUGWYoKX=0A=
YyVWKEfyh0cDfnd9diAm3VeNqchtcMpoehETH8frRHnJdBcjf112PzQSdKC6kqU0=0A=
Q196c4Vp5HDOQfNiDnTf7gZSj0BraHOByy9LEDCLhQiCmr+2E0rW4tBtDAn2HkT9=0A=
uf32ZGqJCn1O+2uVfFhGu6vPE5qkqrbSE8TG+03H8ecU2q50zgHWPdHMOBvy3Ehz=0A=
fAh2VmOSTcRK+tSUe/u3wdLRDPwv/DTzGI36Kgky9MsDC5gpIwNbOJP2G/q1wT1o=0A=
Gkw4IXfWv2ufWiXqJ+k7HEi2N1sree7Dy9KBCqb+ca1vFhYPDJfhP75I/VnzHVss=0A=
Z/rYZ9+51yDoUABoNdJNSGUYl+Yh9Pw9pE3Kt4EFzUlFZWbE4xKL/NPno+z4J9aW=0A=
emLLszcYz/u3XnbOvUSQHSrmfOzX3cV4yfmjM5lewgSstoxGyTx2M8enslgdXhPt=0A=
hZlDnTnOT+C+OTsh8+m5tos8HQjaPM01MKBiAqdPgksm1wu2DrrwUi6ChRVTUBcj=0A=
6+/9IJ81H2P2gJk3Ls3AVIxIffLoY34E+MYSfkEjBz0E8CLOcAw7JIwAaeBTzsFN=0A=
BGbyLVgBEACqClxh50hmBepTSVlan6EBq3OAoxhrAhWZYEwN78k+ENhK68KhqC5R=0A=
IsHzlL7QHW1gmfVBQZ63GnWiraM6wOJqFTL4ZWvRslga9u28FJ5XyK860mZLgYhK=0A=
9BzoUk4s+dat9jVUbq6LpQ1Ot5I9vrdzo2p1jtQ8h9WCIiFxSYy8s8pZ3hHh5T64=0A=
GIj1m/kY7lG3VIdUgoNiREGf/iOMjUFjwwE9ZoJ26j9p7p1U+TkKeF6wgswEB1T3=0A=
J8KCAtvmRtqJDq558IU5jhg5fgN+xHB8cgvUWulgK9FIF9oFxcuxtaf/juhHWKMO=0A=
RtL0bHfNdXoBdpUDZE+mLBUAxF6KSsRrvx6AQyJs7VjgXJDtQVWvH0PUmTrEswgb=0A=
49nNU+dLLZQAZagxqnZ9Dp5l6GqaGZCHERJcLmdY/EmMzSf5YazJ6c0vO8rdW27M=0A=
kn73qcWAplQn5mOXaqbfzWkAUPyUXppuRHfrjxTDz3GyJJVOeMmMrTxH4uCaGpOX=0A=
Z8tN6829J1roGw4oKDRUQsaBAeEDqizXMPRc+6U9vI5FXzbAsb+8lKW65G7JWHym=0A=
YPOGUt2hK4DdTA1PmVo0DxH00eWWeKxqvmGyX+Dhcg+5e191rPsMRGsDlH6KihI6=0A=
+3JIuc0y6ngdjcp6aalbuvPIGFrCRx3tnRtNc7He6cBWQoH9RPwluwARAQABwsOs=0A=
BBgBCgAgFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmbyLVgCGwICQAkQsoi1X/+c=0A=
IsHBdCAEGQEKAB0WIQSilC2pUlbVp66j3+yzNoc6synyUwUCZvItWAAKCRCzNoc6=0A=
synyU85gD/0T1QDtPhovkGwoqv4jUbEMMvpeYQf+oWgm/TjWPeLwdjl7AtY0G9Ml=0A=
ZoyGniYkoHi37Gnn/ShLT3B5vtyI58ap2+SSa8SnGftdAKRLiWFWCiAEklm9FRk8=0A=
N3hwxhmSFF1KR/AIDS4g+HIsZn7YEMubBSgLlZZ9zHl4O4vwuXlREBEW97iL/FSt=0A=
VownU2V39t7PtFvGZNk+DJH7eLO3jmNRYB0PL4JOyyda3NH/J92iwrFmjFWWmmWb=0A=
/Xz8l9DIs+Z59pRCVTTwbBEZhcUc7rVMCcIYL+q1WxBG2e6lMn15OQJ5WfiE6E0I=0A=
sGirAEDnXWx92JNGx5l+mMpdpsWhBZ5iGTtttZesibNkQfd48/eCgFi4cxJUC4PT=0A=
UQwfD9AMgzwSTGJrkI5XGy+XqxwOjL8UA0iIrtTpMh49zw46uV6kwFQCgkf32jZM=0A=
OLwLTNSzclbnA7GRd8tKwezQ/XqeK3dal2n+cOr+o+Eka7yGmGWNUqFbIe8cjj9T=0A=
JeF3mgOCmZOwMI+wIcQYRSf+e5VTMO6TNWH5BI3vqeHSt7HkYuPlHT0pGum88d4a=0A=
pWqhulH4rUhEMtirX1hYx8Q4HlUOQqLtxzmwOYWkhl1C+yPObAvUDNiHCLf9w28n=0A=
uihgEkzHt9J4VKYulyJM9fe3ENcyU6rpXD7iANQqcr87ogKXFxknZ97uEACvSucc=0A=
RbnnAgRqZ7GDzgoBerJ2zrmhLkeREZ08iz1zze1JgyW3HEwdr2UbyAuqvSADCSUU=0A=
GN0vtQHsPzWl8onRc7lOPqPDF8OO+UfN9NAfA4wl3QyChD1GXl9rwKQOkbvdlYFV=0A=
UFx9u86LNi4ssTmU8p9NtHIGpz1SYMVYNoYy9NU7EVqypGMguDCL7gJt6GUmA0sw=0A=
p+YCroXiwL2BJ7RwRqTpgQuFL1gShkA17D5jK4mDPEetq1d8kz9rQYvAR/sTKBsR=0A=
ImC3xSfn8zpWoNTTB6lnwyP5Ng1bu6esS7+SpYprFTe7ZqGZF6xhvBPf1Ldi9UAm=0A=
U2xPN1/eeWxEa2kusidmFKPmN8lcT4miiAvwGxEnY7Oww9CgZlUB+LP4dl5VPjEt=0A=
sFeAhrgxLdpVTjPRRwTd9VQF3/XYl83j5wySIQKIPXgT3sG3ngAhDhC8I8GpM36r=0A=
8WJJ3x2yVzyJUbBPO0GBhWE2xPNIfhxVoU4cGGhpFqz7dPKSTRDGq++MrFgKKGpI=0A=
ZwT3CPTSSKc7ySndEXWkOYArDIdtyxdE1p5/c3aoz4utzUU7NDHQ+vVIwlnZSMiZ=0A=
jek2IJP3SZ+COOIHCVxpUaZ4lnzWT4eDqABhMLpIzw6NmGfg+kLBJhouqz81WITr=0A=
EtJuZYM5blWncBOJCoWMnBEcTEo/viU3GgcVRw=3D=3D=0A=
=3Dx94R=0A=
-----END PGP PUBLIC KEY BLOCK-----=0A=

--------------sIIdQxN8mGqCdB00N9lN0jJt--

--------------kKTl08ITk06CdPTw0BLKf28N--

--------------eJ0RnMViQGf2CR5rTUxPeion
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEopQtqVJW1aeuo9/sszaHOrMp8lMFAmg+bkAACgkQszaHOrMp
8lNqgw/6AgPEAx5AAO32ABVYlZrgtagx9jtzG4v7xgC5V9buYxz25GFTntN8YSfN
le/4Rs78xEGC6sA1vfkRR3me0344TJLIxJyQoBnjJwchZVahqNgpH3SaTHpQpc3D
JyEIGKbcOBIlsmEkS/37x7Nxgzu97Sk5SPaFNCrinFXhVOevb5zHrlBSBZZify8i
+K6eXIrgc7FOtKChmLHXrL79JmnU+cKZRfhANtR+h7mAfmJmTLE4Ko6l6ZE436/4
P8Sf9I5pIABjk6NaYhleDXkhKSrfExtlWVXSIOGCLJZuatHSr4kahZmpBnC/cmh1
LLaxAl6Z1HNYtCd+k3vd4bHAuJoeqVhh+ecJdYwG1ZBE2YS6v67SZgOTqsz9Epbv
2/EDFK9O+pz8gKoKBVkV/0eftIYhYBjF/CSIbwzyWi5HaPJthYIjI8x0JbAbjUFM
Mu7TcOq5eSNaOcyzpjCztf0yDLe/oz8g38rBQ4x6NRW0b19oCkMDRmzhT2RWgd6f
yIRT0N6nuWS8Bgc68PaowoOf67kGtrEBAwZfOlhmyvm6/+Y3MzvjyTEWhks+AfVY
n9AcV0ZEgFRrDVaQleDBao6eDPY/wc7D35ep3Lxv4d71fn8UOhnxOlVvs7kJq1zs
4ugYwu7yLjWKFNf2MdNYPgNRGEwflv3lIYx8YtjmxmzK4SqEL9U=
=CsX/
-----END PGP SIGNATURE-----

--------------eJ0RnMViQGf2CR5rTUxPeion--
