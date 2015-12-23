X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2219" "Tuesday" "22" "December" "2015" "19:02:11" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151223000211.455E442E1D2@smtpvbsrv1.mitre.org>" "54" "[oss-security] Re: CVE request Qemu: hmp: stack based OOB write in hmp_sendkey routine" nil nil nil "12" "2015122300:02:11" "[oss-security] Re: CVE request Qemu: hmp: stack based OOB write in hmp_sendkey routine" (number mark "U       cve-assign@m Dec 22   54/2219  " thread-indent "\"[oss-security] Re: CVE request Qemu: hmp: stack based OOB write in hmp_sendkey routine\"\n") "<alpine.LFD.2.20.1512230141060.10838@wniryva>" ("<alpine.LFD.2.20.1512230141060.10838@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17616 invoked by uid 550); 23 Dec 2015 00:02:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17597 invoked from network); 23 Dec 2015 00:02:23 -0000
From: cve-assign@mitre.org
To: ppandit@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, liuling-it@360.cn
In-Reply-To: <alpine.LFD.2.20.1512230141060.10838@wniryva>
Message-Id: <20151223000211.455E442E1D2@smtpvbsrv1.mitre.org>
Date: Tue, 22 Dec 2015 19:02:11 -0500 (EST)
Subject: [oss-security] Re: CVE request Qemu: hmp: stack based OOB write in hmp_sendkey routine

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Qemu emulator built with the Human Monitor Interface(HMP) support is
> vulnerable to an OOB write issue. It occurs while processing 'sendkey' command
> in hmp_sendkey routine, if the command argument is longer than the
> 'keyname_buf' buffer size.
> 
> A user/process could use this flaw to crash the Qemu process instance
> resulting in DoS.
> 
> https://lists.gnu.org/archive/html/qemu-devel/2015-12/msg02930.html
> https://bugzilla.redhat.com/show_bug.cgi?id=1283926

>> An OOB write issue was reported by Mr Ling Liu ... It occurs while
>> processing the 'sendkey' command, if the command argument was longer
>> than the 'keyname_buf[16]' buffer.

>> hmp: avoid redundant null termination of buffer

>> When processing 'sendkey' command, hmp_sendkey routine null
>> terminates the 'keyname_buf' array. This results in an OOB write
>> issue, if 'keyname_len' was to fall outside of 'keyname_buf' array.
>> Removed the redundant null termination, as pstrcpy routine already
>> null terminates the target buffer.

Use CVE-2015-8619.

This is not yet available at
http://git.qemu.org/?p=qemu.git;a=history;f=hmp.c but that
may be an expected place for a later update.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWeeQAAAoJEL54rhJi8gl5SqUP/jZ+NCSW5hsvkOvpcDPME24Q
JyWE7Gm5PesbYYNOMRIZjtNm3FZJWP0iKMxECyx71bksSXrnW1m2RcNus1wNxkif
UKuIRiGut2gTBIcMOKsVAKCfd7W705TJOMUEperMR8o2uKhcLQzkQ9VxrnOukIPR
jGNSCtBJT3cC2M8U1MFWnWiNErBPNrUKcRnf9ob2EtXEmM9t/nV9FMA/U8C6Ke10
i2WMJ7pbKaqxn+irai/d4MBqSKHn0caeTy5XYYPJuSMcUOw+yAocljUJkqqi456L
MxBUpY054DKqY15XpL7S1A/z/IXtvxs6eKRVIzJOvSskDDFVauJayNRi2A0w0wyM
aJ5HZPwBFPCOpCpz3nftG5UxdnxQtUDrO2BBu09T9d2Est1wCP+zxKAboUkG3SE2
+xixvZXTlqo8/f7qMVvZ58Hr1ieT5Gp5DD7AdK8wBmHlDTbGRXEAqgskgvbBZIjl
lkRpp9gXrpuiETyI08y5lxBd7Yu74f8WNxdNn5OR9Q3pWo6BPRBGRiqV5A0Z1lGB
dqV71TvYDxzphZF1bFyLV0x4L6F3XIShew1mOfD45M78Z531ZNJGo116HJiJulgB
yC+hfD8ctkaqAfHILIDuRug3oIYeD1jxqeSLixZS79ASGUtBrxnGO8eMU+ra0ZvQ
Tx6KxEwFW+HIMZvyyVdm
=BQ7m
-----END PGP SIGNATURE-----
