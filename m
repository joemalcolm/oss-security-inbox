X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2545" "Wednesday" "2" "December" "2015" "17:59:38" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151202225938.BC7C36C0805@smtpvmsrv1.mitre.org>" "56" "[oss-security] Re: Heap Overflow in PCRE" "^Cc:" nil nil "12" "2015120222:59:38" "[oss-security] Re: Heap Overflow in PCRE" (number mark "        cve-assign@m Dec  2   56/2545  " thread-indent "\"[oss-security] Re: Heap Overflow in PCRE\"\n") "<20151202175839.GA24979@eldamar.local>" ("<20151202175839.GA24979@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29740 invoked by uid 550); 2 Dec 2015 22:59:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28658 invoked from network); 2 Dec 2015 22:59:50 -0000
In-Reply-To: <20151202175839.GA24979@eldamar.local>
Message-Id: <20151202225938.BC7C36C0805@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Wed,  2 Dec 2015 17:59:38 -0500 (EST)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Heap Overflow in PCRE
To: carnil@debian.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> I have a question about CVE-2015-8384, according to
> https://bugzilla.redhat.com/show_bug.cgi?id=1287623 the fixing commit
> in upstream VCS is r1558, but (cf.
> https://bugzilla.redhat.com/show_bug.cgi?id=1287623#c6) CVE-2015-3210
> was assigned for the issue fixed by the same revision r1558.

We currently plan to keep CVE-2015-3210 and CVE-2015-8384 separate.

We'll try to answer the question in three ways:

1. Different attack methodologies discovered independently can have
separate CVE IDs, even if the fix is the same. We don't know of
any scalable way to reach a conclusion that
/^(?P=B)((?P=B)(?J:(?P<B>c)(?P<B>a(?P=B)))>WGXCREDITS)/ (which
is CVE-2015-3210) and /(?J)(?'d'(?'d'\g{d}))/ (which is
CVE-2015-8384) are the same attack methodology.

2. https://bugzilla.redhat.com/show_bug.cgi?id=1226918#c9 indicates
that the CVE-2015-3210 attack is prevented by a commit for
"Fix buffer overflow for named recursive back reference."
Our experience is that Red Hat generally has a good process for
locating commits based on the associated bug reports; however,
we sometimes don't know how they reach a specific conclusion.

3. The pattern in question for CVE-2015-3210, i.e., the
/^(?P=B)((?P=B)(?J:(?P<B>c)(?P<B>a(?P=B)))>WGXCREDITS)/ pattern,
doesn't have any instances of something like \1 or \g that
are commonly used for a back reference. Although we haven't
studied the pattern in detail, we think the attack methodology
is different from the one that has a \g escape sequence.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWX3dCAAoJEL54rhJi8gl5xjIP/0aGf7NTUqQsfVMrEjiUb60Z
V93xFSutonq+qg/Ps2Im5FRx32EMEYJXoqS8KpMiUmRZbz1zSwf7caeT+3MpEBTO
m32S5XMa5SKhdOu2X2bDTkxQO062ygCXizSTkl7YgSt+lswnM5ZztTMXybHJtChz
rD7GGsh3OE1LLkTeHb1JEIr3ijnLNNA184Viqxp08APawUxHvCNMGIt0UtdOH7OM
e5aqWP7dEIgX3oZzixK3l64xAD8RPQS9SF71kdRXcHx+GQR1yuM9DqgJd4CIhGY8
XwtOAlctQqxvLD3rA9gSI7G5YPT8+6LMEcXtmk7Ef+CkDEkCUCeQb4FYOHXTeHX4
MoEDcYF3OTOMEcUIiStsBRQZGzEqTsbPK1Qx2NUnTnw7aUhJI2GGXQ8gXYyhX0Vl
zBG3JpiB64LD9BV/QRq/MZUTxPaKGevHtjkMNkU41cUeFDr7i3YVynqywZxZ7dyG
1lwZxKvMUy4xD+RijO5puli7qC6TxntHhU6ICzP1kha2PS9GUbTX93XqK+CYOAAi
jgbNP/LkI2unIOMWoYICC6LvtwBO+nUWlQlb25JucrBFPh4A9ZvLwCBE+k9X4D9d
LybiL8nyT56uM74bz9dQ/qpCguSIo9PVBnLFgedXluK4Sey5OSw8vOy/ZgWBXQKU
E4TXlM/tQ5Sttfio/C8h
=3oE2
-----END PGP SIGNATURE-----
