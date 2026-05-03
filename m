Received: (qmail 7222 invoked by uid 550); 4 May 2026 01:07:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5975 invoked from network); 3 May 2026 21:53:23 -0000
From: Sam James <sam@gentoo.org>
To: oss-security@lists.openwall.com
Cc: Taeyang Lee <0wn@theori.io>,  Brad Spengler <spender@grsecurity.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Solar Designer
 <solar@openwall.com>
In-Reply-To: <87jytkb2gv.fsf@gentoo.org>
Organization: Gentoo
References: <afJorKIje4O6dXbH@netmeister.org> <87v7d4b7a3.fsf@gentoo.org>
	<87jytkb2gv.fsf@gentoo.org>
User-Agent: mu4e 1.14.1; emacs 31.0.50
Date: Sun, 03 May 2026 22:53:10 +0100
Message-ID: <878qa0b1o9.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Subject: Re: [oss-security] Precise disclosure contents for copyfail (Re:
 [oss-security] CVE-2026-31431: CopyFail: linux local privilege scalation)

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Sam James <sam@gentoo.org> writes:

> Sam James <sam@gentoo.org> writes:
>
>> Jan Schaumann <jschauma@netmeister.org> writes:
>>
>>> Hi,
>>>
>>> This is currently making the rounds and looks pretty
>>> severe:
>>>
>>> https://copy.fail/
>>>
>>> A local privilege escalation vulnerability with a
>>> working PoC python script exploiting a logic flaw in
>>> the kernel crypto API (AF_ALG) affecting most Linux
>>> distributions.
>>>
>>> More detailed write-up:
>>> https://xint.io/blog/copy-fail-linux-distributions
>>>
>>> [...]
>>
>> Are we aware of what precisely xint disclosed to the kernel security
>> team?
>>
>> My assumption based on the tool output in the write-up is that enough
>> was disclosed to know this was at least an easily-exploitable LPE (*).
>
> It's been pointed out to me that Brad Spengler has commented on X [0],
> linking to Brian Pak of xint saying [1]:
>
>> We also provided a fully working exploit to the kernel security team
>> when we reported. We=E2=80=99ve since learned that such details don=E2=
=80=99t
>> automatically get forwarded downstream and that Linux kernel commit
>> messages are typically kept minimal. That=E2=80=99s simply how the proce=
ss works.
>
> So yes, the kernel team were very much aware of the impact from the
> offset.
>
> I hadn't seen Brian's thread until now, it is interesting reading [2].

There's also a link to the kernel MLs from 2026-03-27 (!) where they say
"page-cache exposure" [0].

Now, going back to the CVSS score in linux's security/vulns.git:
"""
commit cb9d133eed6ab823b8fdefdc10600189aa69a107
Author:     Sasha Levin <sashal@kernel.org>
AuthorDate: Sat Apr 25 07:35:42 2026 -0400
Commit:     Sasha Levin <sashal@kernel.org>
CommitDate: Sat Apr 25 07:56:40 2026 -0400

    CVE-2026-31431: Add CVSS 3.1 score (7.8 HIGH)

    CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H

    AV:L -The vulnerable algif_aead path is reached through local
        AF_ALG socket syscalls: socket, bind, setsockopt, accept, sendmsg,
        and recvmsg. It is not directly reachable from remote network
        packets.
    AC:L -A local attacker can construct the AF_ALG AEAD request,
        choose buffer layout, AAD/tag lengths, and invoke recvmsg directly.
        Any race or SGL layout condition is attacker-controlled from the
        same process.
    PR:L -Creating and using AF_ALG AEAD sockets requires only an
        unprivileged local user on systems with CRYPTO_USER_API_AEAD
        enabled. The traced socket, bind, setsockopt, accept, sendmsg, and
        recvmsg paths do not require CAP_SYS_ADMIN or other real root
        privileges.
    UI:N -No victim interaction is needed once the attacker has local
        code execution. The attacker can open and drive the AF_ALG socket
        entirely through syscalls.
    S:U -The issue remains within the kernel/user crypto API security
        authority and does not cross a VM, IOMMU, or separate sandbox
        boundary. This is a standard local kernel attack surface.
    C:H -The removed in-place AEAD design used user-writable RX
        scatterlists as crypto source data and chained TX tag pages,
        creating a plausible decryption/authentication bypass for data
        protected by secret AEAD keys. Under the required uncertainty rule,
        this is scored as high confidentiality impact.
    I:H -The bug undermines AEAD authenticity by allowing source data
        used by the crypto operation to diverge from the data originally
        submitted and authenticated. This can allow forged or corrupted
        plaintext/ciphertext results, so integrity impact is high.
    A:H -The vulnerable path builds complex chained scatterlists from
        attacker-controlled local buffers and related AF_ALG fixes show
        these paths can lead to scatterwalk NULL dereferences and kernel
        panics. A local attacker can repeatedly trigger the operation, so
        availability impact is high.

    Signed-off-by: Sasha Levin <sashal@kernel.org>
"""

How is this remotely accurate? They clearly knew before then. Not only
would the kernel security project have known (because of the private disclo=
sure
by the reporter), but by that point, the public ML post referring to the
page cache was already out there saying it explicitly?

That predates both the CVE being assigned and obviously then the CVSS
score for it.

Per Greg's comments [1]:
>> The scoring reasoning for this CVE does not hint at its severity and the
>> threat being imminent.  It's as obscure as most of the rest of 168 are
>> (which for most of them is probably a result of actually not having
>> exploitability and impact analysis).
> Why do you think that we knew this was "imminent"?  The CVE team has no
> such knowlege as no one is obligated to tell us that they are about to
> let loose a trivial exploit.

Is the CVE team not aware of public mailing list postings? Perhaps
including full links and context in commit messages would help them not
lose track? If the CVE team were unable to do this, then it absolutely
would have helped distributions. I often chase links given in commit
messages?

Is the kernel honestly proud of how this went?

>
> Thanks to Brad and the person who sent me the link to the tweet.
>
>>
>> (*) Because part of their promotion here is for the tool's ability to
>> get the analysis right, so it implies that they didn't figure it out
>> later, and that the tool did "most of the work". Whether or not that's
>> actually the case, I of course don't know.
>>
>> thanks,
>> sam
>
> [0] https://xcancel.com/spendergrsec/status/2051045704487829878
> [1] https://xcancel.com/brian_pak/status/2050255271184994538
> [2] https://xcancel.com/brian_pak/status/2050255258098766101#m

[0] https://lore.kernel.org/all/CAH-2XvLaZR+Ee+q35wXexKEh3AE7R0w1AGC__kV9To=
_6sLMdhQ@mail.gmail.com/
[1] https://www.openwall.com/lists/oss-security/2026/05/01/3

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEBBAEWCgCpFiEEJaa7iN2bdkxrVUHCc4QJ9SDfkZAFAmn3w8YbFIAAAAAABAAO
bWFudTIsMi41KzEuMTIsMiwyXxSAAAAAAC4AKGlzc3Vlci1mcHJAbm90YXRpb25z
Lm9wZW5wZ3AuZmlmdGhob3JzZW1hbi5uZXQyNUE2QkI4OEREOUI3NjRDNkI1NTQx
QzI3Mzg0MDlGNTIwREY5MTkwDxxzYW1AZ2VudG9vLm9yZwAKCRBzhAn1IN+RkHET
AP9WW3qFOk88ZaK5bI7CabX5yBO2MBTakx41AztKwhK5vQEAn+Yu27bmhhLv5k0D
RwNiWxfpYikLgGYII1+nlYQLmwQ=
=L/h0
-----END PGP SIGNATURE-----
--=-=-=--
