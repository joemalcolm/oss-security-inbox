X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4675" "Thursday" "20" "January" "2022" "12:02:55" "+0100" "Pietro Albini" "pietro@pietroalbini.org" nil "97" "[oss-security] Race condition in the Rust standard library (CVE-2022-21658)" nil nil nil "1" nil nil (number mark "U       pietro@pietr Jan 20   97/4675  " thread-indent "\"[oss-security] Race condition in the Rust standard library (CVE-2022-21658)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Race condition in the Rust standard library (CVE-2022-21658)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9464 invoked by uid 550); 20 Jan 2022 12:23:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28179 invoked from network); 20 Jan 2022 11:03:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	pietroalbini.org; h=cc:content-transfer-encoding:content-type
	:date:date:from:from:in-reply-to:message-id:mime-version
	:reply-to:sender:subject:subject:to:to; s=fm1; bh=GE6Qfn+g8Tc3tL
	cW0qzK9qDxK28ESVUpgnmjUEzCOKs=; b=JFP+ODkIq6U/PRsRneLGyxqNWzyLs9
	Ji6Eyjc+yMZKS/Pf1MkigcmScasUSox0jG0HY2V3djTUxSbRvDntaIxEa8UXuXWj
	6GsspZQBPlyj12++2pVbSHXH/981A6QQZSfmDoB9kNACtiHfC+b6uVyKsLLWotfM
	ior99Eb7MHXlUMC0goGcoAO6muSLzISa3YeNi4Jcw8HJuAyiou7LJn1dllr1TKVC
	SJ4sHiI8mU0NAf0scBXcsru54mhCPlUGyvXsNaIfmpA1TnoprycMrFcSLAepni6c
	t9GuTiRrVYkxmLDSKkJOWF5Rrdfiuo8eEz9A3DMkSGxqkPpVzHYGCjHw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:date:date:from:from:in-reply-to:message-id:mime-version
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=GE6Qfn+g8Tc3tLcW0
	qzK9qDxK28ESVUpgnmjUEzCOKs=; b=g+pS4tfLmQTnAe5NsemWYwY7Qb3ytKtJ4
	eWj7+BshswcdxW3xXVqMKE42alH+C8lXghrOPiBL9eW6vKwhRzJ69p0KiAGAunoe
	JBERLK6YggccQgeMcuj0nAzDe4sdNcguTsCLBsU5vy6LLz9BpQURK5biT3qUBzAU
	r45xneHN3KpXVwSehsinnfT+CiIj0JVgkXpcovAxFm4bmFFUftf6j3z4Cv31/vUA
	kP2bU5CJPxi2oFlWaB1rlf4hvkLva5oEQ/6zGzYZc7irmRoXvumMc/VKTX4mBNJ5
	nBa9FWUMpygY9m62jZejQOih1hXgky2SDBzf88HsaueZ8UNwsR1nw==
X-ME-Sender: <xms:YEHpYQnEWycywF-Lw43v4S6qDsiPerF-OXfmPYKS7yb3h-SQrvfZFA>
    <xme:YEHpYf2pdAKdl4vSSkBN-9j64aevk44RKJpjmUmx9Ncu4wkfxtFIofNlYVrL3zvId
    YlaJrZxiZ-I5JHNGOA>
X-ME-Received: <xmr:YEHpYeoGAu9pmneJMHKuBOesrPkeCIVnwschhujCSONKew5AtdPlCWe-T_UZ_v_27npVb10z7txf6mkC8ahA2VCk4_dQatNdZA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudekgddvtdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhephffuvffkffgfgggtgfesthejredttd
    efjeenucfhrhhomheprfhivghtrhhoucetlhgsihhnihcuoehpihgvthhrohesphhivght
    rhhorghlsghinhhirdhorhhgqeenucggtffrrghtthgvrhhnpefgteevgeejgfeutefgje
    dufeekvedtleelheehleeiteejtdejtddthffhiefgleenucffohhmrghinheptghvvgdr
    ohhrghdpghhithhhuhgsrdgtohhmpdhruhhsthdqlhgrnhhgrdhorhhgnecuvehluhhsth
    gvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepphhivghtrhhosehpihgv
    thhrohgrlhgsihhnihdrohhrgh
X-ME-Proxy: <xmx:YEHpYcmZriZNz9S0xoItP-_kc40SnCbJ0wQiP7nxsB0Osl3koDoXRw>
    <xmx:YEHpYe3UEaZheWC4KH5FHxwvwK8rmWkoHBGNVkBqhwSpo68b7GG0Sw>
    <xmx:YEHpYTszRwx-5VCKZ3Ta61zrjGyK83S-WytKO0z-t3WRqHhcx6cGfg>
    <xmx:YUHpYXg_8-oZxjOjrfR44uInrlHegzBUTz-vbSVjI_0Vz_CgVPn7Dg>
From: Pietro Albini <pietro@pietroalbini.org>
To: oss-security@lists.openwall.com
Message-ID: <7a65d359-c698-a308-e6e8-3c0c44cff037@pietroalbini.org>
Date: Thu, 20 Jan 2022 12:02:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Race condition in the Rust standard library (CVE-2022-21658)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

