Received: (qmail 1224 invoked by uid 550); 16 May 2026 18:17:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24069 invoked from network); 16 May 2026 17:21:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.fr; s=s2048; t=1778952054; bh=70YI5BhVVF8X8eXHK4cEQZok1SCBVxNn+VulgLQzDKo=; h=Date:Subject:To:References:From:In-Reply-To:From:Subject:Reply-To; b=n6rrLR6iq41PD8+CSYA8EiTioysQ5ZfftAIlU/luIrzwXUryPbH5bNFdljS2ZpWQOCbPsBlx/zDkLf8iziscdbqAUZdBsMLErCJ8ARSPHWWLSeRJCs1cHnF1PxhaftMD21C8DICcgYXYE23JOXESXEYHPg6RWuTspsaqSrnWBqFOq4UZPHEJCAmafIC0qkfs8j8vcHtL/504ykiS/fXYIga8PrKy131bFzeOoWg71nDEkhhdETmPrrFBri0LfDiP5uYjs+qdPSIrTX8F+c0Q4f9cx444DOiFvjArQHvAQT/sDQtn553M8Ec625HnvkL7gOFeF1sQarO6xQqfSDGHkg==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1778952054; bh=cFa4UcyAP1HNGbK8rlsoTojVJ50AWEO/55/w3AvlYHj=; h=X-Sonic-MF:Date:Subject:To:From:From:Subject; b=ThqkpsRAbsiy4lkTpMFYgGwfHWkMZnCO8wJ9+WbZxXXQ/dCQ4EC1kcvxUjLbC3Mzzfao+tFCuLbxQ0YCRcKMqkJ3y34eG3BsUa78tEEXEfdZ0OKlCSMws6W8E8vvdaznXdQQUnOkgmGSWdzRPXUBnoC8h7jkRPlQynEVv26elmbDg4MQHZCPT8dlo4XePvmTjCZ4ECFb19LiI6VniB9dmUNw5g0JMmXeCrkuBpIAK1DvB5hgcFQi4u6AZvzbkq39QGNbPKBa2Tl/tHNaT6/eSufCAL674DhNlZX/DC811TMMBI+nFZNGaks6IpcgNUJdFDhNvr0b0WSfnWXK09Wmuw==
X-YMail-OSG: pMidp2kVM1nZNZLNYbxRMO3y77hBsx4MsoKTPdttmWZgC2M4DuLmva124DXSYOk
 mCcVt65CdB7OMFbkVsJHErN62HygYtcMJez3CzlzmJf9fzn6g8M37JoJyG8ttHWDEy2u9ZbCht0S
 xS6ZZifBrBgo.O6XzHGFbmINY6mZ47kCs00b30TTJFLv6DGzm7juxqNzQ6EHnGgxONTjhIYqIzEB
 .Pv2TKk89oZQVOmfSiwcquc6UTizIpt6glQNnK8HaZDtGj8J5z2hfcrrGYaZQFgympZJt9yBbFBu
 bfVu7dYMos_Yks118d8EHmiyR4rrJemvqhL8ndX7lVT0Gi5DeiWHPJQ9XYkNBahtNRXQPmn2TbeC
 mUBcCvo4XGOweFnlb_z7HAti6LzO8ujItqSkDnza9rfyZ60uj7w_SweFGduhJFwF0pooYO5UabiC
 MklGMrEqGnh2G3.aOU2aucdP2VGVh.ihEIujlWwbZZ_DjP4Pvh_Z1Vh.b6D7fTJwPdSobqAWK9R8
 Y8RQSz8JqXTlctzMO56zbztgvsMjMbFsLiUtaMle0ZuNSRsZlOHt2A2jHj6pPCP9p8jGIhhkWioL
 g423oroAJ6AXO4Wc9hwcpl3JVmzI6gHvfMktYYOrqdSp46WwDD7v59jQxFMJjgWgyBC5Cg_SPXJa
 HnFx4QTOjxB9QK3_l7sVS0Llp.0t_tTjKtvr.lZtQkT0Q8GhStgsG4lBfMXZaPMetL9Dk0rEfISD
 WFB0fF2yxN4CrTEBMQKtWPNRP25DPIg9gYxH0SuS.awXOVZ7D4acGgdTyjt8HV48RwGLZzPUywLO
 mkYcg7Uey.HIUvEJWAaRPyIOwvBEXWGp3YLqZMloJes_4slhT3N5_0GhgDzQFuev1_DTrHhEK2AO
 _8.73u3GryLPYBbzDIeId9p8frOhXu.tWEPciaGiEGCA1qBUNxCkZXh5IFjjzORvcTogVjLDJ_gq
 L6aChDi8rjoZaeAMFzudDlLm920dCvDDsN6BIzzLO8H5WhQ9oNk1h.PH7iac8ChhLKf71fEPdxt5
 fm7PXAIMUQIV5xA.1dzdhOSoW5okwsFrdoJ3AAz3E024ycomN2aRvTAx7bM9cZfFTr5I9c2RveEU
 i5.B5BBtaNug4_79c0tL.bW82WiEcAgB1W.NMVBrfvpgo1SbvCLEyIyWvQSlUYmus9ZGf_XpagkQ
 xea7AzazyfLccyptu99Nm5oVUPFHMT3HQqXkv7xvRP0meybyeONsgR6i.sYLRwuYoh_wxhAcbvva
 lC6IrbKN2XN7_FvY3apvKaijza9qC0evQBI8JvytHKWvG_KmG7.tWC0vdbNfj1RP.M7tsCNmJ04G
 h1jyA53J5rH3upcQaFkfYxYnsn_UnWyEbSPrOTiySpFxd_rjWJlXkrDvAlxF90qPNrHEdyv_tukt
 UCxKVFVC6sZY.I3x_ePV73jEwJWIpA7LF.QYBLBatFX7pRYtXnk7BZV_YY3vCxby_Bs6bTeR3IB8
 K5TLo0h81ZBochClSLp47jrjdvizg.bXvQjy8f6bd9FqTOQFbrOFm8o3I_gzine0mxR_cPvSeorq
 UhegtmLiu9j0x1In5fIYF7z3HSqOmAK7BLvCnd_vx8FCZczd0NxjGzoGV5hSQWO4NbNHSR2heWiT
 IuokKljUSOlEOuAjNPhwNMStEKLKS3Y6Xt1442U3f9sRSejL0Na5QrF5wPoaQtfpXZ1VpFkZsdQU
 gLRME4aErvqTXOUY8fI5a1WWUJYIEqIJIurl1sLo4jB9mnXMpU0tarigSx9FspJfRP1iHV.fR2ll
 pba3vhDin9nTAucy1NnhOTDCHL1jDAsiXqJB2H0YzJ9_WeUE3_bDp_zJq_dlfLBXGuXCd7AT6li1
 Yhz2j_JdingbvaK8oZRyYhxkC2gNW3gHXqyUntdFCgbPy6a99ZM3cq4bLl5n87oWro5vOBN6KpT9
 wdFpQHZIzLZ58JdipP7QDFvipz1pNx6e5gq6hddQabl7hs1BZixcil_g0QAwN8Obv6XQksHSPl2Q
 rZYBo.LeSsXmUW.YJTTUwTiln7pStqRFxVeoCnWCTd4mmUInOqOohgksvf_3uwbL8uZ9VuOzNHPX
 lXbewH54.7TD2piHLrd3p3EcI.m4QUvGqtZWcVlmN1dMH_RUlqt7hkpFwFemOaxfw8qTyfV1CNhW
 AsOUeJBeMrbK7AWZI45pA5za4kvMuNX0C2KK3nLIHsIvGw0CL8sz4ASv1JTOLt86u87tzZjKPd2z
 b9czlEF0SKYjBjAjiWw--
