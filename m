X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1399" "Thursday" "2" "April" "2015" "13:53:56" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150402175356.AE6646C009E@smtpvmsrv1.mitre.org>" "36" "[oss-security] Re: CVE Request: Linux mishandles int80 fork from 64-bit tasks" nil nil nil "4" "2015040217:53:56" "[oss-security] Re: CVE Request: Linux mishandles int80 fork from 64-bit tasks" (number mark "        cve-assign@m Apr  2   36/1399  " thread-indent "\"[oss-security] Re: CVE Request: Linux mishandles int80 fork from 64-bit tasks\"\n") "<CAObL_7Hkuoz12CkEfMwpwPqjAxRqEWNMYw8QSNL+Zs6geMEUfw@mail.gmail.com>" ("<CAObL_7Hkuoz12CkEfMwpwPqjAxRqEWNMYw8QSNL+Zs6geMEUfw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26045 invoked by uid 550); 2 Apr 2015 17:54:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26027 invoked from network); 2 Apr 2015 17:54:08 -0000
In-Reply-To: <CAObL_7Hkuoz12CkEfMwpwPqjAxRqEWNMYw8QSNL+Zs6geMEUfw@mail.gmail.com>
Message-Id: <20150402175356.AE6646C009E@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu,  2 Apr 2015 13:53:56 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: Linux mishandles int80 fork from 64-bit tasks
To: luto@kernel.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> There's another problem, though: setup_thread_stack would propagate
> TS_COMPAT (i.e. the indication that the task is in a 32-bit syscall)
> to the child, and nothing would clear that bit.  This violates a
> general invariant that tasks executing in user mode never have
> TS_COMPAT set.

> As a result, both seccomp and
> audit could misinterpret the offending syscall, with possibly
> dangerous results depending on configuration.
> 
> I suspect that this could be used to break out of certain seccomp
> sandboxes on kernels older than 3.16.

> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=956421fbb74c3a6261903f3836c0740187cf038b

Use CVE-2015-2830.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVHYHRAAoJEKllVAevmvmsrvYIAKBD7+M0GS8PStp23ejjfU+b
yUBKc5dN1ew+wnSJlV87kBbYpXrRSgzqf5YuYNZOHesFDT230c5Gh8WBSQ/8qOJr
sB49vuigHBARO095BN2yMuYz3j4peVtT0GAZwg6VudnmezqSfeSUUEY6s2n66Htw
AstvNy+iL/FImw5R1k5RZwB0wwmxo+/vSHguDX0O2jzqynrNPrVi7H54H+WrTptR
tZc+eDrZOLUR2VgjArh/xEGq97iEzUworsXhunn7jBQne0wDIAv+ejTVI6c9Ju+8
zUYdWBNdq3x+uQ36bpz54KuDwchVvMSiAQOtcFgZic9QB9NheArzSf5B7M+nJmE=
=KUII
-----END PGP SIGNATURE-----
