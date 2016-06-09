X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1578" "Thursday" "9" "June" "2016" "11:32:07" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160609153207.6011C3AE009@smtpvbsrv1.mitre.org>" "38" "[oss-security] Re: CVE Request: haproxy remote denial of service via reqdeny" nil nil nil "6" "2016060915:32:07" "[oss-security] Re: CVE Request: haproxy remote denial of service via reqdeny" (number mark "U       cve-assign@m Jun  9   38/1578  " thread-indent "\"[oss-security] Re: CVE Request: haproxy remote denial of service via reqdeny\"\n") "<20160609150629.GC7655@suse.de>" ("<20160609150629.GC7655@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28553 invoked by uid 550); 9 Jun 2016 15:32:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28533 invoked from network); 9 Jun 2016 15:32:19 -0000
From: cve-assign@mitre.org
To: meissner@suse.de
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <20160609150629.GC7655@suse.de>
Message-Id: <20160609153207.6011C3AE009@smtpvbsrv1.mitre.org>
Date: Thu,  9 Jun 2016 11:32:07 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: haproxy remote denial of service via reqdeny

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> This is a remote denial of service against haproxy (uncontrollable crash).
> 
> http://git.haproxy.org/?p=haproxy-1.6.git;a=commit;h=60f01f8c89e4fb2723d5a9f2046286e699567e0b

>> is filled only
>> by actions "http-request deny" and "http-request tarpit". It's then used
>> in the deny code path to emit the proper error message, but is used
>> uninitialized when the deny comes from a "reqdeny" rule, causing random
>> behaviours ranging from returning a 200, an empty response, or crashing
>> the process.

Use CVE-2016-5360.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXWYtiAAoJEHb/MwWLVhi2jiYP/15CBap1NSe+nJG8HRO/Kxwe
hIxfrw/B8r0HtM6+nB0rfkXhQGbzIhSe47P0IDHHHyHI97EiX3cOoQcxieMEcOQ1
UgXb+IOvYnXNxW2vOs4OWCQi1DRLjSwaIPLvAtGdukLFG1BlefehXmuzAW0A+jpB
gzfgBgqYmvKfnnUScBGb+01SYXf1l3QgIBQ0tcyAADAbK2ogQxjWN+KpD3BGu9yL
fAQjLk/qpHoz79G/GNb9KDSYYlqipr07mLsmraa0tVzav3yoR2w92avpetlPV1Eq
dFdomo0zCSO3eZ1yl1wg1uIPE0PVYw2JmWu4LLpAfTSSFbEKorcSANGS9zbLBGJi
YLSjCqoLctPCF/6jaHBZV593fNGgFlg6DnBTeCGlSImH9ODmGlzOiLwF5rsrffSK
IH+Odqc6q1iJdagxcgPFbNIx8S/pb7ZfScUd5ubOFKSsIEi3UrWxREsa1PB6NIeb
7z2J5gcaftc6lUn1+pH3+nrzPLQ6JbvydXONxWPlxt4oztK94nzHOCnbs2cOhGfM
IwSlr8L1nI5TWvLkvwabKtYPeLxGVECHQ5akG2MTPzez8RBx1Gu6XUrwU0Wlc/xi
ctj0Tp2FV1/qnk3OEubzZ7p0iva4VPWx1rkZdcX/V0Mg+8UvSu+IklCm+1uJy3yk
LRnf/DS6Fuq2/DbEK9kC
=XzKt
-----END PGP SIGNATURE-----
