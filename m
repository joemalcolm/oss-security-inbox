Received: (qmail 9853 invoked by uid 550); 4 Sep 2024 17:26:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32458 invoked from network); 4 Sep 2024 15:15:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	pietroalbini.org; h=cc:content-transfer-encoding:content-type
	:content-type:date:date:from:from:in-reply-to:message-id
	:mime-version:reply-to:subject:subject:to:to; s=fm2; t=
	1725462918; x=1725549318; bh=bOj5NeCgdeX2zKnKWmkjO7C1wTCmdyAkorD
	kkpEMIVU=; b=NfmbeHYDCoeiWp05swpiZl8BIJvL85QdNinI0G40H8NSPSnlLd/
	9Rcqyyc+E7lrdXsN6fXa3Dhdky0D5Oi5PkQk8gUap1ZEt2M/lCu1gQ7+BrUFrygW
	IqkzuM+o7bpZJRDXEHjU711G01nw1OX64ydwkUF+fj+FKyD8wwmethHf1ishTmu9
	kapyLe+08v0FweDpaqQ5lqPzb87k4bD8/XzsS6yxzcXmDAs00d583nT8OXn0fQoi
	fqNXodCLr/+kdDJ7BGn2A0MwsR2FL8r1Kjt3PcRQ5YGNkBMoyxIiuM4YhVibz7GD
	FsWtHSdrO9w2rblxiO/t2ykZVWcYQS+8xnA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm1; t=1725462918; x=1725549318; bh=bOj5NeCgdeX2zKnKWmkjO7C1wTCm
	dyAkorDkkpEMIVU=; b=LFt1XKN2pp+/Ljwgscb7+HvSQBI2H6Rsm08HGr6+ehR1
	NTQ3Q10srhPy/zojt/H51CDzCihPYrFi1j4EZnqGJyNVBek1mtfItjeQgWRX9en/
	HcbfSKTyfu+odloATk/UXQaaTdsvtDd27THf0XVYPY14IKt8lah4pTdxeRzCK3qU
	RVzL6Q4MBQhku0DU5pT0NVLBDYzZhOhPJPdAtxJ6DnDMQZqucrRM0ZbsuK6to+yB
	9YllXquO05qFcKP+P/SnmcOs5UDcNC/etKH6Edav+couqjRHVLxFVCMkIpBgvy5+
	FRvqUwcAFYCwPzucZHgP6GBbuHBa1bhRG6ItrSCiFA==
X-ME-Sender: <xms:hXnYZgHbuJXgKI9tPVh67n2cmDMiyQqb7n3YvWglId9ls5XEO9HWCg>
    <xme:hXnYZpVBWt9TW3gMVCtkzFrHtrYRXFowUDc3Eo0Pjw5JNxm_aUGXXBGH7aZtEIEVS
    Rq3k8dW0kQmZ7hafbQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudehjedgkeeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
    rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpefoggffhf
    fvkffutgfgsehtjeertdertddtnecuhfhrohhmpedfrfhivghtrhhoucetlhgsihhnihdf
    uceophhivghtrhhosehpihgvthhrohgrlhgsihhnihdrohhrgheqnecuggftrfgrthhtvg
    hrnhepgfejuddvkefhtdehtdejvdelieffgfdtteevieevvedugfehheefffefuddvkeeu
    necuffhomhgrihhnpehruhhsthdqlhgrnhhgrdhorhhgpdhmihgtrhhoshhofhhtrdgtoh
    hmnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepphhi
    vghtrhhosehpihgvthhrohgrlhgsihhnihdrohhrghdpnhgspghrtghpthhtohepuddpmh
    houggvpehsmhhtphhouhhtpdhrtghpthhtohepohhsshdqshgvtghurhhithihsehlihhs
    thhsrdhophgvnhifrghllhdrtghomh
X-ME-Proxy: <xmx:hXnYZqIiFtMWVZVnJVcM34L6W7Xv_nrS2UHDArlhsEaGmEy_r5IfvA>
    <xmx:hXnYZiG3xXHq1AsMlyD84uemVxabqEOYvgzPCRxIofbIXAIBI0BMHw>
    <xmx:hXnYZmVjZsD2TqspqdeRIXcuIgzM2UZELgoJMceEXFuElfD2d3H2UA>
    <xmx:hXnYZlOs56A_rNmajMHaMusgz8moa4Kx7GKHoAOch_7-QGoINJB6vA>
    <xmx:hnnYZvcxFL3MvoRIJelqLfitOOFJFa10f_rMnTv5xxntWfF1RqnNbeqY>
