X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2331" "Thursday" "30" "June" "2016" "09:44:39" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160630134439.2449D6C0AE6@smtpvmsrv1.mitre.org>" "52" "[oss-security] Re: CVE Request: No demangling of untrusted binaries (2)" nil nil nil "6" "2016063013:44:39" "[oss-security] Re: CVE Request: No demangling of untrusted binaries (2)" (number mark "U       cve-assign@m Jun 30   52/2331  " thread-indent "\"[oss-security] Re: CVE Request: No demangling of untrusted binaries (2)\"\n") "<9BC348CE-0958-4F38-A0DB-D228EE0D9E27@gmail.com>" ("<9BC348CE-0958-4F38-A0DB-D228EE0D9E27@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28018 invoked by uid 550); 30 Jun 2016 13:44:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28000 invoked from network); 30 Jun 2016 13:44:51 -0000
From: cve-assign@mitre.org
To: boehme.marcel@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, florian@eich-krohm.de, nickc@redhat.com, bschmidt@redhat.com
In-Reply-To: <9BC348CE-0958-4F38-A0DB-D228EE0D9E27@gmail.com>
Message-Id: <20160630134439.2449D6C0AE6@smtpvmsrv1.mitre.org>
Date: Thu, 30 Jun 2016 09:44:39 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: No demangling of untrusted binaries (2)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> A stackoverflow in the libiberty demangler causes its host application
> to crash on a tainted branch instruction. The problem is caused by a
> self-reference in a mangled type string that is "remembered" for later
> reference. This leads to an infinite recursion during the demangling.
> 
> * GDB exploitable classifies the stack overflow as exploitable.
> 
> * Bug Report: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=71696
> 
> * Patch under review: https://gcc.gnu.org/ml/gcc-patches/2016-06/msg02030.html
> 
> All vulnerabilities were found with a more efficient version of the AFL fuzzer, called AFLFast.

>> The patch tracks the mangled types that are currently being demangled
>> in a new variable called work->proctypevec. If a referenced type is
>> currently being demangled, the demangling is marked as not successful.

Use CVE-2016-6131.

As far as we can tell, there was only one vulnerability reported here.
We don't understand the reference to "All vulnerabilities were found
with" - this seems to imply more than one vulnerability. Also, we
don't understand the parenthesized numbers such as "No demangling of
untrusted binaries (2)" in the Subject line, and "Libiberty Demangler
segfaults (6)" and "Fix fir PR71696 in Libiberty Demangler (6)" in the
references.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXdSHOAAoJEHb/MwWLVhi2SOMP/37QfylN++UvAd0PdO/ZTc00
Vk+piwJvzeVoAv2Jp8ZwU1S4hj43LlXR9WrK0NX/lLUwId69Zao6faWGO203hDnz
4TrmvuRyVT7jT5df6NVadwOawEeEklRuI56fBnm7e09nuchLpg1314TsiyqmHo1C
Ca41bfkIj091KAKW3nKER37ALb2DG2dSfR4+9ksTaalhdDwaykKwy9eYHcbA7+Sd
76Dra1MRTGgHr+YTIrqASn+lXC/ar/+rqy81oUZK38XviK8rkK+oKY6ODz9DHmED
815kkv8iflHezxsEW5PSWP9oQ5C7wGD7bju480ziqZF/r8bjW5dwm5jeEiTd6XWj
b1R05LqhnldiaSlYT/TqaFz6Pbu3uEbTUjOqH/Sn85MHFLVKJ3ZeLOzYUamaDRN7
KcHQPNM2GW6zcJJax9UEd0qseCvmn04X9NrNNjL06RstrxGtLeFGRQjyRX83uRij
mue5U2pf27YSKeVTo3CHw/q65Xwe+a/uSOoJzGYnmkGdx2Eu/3DKLsCqxP9d5BA2
jY+MnwkvctJpBzy6kxfeSGJkZ/N7np/yzD6k/hfJrGEgTaB7qfZ8NeHX3WTjiT73
MvkAAvICRwnLRN93buvCwMDQNl4xOSCVg3eK2slpxFxaU6/dsH/W+BUN20/Gkmf6
dsWpgmbMAUIb6gmzPCR2
=De4P
-----END PGP SIGNATURE-----
