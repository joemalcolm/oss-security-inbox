X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1880" "Saturday" "10" "October" "2015" "11:34:48" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151010153448.8B6371BEBFA@smtpvbsrv1.mitre.org>" "51" "[oss-security] Re: CVE request - Android OS - Using the PPP character device driver caused the system to restart - Linux kernel" nil nil nil "10" "2015101015:34:48" "[oss-security] Re: CVE request - Android OS - Using the PPP character device driver caused the system to restart - Linux kernel" (number mark "U       cve-assign@m Oct 10   51/1880  " thread-indent "\"[oss-security] Re: CVE request - Android OS - Using the PPP character device driver caused the system to restart - Linux kernel\"\n") "<2166DED8C457614D95A6AAC18B144F082B2D23@EX02.corp.qihoo.net>" ("<2166DED8C457614D95A6AAC18B144F082B2D23@EX02.corp.qihoo.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19672 invoked by uid 550); 10 Oct 2015 15:35:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19653 invoked from network); 10 Oct 2015 15:35:00 -0000
From: cve-assign@mitre.org
To: guoyonggang@360.cn
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <2166DED8C457614D95A6AAC18B144F082B2D23@EX02.corp.qihoo.net>
Message-Id: <20151010153448.8B6371BEBFA@smtpvbsrv1.mitre.org>
Date: Sat, 10 Oct 2015 11:34:48 -0400 (EDT)
Subject: [oss-security] Re: CVE request - Android OS - Using the PPP character device driver caused the system to restart - Linux kernel

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> arg>>16 > 255 and 0xFFFF&arg > 255), which will lead to the use of
> null pointers in the kernel

>> https://code.google.com/p/android/issues/detail?id=187973

>> /dev/ppp is only accessible by root on Android so there's no security
>> impact on Android unless you can figure out how to get kernel code
>> execution out of a null pointer deref ... this is an issue with the
>> upstream Linux kernel

> Solution:
>       Add a judge in front of "ts = comp->tstate;"

> struct slcompress *
> slhc_init(int rslots, int tslots)
> ...
>       if ( tslots > 0 ) {
>            if(comp->tstate != NULL){
>                  ts = comp->tstate;
>                  for(i = comp->tslot_limit; i > 0; --i){

(not yet available at
http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/log/drivers/net/slip/slhc.c)

Use CVE-2015-7799.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWF+2rAAoJEL54rhJi8gl5D6EQAMS47rAiULfqi0QHF2HY1H9s
7hap9p2FD2c9B9Rbntsa8svrIvqSMibsfW40oAk+p+tIQWAucvOYe+UO8wngmtcE
qOlxQcRujsuWJ3igYHg0QzjfXKgs2MXU/+puUUpQsf9pmSHc7SwTRkSmyH8ynkbW
YHV4JvAHPZSRXBDISTRdQrvMH59h0c4sXeqHIwLDIECcRxnbaZrtHIbxXSKwVvBY
oLLsImD/rIp/Rix+16SPc0oiGHsDUEN2yrQZYnVj/ekBneqhdlXi1z8axWuzcC8P
ymkKs2PXdwPqqp4jnaQ+xatFvAQdYu8x0Sij6zQ5TnlLL8ZjXnquFz9cMPh17k5o
RURPQTyFRMBFejPgILzGucwoEnG2lLTm4ta3ExCzoplArGT8QzDdI2lLtNYwc+aK
En8vcPhC0NM+JbOLEXAA0r+vR5pTmfsLyYIKmauiUNKFN2rtE6lhuej0X9pcv29n
Em0xvhNNbIeb1dQGdqALMLikV0PDHCR8bkZoVzOLQj0JKy2SM4QXBAFoTVV1veSA
aSr8NWBYZGSur8y5uUf/Gu+vFYD9JV+WVd12Xa8jr8VMIsmjl6gqEsUUPhN33oYz
1/mKE3oTMUvB+ajkrsZSFgaL7Dhjj72ESB+wUCVgE9q/0CNP4zypGGLFVzp0eFSq
MBGpH8WVXN8IDKVsL+hk
=+L4m
-----END PGP SIGNATURE-----
