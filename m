Received: (qmail 30331 invoked by uid 550); 9 Apr 2024 17:48:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26349 invoked from network); 9 Apr 2024 17:00:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	pietroalbini.org; h=cc:content-type:content-type:date:date:from
	:from:in-reply-to:message-id:mime-version:reply-to:subject
	:subject:to:to; s=fm3; t=1712682051; x=1712768451; bh=Non1OVZnXz
	u8RbCbWXLL5jhMdNLOAni20NjK1FZKo6Q=; b=NpHSFpXh97WzShdI0edTo2DGHG
	p247b41BIAo0wToeAzfZO0MEzvjc8wxZWRJzoCHQvz6/CCS40bYMPiCeuhW9+e8a
	4FMDfcF4u1/CDkC+QEhEPTVMCvWY72JQyZkWadu3mzN9sGwGxHcbkQWrdCtxBjmG
	DfrbdWHpcOEtEu3Ez5dm+KXkrKHrUILBTFcAIuwcKOUCL4qLG+tk45nUJUeWzW5w
	zRZJ5rdiaLTdWuXRUcnWX7DtQFBu9HgaCJhVgu84bjIqC4vg94xi+qhzryF0yVEr
	sgUCY5PCwmwRRYiDbLQTF6ASRDLMVi+OoNvd9laOSMpd3YLa1+0rExUQLcAw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:message-id
	:mime-version:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1712682051; x=1712768451; bh=Non1OVZnXzu8RbCbWXLL5jhMdNLOAni20Nj
	K1FZKo6Q=; b=DAfUSx6c5gxKbeGdmBuYX6AtQR3gK8r+ojuKbg2rlsweSYlIXtZ
	Alw28jLKmhkMG3Xu68XhQWixzfmhJ+qvxmvpgnTMtSA6GaGeT99m3vbNVYaTbNAN
	S6xlozwQxiHV1k04h6lnaJOiAz54y1CpTKSN7/UgoYF8f9LbQh1Pff6jl+l9cO1z
	j1QGco9mtfLNoVO3Iy9gJy/aja6iP8k21xQ/i+zetqkA/p10LF7TYecqeZIfz2fn
	ePxe58H/6SQRU7fYe6E8KxJlUJWD/CF8iSJLHd9C2MvWmype1wZaRzXW7DHgFskP
	03epLM2jbM6SZ75RpzzT/7mtXHdCQKFQOhw==
X-ME-Sender: <xms:QnQVZoGrjcNnL0nJedmqt7Wk-AikCsqJl9iaRmXgxO9zvVZMh-b_7A>
    <xme:QnQVZhUISsx5cKQnIWkYPvoN-Oxfddk5vW6g0t7NhA9AwYHCoUQxjv2OaRfjXJnhV
    ntbLK2hIyAWcSQSUhc>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudehfedgudeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefofgggkfffhffvufgtsehttdertd
    erredtnecuhfhrohhmpedfrfhivghtrhhoucetlhgsihhnihdfuceophhivghtrhhosehp
    ihgvthhrohgrlhgsihhnihdrohhrgheqnecuggftrfgrthhtvghrnhepheduhfdvkeegtd
    ekleetffelkeelhfeuuedufeevtdffiefghfdvieetffdugeegnecuffhomhgrihhnpehr
    uhhsthdqlhgrnhhgrdhorhhgnecuvehluhhsthgvrhfuihiivgepudenucfrrghrrghmpe
    hmrghilhhfrhhomhepphhivghtrhhosehpihgvthhrohgrlhgsihhnihdrohhrgh
X-ME-Proxy: <xmx:QnQVZiKnhB9XtU4w6MUPiqh5PsBKLY9ojW9fRtvbfNL0tCnpLbbmUQ>
    <xmx:QnQVZqEh322dmpXydwwnxN8ORPlA5FwySP0w3GLzcDW9B7QSQfRZ1g>
    <xmx:QnQVZuW75xry0XXI_glNR5H99spRoZwb8TGjd_WCKLw1tpwRDB6gMw>
    <xmx:QnQVZtNaffU0LuxhnYVXQZcKsyAjG1pgr2O95ZBG_CNxgWzm4Jke6A>
    <xmx:Q3QVZnfGHuLPdMxgc9h2z4vzY0QfTVLMvnusMXhyjaCVKblG4uBQxVym>
Feedback-ID: i6b794706:Fastmail
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.11.0-alpha0-379-gabd37849b7-fm-20240408.001-gabd37849
MIME-Version: 1.0
Message-Id: <72f63dcb-9831-49cd-a435-9190104663ec@app.fastmail.com>
Date: Tue, 09 Apr 2024 18:00:26 +0100
From: "Pietro Albini" <pietro@pietroalbini.org>
To: oss-security@lists.openwall.com
Content-Type: text/plain
Subject: [oss-security] CVE-2024-24576: Rust 1.77.1 and earlier did not properly escape arguments of
 batch files on Windows

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

