X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1559" "Thursday" "12" "May" "2016" "11:27:49" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160512152749.88F6A6C0689@smtpvmsrv1.mitre.org>" "42" "[oss-security] Re: Linux Kernel bpf related UAF" nil nil nil "5" "2016051215:27:49" "[oss-security] Re: Linux Kernel bpf related UAF" (number mark "U       cve-assign@m May 12   42/1559  " thread-indent "\"[oss-security] Re: Linux Kernel bpf related UAF\"\n") "<CAFkTriLitb9v4MZn5b2HV9HGpu6VWHifgR3VZhDYoQwjGyaWBg@mail.gmail.com>" ("<CAFkTriLitb9v4MZn5b2HV9HGpu6VWHifgR3VZhDYoQwjGyaWBg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1975 invoked by uid 550); 12 May 2016 15:28:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1919 invoked from network); 12 May 2016 15:28:01 -0000
From: cve-assign@mitre.org
To: marco.gra@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CAFkTriLitb9v4MZn5b2HV9HGpu6VWHifgR3VZhDYoQwjGyaWBg@mail.gmail.com>
Message-Id: <20160512152749.88F6A6C0689@smtpvmsrv1.mitre.org>
Date: Thu, 12 May 2016 11:27:49 -0400 (EDT)
Subject: [oss-security] Re: Linux Kernel bpf related UAF

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> the following reproducer will cause a UAF of a previously allocated memory
> in bpf.
> 
> You can reproduce with linux kernel master, or 4.6-rc6 4.6-rc7 and maybe
> other kernel versions.

> int main(int argc, char **argv)
> ...
> r[0] = syscall(SYS_mmap, ...
> ...
> r[5] = syscall(SYS_bpf, ...

Use CVE-2016-4794. (We did not run any tests, or look for other
information, to investigate whether the same reproducer or a similar
reproducer affects any kernel version that's considered stable or
longterm.)

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXNKCMAAoJEHb/MwWLVhi2g8QP/3vBTsa8xuk8NWYWsv3jwNGu
Ugpl+hUdkQHW4aFzxx96nePBPZpfVeNCGRMdtlCcKVb9wFNUSbRwDPBHFXrfKz9R
KVf9VHi4CMcBlvPS0MvGZg52SQPAAO7O7cCWpEAdhyxW2gPPxKYo98x4xNuNVlWx
POD/dVK9ll261g6W+CUSYPtwJgIrPSddnnNCUvbB+XIvV87MGSLp+nE6h8I3L2Yp
ZisKaT6z6aHqqC0bcySk6V04UlbkfL83eahAz5bWvZeywUEjYvN+kOUlgR8TOxLC
8bIQ28Q043XM3VC853rhPQqe5enV6KDRrLgDu1paeFdKYcaHjGkHvkwjRfxjJZIC
EsNdEl2vGjB1iGTUnFiUep9BteZBRrwfmaTE1yAseaUjEAx/3UK85PpTEqmNkON6
1HCInP0LOeZMcggVzBKgRKCXKJZiInxEtSBXhxnPGgxagkOD7enw86gWflSqz3ca
wdRm/oADgCrQk6CsSGgusCouSyndC/T6ZRCa2/7vCecm2BBi8gxRuT4TZem3A6Ij
x+zfK7QaMDtELPGL+/rVOSgVCTaihz7oGeBKzqJeuyAv7zN0LxYoNlBsmsoBSTYJ
Uftvf0T7JTR3AQd1+tB2kOnyGOW4jSCNu66xNifR29j1C7jvKB0+uh891s/3mkzo
Wttcn/XLKpzXFWtN+mjb
=DWFZ
-----END PGP SIGNATURE-----