X-Sonic-MF: <lionel_debroux@yahoo.fr>
X-Sonic-ID: 1036befc-b251-4f5d-a76d-f0d1ed39a3ff
Message-ID: <146c9b73-9c73-4f9e-a348-cd8fbb05cc7c@yahoo.fr>
Date: Sat, 16 May 2026 19:20:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <20260516150545.7570323b@hboeck.de>
Content-Language: en-US
From: Lionel Debroux <lionel_debroux@yahoo.fr>
In-Reply-To: <20260516150545.7570323b@hboeck.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailer: WebService/1.1.25725 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.yahoo
Subject: Re: [oss-security] Recent Kernel exploits, attack surface reduction,
 example IPSEC

Hi,

 > Multiple of the recent kernel exploits have affected the "esp" Linux
 > Kernel module. ESP is, as far as I understand, part of IPSEC, and I
 > think it's fair to say that IPSEC is not widely used these days. I
 > think this raises some questions about attack surface. I want to note
 > that I use IPSEC as an example here, but it likely applies in very
 > similar ways to many features that are part of the Linux Kernel and
 > are not used in most common setups.
 >
 > For everyone who builds custom kernels and doesn't use IPSEC, it's
 > probably a good idea to disable all IPSEC-related config options, e.g.:
 > CONFIG_INET_ESP
 > CONFIG_INET6_ESP
 > CONFIG_INET_AH
 > CONFIG_INET6_AH
 >
 > I believe IPCOM is also rarely used separately from IPSEC, so consider
 > also disabling these:
 > CONFIG_INET_IPCOMP
 > CONFIG_INET6_IPCOMP
 >
 > However, there's a broader point here: I think it's common these
 > days that Linux distributions install most or all kernel modules by
 > default, and loading them happens automatically. Which, in many cases,
 > means people are potentially affected by security flaws in features
 > they never use.
 > "Attack surface reduction" is widely considered to be a good security
 > principle, and I wonder if we can do better here.
 >
 > To pick the example of IPSEC, i wonder if it wouldn't be better to
 > have, e.g., a separate "linux-modules-ipsec" package that isn't
 > installed by default. People who use and need IPSEC will likely know
 > that they need it, and can install it separately.
 >
 > I'm aware this doesn't come for free, and will add increased
 > complexity to kernel packaging. But think about it like this: If we
 > had that separation, three of the recent kernel local root exploits
 > would've been much less impactful, and wouldn't have affected most
 > systems.