The Rust Security Response WG was notified that the Rust standard library did
not properly escape arguments when invoking batch files (with the `bat` and
`cmd` extensions) on Windows using the [`Command`][1] API. An attacker able to
control the arguments passed to the spawned process could execute arbitrary
shell commands by bypassing the escaping.

The severity of this vulnerability is **critical** if you are invoking batch
files on Windows with untrusted arguments. No other platform or use is
affected.

This vulnerability is identified by CVE-2024-24576.

## Overview

The [`Command::arg`][2] and [`Command::args`][3] APIs state in their
documentation that the arguments will be passed to the spawned process as-is,
regardless of the content of the arguments, and will not be evaluated by a
shell. This means it should be safe to pass untrusted input as an argument.

On Windows, the implementation of this is more complex than other platforms,
because the Windows API only provides a single string containing all the
arguments to the spawned process, and it's up to the spawned process to split
them. Most programs use the standard C run-time argv, which in practice results
in a mostly consistent way arguments are splitted.

One exception though is `cmd.exe` (used among other things to execute batch
files), which has its own argument splitting logic. That forces the standard
library to implement custom escaping for arguments passed to batch files.
Unfortunately it was reported that our escaping logic was not thorough enough,
and it was possible to pass malicious arguments that would result in arbitrary
shell execution.

## Mitigations

Due to the complexity of `cmd.exe`, we didn't identify a solution that would
correctly escape arguments in all cases. To maintain our API guarantees, we
improved the robustness of the escaping code, and changed the `Command` API to
return an [`InvalidInput`][4] error when it cannot safely escape an argument.
This error will be emitted when spawning the process.

The fix will be included in Rust 1.77.2, to be released later today.

If you implement the escaping yourself or only handle trusted inputs, on
Windows you can also use the [`CommandExt::raw_arg`][5] method to bypass the
standard library's escaping logic. 

## Affected Versions

All Rust versions before 1.77.2 on Windows are affected, if your code or one of
your dependencies executes batch files with untrusted arguments. Other
platforms or other uses on Windows are not affected.

## Acknowledgments

We want to thank RyotaK for responsibly disclosing this to us according to the
[Rust security policy][6], and Simon Sawicki (Grub4K) for identifying some of
the escaping rules we adopted in our fix.

We also want to thank the members of the Rust project who helped us disclose
the vulnerability: Chris Denton for developing the fix; Mara Bos for reviewing
the fix; Pietro Albini for writing this advisory; Pietro Albini, Manish
Goregaokar and Josh Stone for coordinating this disclosure; Amanieu d'Antras
for advising during the disclosure.

[1]: https://doc.rust-lang.org/std/process/struct.Command.html
[2]: https://doc.rust-lang.org/std/process/struct.Command.html#method.arg
[3]: https://doc.rust-lang.org/std/process/struct.Command.html#method.args
[4]: https://doc.rust-lang.org/std/io/enum.ErrorKind.html#variant.InvalidInput
[5]: https://doc.rust-lang.org/std/os/windows/process/trait.CommandExt.html#tymethod.raw_arg
[6]: https://www.rust-lang.org/policies/security
-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEV2nIi/XdPRSiNKes77mGCudSDawFAmYUdNIACgkQ77mGCudS
DaxcXQ//Zar/RHbbjT9A322z74STJx2lJyzpn1dRfgya0+9DoeSgXrFoXgeOIWoI
IigWX8lhmMB28ZDRfbCXJZ23FLkIOGFwE/b6NFBByWBIzMuHWyU00LB/FiJJLTKW
Ss1FtS1LSAAI9Mu/W4nja+xuCoppkIHVfqAVQVgxyCA4SA9cgUeAJyqjbd+EqD2p
TTkGeH4cuxJAMz+O9nfeFI5eVwi6dYrl7LRUjKEauykSLxFpAlZdNtv0FOGL+9IH
3gFk/U7kxG3YMfgbOeXHjf7SOluyxBHqEG/jS28K7Q16zwZhEogGqDDURuPdP2vD
k27alPjNrFwlwDLH42v5sj3X797M3C8XinbvcSjJIRscPVllJy3/PoQ4b6+idsVd
VhO/N7NMzTJmX6EVbbjfR66L3uUBpjqZg+tFU1vbsbE/9upk1KhsMT5sPDLOjR99
0Lp9ikZHzYqtReTbXv0j3XtYdgR0+5RR3BHOTbz5ba9/N4YsWghOeZ4Wu69Qo4xc
c/HAwg8xRGGvfELFHctu039EuT5d1BXP4zLaRmnRSCUCVJ0huHiWrB1c33PO0l+j
VNEloYJn5OzZ5ESWEuLSVOdWFEw0qwi6XTvb4YhV1AH6ABKuc25+h0EBKmTaFdez
YeTNJTgIomw4zGKYhLl3BQdsfpcrktbZxTLyUpuWbbqJjycvRXA=
=w9G7
-----END PGP SIGNATURE-----