Feedback-ID: i6b794706:Fastmail
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
Date: Wed, 04 Sep 2024 17:14:56 +0200
From: "Pietro Albini" <pietro@pietroalbini.org>
To: oss-security@lists.openwall.com
Message-Id: <58856929-0ee4-435e-b0d6-97091ee10b43@app.fastmail.com>
Content-Type: text/plain
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2024-43402: Rust before 1.81.0 didn't fully fix argument escaping for
 batch files

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

On April 9th, 2024, the Rust Security Response WG disclosed [CVE-2024-24576][1],
where `std::process::Command` incorrectly escaped arguments when invoking batch
files on Windows. We were notified that our fix for the vulnerability was
incomplete, and it was possible to bypass the fix when the batch file name had
trailing whitespace or periods (which are ignored and stripped by Windows).

The severity of the incomplete fix is **low**, due to the niche conditions
needed to trigger it. Note that calculating the CVSS score might assign a
higher severity to this, but that doesn't take into account what is required to
trigger the incomplete fix.

The incomplete fix is identified by CVE-2024-43402.

## Overview

Refer to [the advisory for CVE-2024-24576][1] for details on the
original vulnerability.

To determine whether to apply the `cmd.exe` escaping rules, the original fix
for the vulnerability checked whether the command name ended with `.bat` or
`.cmd`. At the time that seemed enough, as we refuse to invoke batch scripts
with no file extension.

Unfortunately, [Windows removes trailing whitespace and periods][2] when
parsing file paths. For example, `.bat. .` is interpreted by Windows as `.bat`,
but our original fix didn't check for that.

## Mitigations

If you are affected by this, and you are using Rust 1.77.2 or greater, you can
remove the trailing whitespace (ASCII 0x20) and trailing periods (ASCII 0x2E)
from the batch file name to bypass the incomplete fix and enable the
mitigations.

Rust 1.81.0, due to be released on September 5th 2024, will update the standard
library to apply the [CVE-2024-24576][1] mitigations to all batch files
invocations, regardless of the trailing chars in the file name.

## Affected versions

All Rust versions before 1.81.0 are affected, if your code or one of your
dependencies invoke a batch script on Windows with trailing whitespace or
trailing periods in the name, and pass untrusted arguments to it.

## Acknowledgements

We want to thank Kainan Zhang (@4xpl0r3r) for responsibly disclosing this to us
according to the [Rust security policy][3].

We also want to thank the members of the Rust project who helped us disclose
the incomplete fix: Chris Denton for developing the fix, Amanieu D'Antras for
reviewing the fix; Pietro Albini for writing this advisory; Pietro Albini,
Manish Goregaokar and Josh Stone for coordinating this disclosure.

[1]: https://blog.rust-lang.org/2024/04/09/cve-2024-24576.html
[2]: https://learn.microsoft.com/en-us/troubleshoot/windows-client/shell-experience/file-folder-name-whitespace-characters
[3]: https://www.rust-lang.org/policies/security
-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEV2nIi/XdPRSiNKes77mGCudSDawFAmbXBUIACgkQ77mGCudS
DayLoxAAsQbHhrvT7F65Y1wjieTLuhsRPFE5LZaanIe2jm8gVMXM6u7423I6gxqi
bpTIOWgOU7PKxgQC5ZOaub5Yu0/BA1rA39YhF4FAH9/eM8sD9TYDgTjTlF1ne4MO
0tZQUy6VTUo0AJmRpBTJMlXc7hdu7l7oQJhvRYJapxqdIctPWHH2VNwGWo1iGXrz
q/FV66vQPkUjy+8yB4P/q3bYn9jaRqWSG/8N0wGHgWveTtgswiCdUveYJ6fKwj1D
WzhlTleQlFybpc6iALkIhk9oa6fGUeF0O9+LtJUI4VH6DOQPUnZLgkhhvp6F2GNa
yor4amx/bakW0AHpeBdJQEMDPEbDxrQrUfXGAAtT/TqMW896J+FpcTRzG4oThO/Z
/3ukjXwzO9bEIFjh46YD9x31iCIIQrBJC5fbvOfzybb7z2KYiGCKIK73aQQJT7+2
tRD0mbmMKKgRC3iJqiWiAxgIJC8gmuhsq768Grip2ji6qjM15EAAjJpdTY6rs7Vo
vi7dmUTVLczrTDaJkUAsXSbE75Wfi1aM12nyIUOq1YNXBYXT9jRmcwXCa0V19dcJ
kDkflDnFHq9FOBjqTZIaLaw2OkYUURGPjxx735lsz91ukmoYaFUlsdFmlLVT0LBe
pij/fubWBOJCOa6fZ0DNuZfyArMRM9CDlLFf8QeUBc5I6QjhoPE=
=wEEf
-----END PGP SIGNATURE-----