The Rust Security Response WG was notified that the `std::fs::remove_dir_all`
standard library function is vulneable a race condition enabling symlink
following (CWE-363). An attacker could use this security issue to trick a
privileged program into deleting files and directories the attacker couldn't
otherwise access or delete.

This issue has been assigned [CVE-2022-21658][1].

## Overview

Let's suppose an attacker obtained unprivileged access to a system and needed
to delete a system directory called `sensitive/`, but they didn't have the
permissions to do so. If `std::fs::remove_dir_all` followed symbolic links,
they could find a privileged program that removes a directory they have access
to (called `temp/`), create a symlink from `temp/foo` to `sensitive/`, and wait
for the privileged program to delete `foo/`. The privileged program would
follow the symlink from `temp/foo` to `sensitive/` while recursively deleting,
resulting in `sensitive/` being deleted.

To prevent such attacks, `std::fs::remove_dir_all` already includes protection
to avoid recursively deleting symlinks, as described in its documentation:

 > This function does **not** follow symbolic links and it will simply remove
 > the symbolic link itself.

Unfortunately that check was implemented incorrectly in the standard library,
resulting in a TOCTOU (Time-of-check Time-of-use) race condition. Instead of
telling the system not to follow symlinks, the standard library first checked
whether the thing it was about to delete was a symlink, and otherwise it would
proceed to recursively delete the directory.

This exposed a race condition: an attacker could create a directory and replace
it with a symlink between the check and the actual deletion. While this attack
likely won't work the first time it's attempted, in our experimentation we were
able to reliably perform it within a couple of seconds.

## Affected Versions

Rust 1.0.0 through Rust 1.58.0 is affected by this vulnerability. We're going
to release Rust 1.58.1 later today, which will include mitigations for this
vulnerability. Patches to the Rust standard library are also available for
custom-built Rust toolchains [2].

Note that the following targets don't have usable APIs to properly mitigate the
attack, and are thus still vulnerable even with a patched toolchain:

* macOS before version 10.10 (Yosemite)
* REDOX

## Mitigations

We recommend everyone to update to Rust 1.58.1 as soon as possible, especially
people developing programs expected to run in privileged contexts (including
system daemons and setuid binaries), as those have the highest risk of being
affected by this.

Note that adding checks in your codebase before calling `remove_dir_all` will
**not** mitigate the vulnerability, as they would also be vulnerable to race
conditions like `remove_dir_all` itself. The existing mitigation is working as
intended outside of race conditions.

## Acknowledgments

We want to thank Hans Kratz for independently discovering and disclosing this
issue to us according to the [Rust security policy][3], for developing the fix
for UNIX-like targets and for reviewing fixes for other platforms.

We also want to thank Florian Weimer for reviewing the UNIX-like fix and for
reporting the same issue back in 2018, even though the Security Response WG
didn't realize the severity of the issue at the time.

Finally we want to thank Pietro Albini for coordinating the security response
and writing this advisory, Chris Denton for writing the Windows fix, Alex
Crichton for writing the WASI fix, and Mara Bos for reviewing the patches.

[1]: https://www.cve.org/CVERecord?id=CVE-2022-21658
[2]: https://github.com/rust-lang/wg-security-response/tree/master/patches/CVE-2022-21658
[3]: https://www.rust-lang.org/policies/security
-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEV2nIi/XdPRSiNKes77mGCudSDawFAmHoNDkACgkQ77mGCudS
DaxINQ/+L0+QEyc3V49iKitCOI7zqBe3obi90AjVBgiWzmVChw5iWr4vGqQmfgOC
EdjCViQlRt2AssrDkzA5iZDKNApkkwWSwR/Y4kgOy25RJ5Ip357YKTwSa1aeO6zF
XmfxMTWTmkz6Awy5EqGvg23+tU/aGkTGC7bVCCWewa0JbMsP7CsE2oRy71uGum9h
RZn6K3P8IO6DA2C4GGgdJ8cd+o8GXbKLw1rdqyNInhLLpbPRl6yOXI//08dDXPdD
BvfMVBv8kLWLVHUZvEQMoyRVUXnAlgzBCQHg7fribNUXp4rjAuWBipR/NQkIR+r4
Uf2DE80DX+aWn1JyjOxxJZhxl9PAN2RjSn/k7/2SS2MpvQndnlC8e2xs4VA3p7pA
Fqu3ZOvdQZ752El063UdfLAi19N3XobKYp3814zEtcHoMSOeGYRmp5NeP16WYACC
f+O4SZhyM0306RNtGsmph7y9ZwUPNpsDLK8ELYhB08/U9zMS4DMaFxELLfCbi8Gq
+tFOiEcJwuzVNUKyn6yHD7HTJpGFuZdG9zhXMMGm8I4WhUnEa8xzjTcyTm64y0B+
ye1vjCI9wTr+IsVN1buAxRcQyC9NQjPclOpkHZTXPp5f9P6ef3VNsF++pPekTneg
2G6hlr9MDlorCVsvkTIpFSxjvqevN/A9Y/Va7/WoJu0lgGmQPRo=
=3pzg
-----END PGP SIGNATURE-----