Not building and installing by default infrequently used modules is 
indeed one of the approaches for effective attack surface reduction.

Let's mention two other ones:
1) inserting dozens to hundreds of "install XYZ /bin/true" lines in 
/etc/modprobe.d/*.conf files, plus lines in /etc/sysctl.d/*.conf files.

2) making it harder for unprivileged programs to just auto-load kernel 
modules corresponding to uncommon socket / filesystem / etc. types, and 
exploit whichever vulnerabilities they contain. I'm thinking about the 
MODHARDEN grsecurity feature here.


I've been doing some of 1) for years against repeat security offenders 
(tipc, dccp, sctp !, rds, can !, ppp*, ksmbd !, firewire*, n_hdlc, 
n_gsm, several uncommon filesystems, unprivileged user namespaces !!, 
BPF JIT !!, io_uring !!, etc.), to the extent that distro kernels allow 
such hardening: nowadays, most distros force enable the BPF JIT...
This whack-a-mole process is individual, inefficient and incomplete: I 
had missed algif_aead, esp4, esp6 and rxrpc, because I hadn't seen them 
featured on security vulnerability feeds before.

As for 2): a '2010 grsec patch I have lying around already contains 
occurrences of "MODHARDEN". The published 
grsecurity-3.1-5.10.41-202105280954.patch contains 9 occurrences of 
"MODHARDEN": preprocessor guards for 8 small blocks of code (< 100 LOC 
total) and the following Kconfig text (reformatted to prevent wrapping):

config GRKERNSEC_MODHARDEN
     bool "Harden module auto-loading"
     default y if GRKERNSEC_CONFIG_AUTO
     depends on MODULES
     help
        If you say Y here, module auto-loading in response to use of some
        feature implemented by an unloaded module will be restricted to
        root users.  Enabling this option helps defend against attacks
        by unprivileged users who abuse the auto-loading behavior to
        cause a vulnerable module to load that is then exploited.

        If this option prevents a legitimate use of auto-loading for a
        non-root user, the administrator can execute modprobe manually
        with the exact name of the module mentioned in the alert log.
        Alternatively, the administrator can add the module to the list
        of modules loaded at boot by modifying init scripts.

        Modification of init scripts will most likely be needed on
        Ubuntu servers with encrypted home directory support enabled,
        as the first non-root user logging in will cause the ecb(aes),
        ecb(aes)-all, cbc(aes), and cbc(aes)-all  modules to be loaded.

IOW, MODHARDEN is an old idea for hardening Linux, and its 
implementation is tiny.
(BTW, looking at the aforementioned patch: 3 of these blocks of code 
prevent non-fs modules being loaded through mount... which would mean 
that mainline Linux can be abused to do that)


I used to use grsec kernels for daily desktop usage. MODHARDEN was 
enabled in my configs and the ones of Debian-packaged kernels (I 
remembered about the log splats caused by grub-probe, and I've just 
checked the Debian config-4.9.0-4-grsec-amd64 file from December 2017). 
My experience was that MODHARDEN didn't prevent me from doing what I 
wanted and needed with my computer.
Other mileages would vary... up to a point. Some desktop and server 
users would definitely be unaffected like I was.


Lionel Debroux.
