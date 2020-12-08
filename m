X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1746" "Tuesday" "8" "December" "2020" "12:31:37" "-0800" "Eric Biggers" "ebiggers@kernel.org" "<X8/iqSaDQqige53U@gmail.com>" "33" "Re: [oss-security] Bugs found by Cryptofuzz - some missing CVEs or too low impact for CVE?" nil nil nil "12" "2020120820:31:37" "[oss-security] Bugs found by Cryptofuzz - some missing CVEs or too low impact for CVE?" (number mark "U       ebiggers@ker Dec  8   33/1746  " thread-indent "\"Re: [oss-security] Bugs found by Cryptofuzz - some missing CVEs or too low impact for CVE?\"\n") "<CAH5b-BUVDeMaifMPf5HibLqjQKky3ch0__eYnzU1f_k3=JmMTg@mail.gmail.com>" ("<CAH5b-BUVDeMaifMPf5HibLqjQKky3ch0__eYnzU1f_k3=JmMTg@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Bugs found by Cryptofuzz - some missing CVEs or too low impact for CVE?" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 2013 invoked by uid 550); 8 Dec 2020 21:10:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11421 invoked from network); 8 Dec 2020 20:31:51 -0000
Date: Tue, 8 Dec 2020 12:31:37 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1607459498;
	bh=thtyJGKrjh7+0XXzoMZCN2EXp7tuEpFqPhLi8FO/obg=;
	h=From:To:Cc:Subject:References:In-Reply-To:From;
	b=EH6aiY2TrIi1T4Legfa6nhHnWOmTPysU4g75nxb0NxPSkS9hzulWgfje+4ob7LH2M
	 8NRgxTIzGYhH7vWpjR9h7Eg9L3RANNz0h9o64Ne1EVNZRIboXdrnZ7sYEzxF53XARX
	 AkdJPiMyqW1r6/jjbLyQMK4HNNQwFLDvSpNEuamrEKCOhp+qsO+YqwHhRQa3Fkxw0Y
	 ODtWs6dCA8A80spPPjZRY0M4VgsOCpTj1jnBGUXpZXZ9t+wJcO1QpXRK4i9UqNDoLX
	 Cp47dN8e4XV0jeFrM/2VTG9vgkFDOnPOArNn9Z4HKieli26RxXxkAe9mLBh7Xc3K5w
	 sKQO/KPgLGGcw==
From: Eric Biggers <ebiggers@kernel.org>
To: yersinia <yersinia.spiros@gmail.com>
Cc: oss-security@lists.openwall.com
Message-ID: <X8/iqSaDQqige53U@gmail.com>
References: <CAH5b-BUVDeMaifMPf5HibLqjQKky3ch0__eYnzU1f_k3=JmMTg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAH5b-BUVDeMaifMPf5HibLqjQKky3ch0__eYnzU1f_k3=JmMTg@mail.gmail.com>
Subject: Re: [oss-security] Bugs found by Cryptofuzz - some missing CVEs or
 too low impact for CVE?

On Tue, Dec 08, 2020 at 08:01:14PM +0100, yersinia wrote:
> At this link, multiple security bugs of various kinds are highlighted in
> very widespread basic cryptographic applications, which have then been
> corrected. I haven't done a deep analysis on all of them but I haven't
> found any associated CVEs of some of them. Do I have to assume that they
> weren't all that important or that the process of reporting them was
> missing? Thanks
> 
> https://github.com/guidovranken/cryptofuzz

Fuzzing can easily find large numbers of bugs, and it's usually unclear what the
security impact of them is.  So if people want CVEs, someone has to actually put
the effort into analyzing each bug and (if applicable) filing for a CVE.
Presumably just no one has done that for the above bugs.

Something similar happened when I added fuzz tests to the Linux kernel's crypto
API last year.  In less than a year they had resulted in over 100 bug fixes.
Most didn't *seem* too concerning, e.g. most were bugs in crypto drivers that
seemed to be rarely used, or crypto algorithms that seemed to be rarely used, or
edge cases in the crypto API that seemed to be rarely or never encountered.

The bugs in userspace libraries found by cryptofuzz look somewhat similar.  They
include some of the same kinds of bugs, like mishandling zero-length inputs,
mishandling data passed in specific chunk sizes, or bugs in weird algorithms.

However, in both cases it isn't possible to be certain of the impact and
applicability for a CVE of each bug without analyzing each bug in detail, which
would be very time-consuming, and in general it's no one's job to do that.

Likewise, syzkaller has found thousands of Linux kernel bugs and most haven't
had CVEs filed.

- Eric
