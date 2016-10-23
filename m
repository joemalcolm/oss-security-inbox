X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1199" "Sunday" "23" "October" "2016" "09:45:37" "+0200" "Agostino Sarubbo" "ago@gentoo.org" "<1754691.K3Z88V5ftk@arcadia>" "36" "[oss-security] Re: jasper: two NULL pointer dereference in bmp_getdata (bmp_dec.c) (Incomplete fix for CVE-2016-8690)" nil nil nil "10" "2016102307:45:37" "[oss-security] Re: jasper: two NULL pointer dereference in bmp_getdata (bmp_dec.c) (Incomplete fix for CVE-2016-8690)" (number mark "U       ago@gentoo.o Oct 23   36/1199  " thread-indent "\"[oss-security] Re: jasper: two NULL pointer dereference in bmp_getdata (bmp_dec.c) (Incomplete fix for CVE-2016-8690)\"\n") "<20161023010246.51126336018@smtpvbsrv1.mitre.org>" ("<20161023010246.51126336018@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 4070 invoked by uid 550); 23 Oct 2016 07:45:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 4052 invoked from network); 23 Oct 2016 07:45:11 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Date: Sun, 23 Oct 2016 09:45:37 +0200
Message-ID: <1754691.K3Z88V5ftk@arcadia>
User-Agent: KMail/4.14.10 (Linux/4.1.15-gentoo-r1; KDE/4.14.24; x86_64; ; )
In-Reply-To: <20161023010246.51126336018@smtpvbsrv1.mitre.org>
References: <20161023010246.51126336018@smtpvbsrv1.mitre.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] Re: jasper: two NULL pointer dereference in bmp_getdata (bmp_dec.c) (Incomplete fix for CVE-2016-8690)

On Saturday 22 October 2016 21:02:46 cve-assign@mitre.org wrote:
> > https://blogs.gentoo.org/ago/2016/10/18/jasper-two-null-pointer-dereferenc
> > e-in-bmp_getdata-bmp_dec-c-incomplete-fix-for-cve-2016-8690
> > 
> > AddressSanitizer: SEGV on unknown address 0x000000000000
> > 0x7f90527a18fd in bmp_getdata ...
> > jasper-1.900.5/src/libjasper/bmp/bmp_dec.c:394:5
> Use CVE-2016-8884.
> 
> > AddressSanitizer: SEGV on unknown address 0x000000000000
> > 0x7f888b2f5a43 in bmp_getdata ...
> > jasper-1.900.5/src/libjasper/bmp/bmp_dec.c:398:5
> Use CVE-2016-8885.
> 
> --
> CVE Assignment Team
> M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
> [ A PGP key is available for encrypted communications at
>   http://cve.mitre.org/cve/request_id.html ]

Hello Mitre,

the previous assignment on this issue was about only one CVE ( see 
http://www.openwall.com/lists/oss-security/2016/10/16/18 )

We sayd that the cause of the two null pointer access was the same.

Now for completeness I posted the stacktrace of both locations in bmp_dec.c 
but I guess that the root cause remains the same.

Do you need to reject one of these two or it is fine as is?


-- 
Agostino Sarubbo
Gentoo Linux Developer
