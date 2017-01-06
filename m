X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2958" "Friday" "6" "January" "2017" "22:51:10" "+0100" "Lizzie Dixon" "_@lizzie.io" "<20170106215110.GB6771@lizzie.io>" "96" "Re: [oss-security] Re: Firejail local root exploit" "^Date:" nil nil "1" "2017010621:51:10" "[oss-security] Re: Firejail local root exploit" (number mark "        _@lizzie.io  Jan  6   96/2958  " thread-indent "\"Re: [oss-security] Re: Firejail local root exploit\"\n") "<730e35dc08384f6f9bef4e403802a871@imshyb02.MITRE.ORG>" ("<1483655866.8979.68.camel@juliet.mcarpenter.org>" "<730e35dc08384f6f9bef4e403802a871@imshyb02.MITRE.ORG>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28285 invoked by uid 550); 6 Jan 2017 21:52:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27690 invoked from network); 6 Jan 2017 21:50:56 -0000
X-Auth-ID: _@lizzie.io
X-Sender-Id: _@lizzie.io
Message-ID: <20170106215110.GB6771@lizzie.io>
References: <1483655866.8979.68.camel@juliet.mcarpenter.org>
 <730e35dc08384f6f9bef4e403802a871@imshyb02.MITRE.ORG>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <730e35dc08384f6f9bef4e403802a871@imshyb02.MITRE.ORG>
User-Agent: Mutt/1.7.2 (2016-11-26)
Date: Fri, 6 Jan 2017 22:51:10 +0100
From: Lizzie Dixon <_@lizzie.io>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Firejail local root exploit
To: oss-security@lists.openwall.com

Hello oss-security,

I was inspired by this thread so I took a look as well. I noticed that
firejail allows ptrace with --allow-debuggers, which allows a
sandboxed program to escape the seccomp profile by rewriting permitted
system calls into unpermitted ones pre-Linux-4.8. This is documented
in the seccomp manpage:

http://man7.org/linux/man-pages/man2/seccomp.2.html

> Before kernel 4.8, the seccomp check will not be run again
> after the tracer is notified.  (This means that, on older
> kernels, seccomp-based sandboxes must not allow use of
> ptrace(2)—even of other sandboxed processes—without extreme
> care; ptracers can use this mechanism to escape from the
> seccomp sandbox.)

(I wrote a little program demonstrating this behavior last year at
https://blog.lizzie.io/linux-containers-in-500-loc.html#fn.51 ).

I emailed the author and they commited a fix (within 45 minutes!):
https://github.com/netblue30/firejail/commit/6b8dba29d73257311564ee7f27b9b14758cc693e#diff-18143ef0a33f3f378f310a976725f141R80

Should this have a CVE id as well?

Best,

Lizzie.

On 01/06, cve-assign@mitre.org wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
> 
> > 1. --tmpfs
> 
> Use CVE-2016-10117.
> 
> 
> > 2. Nuke /etc/resolv.conf
> 
> Use CVE-2016-10118.
> 
> 
> > /tmp was mounted tmpfs 0777 prior to:
> > 
> >   commit aa28ac9e09557b833f194f594e2940919d940d1f
> 
> Use CVE-2016-10119.
> 
> 
> > /dev, /dev/shm, /var/tmp, /var/lock were mounted 0777 prior to:
> > 
> >   commit cd0ecfc7a7b30abde20db6dea505cd8c58e7c046
> 
> Use CVE-2016-10120.
> 
> 
> > There are other weak perms fixed around here eg /dev/shm/firejail was
> > 0777 prior to:
> > 
> >   commit 1cab02f5ae3c90c01fae4d1c16381820b757a3a6
> 
> Use CVE-2016-10121.
> 
> 
> > 4. Environment not cleaned before root exec()
> 
> Use CVE-2016-10122.
> 
> 
> > don't allow --chroot as user without seccomp support
> 
> Use CVE-2016-10123.
> 
> - -- 
> CVE Assignment Team
> M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
> [ A PGP key is available for encrypted communications at
>   http://cve.mitre.org/cve/request_id.html ]
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v1
> 
> iQIcBAEBCAAGBQJYb1OiAAoJEHb/MwWLVhi2N9kP/0AHycN7Au+PTq/bHoxXVi4l
> 74YrEI8PcE1UHIkL2m1kOLbZGTWWc8E0uMEJFTfKrVoIPAINN3iYtU9dYukSACxu
> 4gyQK8xWuzpbqBeF/PIBaZsp9THvTy7sfz2dKYDh/n5i0AFRv34/cs8BUIcl9BDE
> 4D/1FgdwLqarh0SJvclJRBmi4zmftqub3xbt1dJItSfc/5u5SxWMHqHbmW5vESIf
> y3LU27S7E2qnSARfHxk1HfdqViDQO/76yYLQqlfGRc23wyj7ydFWQpRC28x0jjOL
> SCiC91a2gG7nGyV1l/uFIF8QAQMACNl3uJT/5Hgp8ugUOVAko81u/o0liNJMthRK
> NGWhENcFRuHqlqqxvOME/DfErfa7gn2cgFi+udl2BMfllCJb2ICH+Ddg9joaFLfu
> 33iPga5J0MB5YSPQYoCSERjz2Q/i65P9kzgeTjGRLOhHsfY4p6yxUr/YmqTJ9E+W
> DXiTCbpxNJXEsopKwHODBD4ausPQ83A8LGPine7eGaJKoW3q8UdphDqOqitCRFEL
> d/XkVjtt44N0wgjB/ABDezrRAYbRPSudcCDPYh7WVl6V/6D0YRuaqYJ/Q8LlT+Nl
> /17KzyEunx/+0lBjvdtyGz2UQN8F7+9XKl/S0ZRBJS9i+Hrb4ShctP53h2aNbTQT
> nC4OrYY4JBuW90DY4Ef2
> =DJ5s
> -----END PGP SIGNATURE-----
