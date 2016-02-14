X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1441" "Sunday" "14" "February" "2016" "12:56:07" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160214175607.920DE332019@smtpvbsrv1.mitre.org>" "38" "[oss-security] Re: CVE Request: Linux: Incorrect branch fixups for eBPF allow arbitrary read" nil nil nil "2" "2016021417:56:07" "[oss-security] Re: CVE Request: Linux: Incorrect branch fixups for eBPF allow arbitrary read" (number mark "U       cve-assign@m Feb 14   38/1441  " thread-indent "\"[oss-security] Re: CVE Request: Linux: Incorrect branch fixups for eBPF allow arbitrary read\"\n") "<20160214145217.GA20931@eldamar.local>" ("<20160214145217.GA20931@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26366 invoked by uid 550); 14 Feb 2016 17:56:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26348 invoked from network); 14 Feb 2016 17:56:19 -0000
From: cve-assign@mitre.org
To: carnil@debian.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, benh@debian.org
In-Reply-To: <20160214145217.GA20931@eldamar.local>
Message-Id: <20160214175607.920DE332019@smtpvbsrv1.mitre.org>
Date: Sun, 14 Feb 2016 12:56:07 -0500 (EST)
Subject: [oss-security] Re: CVE Request: Linux: Incorrect branch fixups for eBPF allow arbitrary read

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://git.kernel.org/linus/a1b14d27ed0965838350f1377ff97c93ee383492
> bpf: fix branch offset adjustment on backjumps after patching ctx expansion
>
> for backward jumps it fails to account the delta
> 
> kernel/bpf/verifier.c
> adjust_branches
> 
> -    else if (i > pos && i + insn->off + 1 < pos)
> +    else if (i > pos + delta && i + insn->off + 1 <= pos + delta)

Use CVE-2016-2383.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWwL70AAoJEL54rhJi8gl5Jm8P/2Udihf4a42tyljgF5jr87kl
aUWEEeTtvsEnhD1Mk2nGG9uRF4KOETFAI0iUITnfiiVWmAZETRisjhpVBcXd6Dfe
DgjHcF7JjMczf0bbJ885CzGWyTwyGN4L8O6OQjgSAGFhFxsaK5AUCZ/aH2H+4bD+
PsCT3n9p4+wEe6QwLyZlxmjbogH5AUv1cFlzk39eirEioJIKY8wqnVnSDxlGmGCS
a6k+wIyNf7l3yJIM87sf2bseA983D9UWug1fmOOp1smwCzHiQLiPzRbcALnWKHmU
VL/ppkTvSFtLkdZwwd7AXI0VYpCJjjb5C3rD1xSLtgKc1z9sIUXclliT45GADek6
x9oZrpjH1OH9Xb3GHAC7QFdhG7GG5fZFh3jlRQFh7JjbCMRIY1iDlDiLDXRvitl2
uyOVIZoVCk6Ph6ZCnkOKDlHhUE7tgtsqq5I+e9CB+g+5hxMiHVnYp27UvRV/2Nhe
mOV2gp1axOmcmZn3fPwpdws+t0fJGS/8gP/ls5i9p5pWzwIg0ceU+CSyykzIbB7P
7F253iad+u7erOYU1YiW89+sh/luifSpcVsaX7wlNlX8QIq7ev4xQs7N5/DfRRws
my2KZsS/P5gH+7I8ywKo5JSE7AyagdBKOz7J/nMCiaIz//JPxH2da44jFHFoRTMD
ds9lmT7rXJWkZ6I3XWb9
=Ry66
-----END PGP SIGNATURE-----
