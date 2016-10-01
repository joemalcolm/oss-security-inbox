X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1339" "Saturday" "1" "October" "2016" "16:58:13" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161001205813.074156C4B2D@smtpvmsrv1.mitre.org>" "35" "[oss-security] Re: imagemagick mogrify global buffer overflow" nil nil nil "10" "2016100120:58:13" "[oss-security] Re: imagemagick mogrify global buffer overflow" (number mark "U       cve-assign@m Oct  1   35/1339  " thread-indent "\"[oss-security] Re: imagemagick mogrify global buffer overflow\"\n") "<CAFkTriJzamt=OwzB6HkD4a2jp3aCvQpNkwsCNoxvXwZKrcHQwQ@mail.gmail.com>" ("<CAFkTriJzamt=OwzB6HkD4a2jp3aCvQpNkwsCNoxvXwZKrcHQwQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27878 invoked by uid 550); 1 Oct 2016 20:58:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27860 invoked from network); 1 Oct 2016 20:58:24 -0000
From: cve-assign@mitre.org
To: marco.gra@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CAFkTriJzamt=OwzB6HkD4a2jp3aCvQpNkwsCNoxvXwZKrcHQwQ@mail.gmail.com>
Message-Id: <20161001205813.074156C4B2D@smtpvmsrv1.mitre.org>
Date: Sat,  1 Oct 2016 16:58:13 -0400 (EDT)
Subject: [oss-security] Re: imagemagick mogrify global buffer overflow

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://github.com/ImageMagick/ImageMagick/issues/280
> https://github.com/ImageMagick/ImageMagick/commit/a7bb158b7bedd1449a34432feb3a67c8f1873bfa
> 
> AddressSanitizer: global-buffer-overflow
> READ of size 4

>> MagickCore/profile.c

Use CVE-2016-7799 for this buffer over-read issue.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJX8CJPAAoJEHb/MwWLVhi2P6EQALYfi29fmCoymW+3x38u8m+3
mrC+hPMgq8i729ec/SaUaSqy70Nixu2QoG/5uz8+M4sTuB9eQQpB4Hq1zM4dW4EB
I0J9/wC4nGII32c3lusuN3UZ5tM0jEfiUlYJFIRm95KDaYkH8g9+NNcj2zkO9yLK
I3s/PSilLuEsiHM/CLQDEoY3uXScELKq2RLCVwowl79Gs7fX3JNajH9Q87PS730e
S7IcJmRkwo+VyIWfIA3vu+mVLp+esUuBdvmj1CNMZaNGsqFvdAjUvSGtyOOdNfvD
y0J9n07GUxEl6BEoysBaZa4PEdOUuqTKzy7rfSMC16cxvEiix6LX96Znx9/59k73
0CbjUZOrEMmXyornJszwl0iXcb4lviv2AcpcW9oDO+Ud96MDLlAfwdAqczyk15dS
YIPZ0s8jtAJKP8Tl5oHTtDDU2t2h9iYeZCic1dTWloCzRkYoGEL2pPRdIqmIxrMp
uf+3rCkN0uU4gU1U3p/hUbyiepi5ukHFmAvn9+llQ3Um+8v4Ki/yzOOolAyVl5aQ
FZTlzn/1LLQYlrPsyNeJkCLDOcM1o0tRMYhCwagDF20KuU3J0zM/D+LwpSxchNIC
C7D74ub/3Lw4YfRv+UYK8l0NgfkiFhTuro7AjoB1dKjmmQW/sy8LnG4IOF/PIUFX
T/7CPx8PmTGY5SISkkMn
=v71F
-----END PGP SIGNATURE-----
