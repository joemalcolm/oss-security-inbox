X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1472" "Tuesday" "17" "January" "2017" "11:30:36" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<2831124.Ha61dFcUh2@blackgate>" "55" "Re: [oss-security] Re: jasper: multiple crashes with UBSAN" "^Date:" nil nil "1" "2017011710:30:36" "[oss-security] Re: jasper: multiple crashes with UBSAN" (number mark "U       ago@gentoo.o Jan 17   55/1472  " thread-indent "\"Re: [oss-security] Re: jasper: multiple crashes with UBSAN\"\n") "<8a5a04a665204da0b2ed5ad2766b05b3@imshyb01.MITRE.ORG>" ("<8a5a04a665204da0b2ed5ad2766b05b3@imshyb01.MITRE.ORG>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5919 invoked by uid 550); 17 Jan 2017 10:30:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5884 invoked from network); 17 Jan 2017 10:30:53 -0000
Message-ID: <2831124.Ha61dFcUh2@blackgate>
User-Agent: KMail/4.14.10 (Linux/4.4.39-gentoo; KDE/4.14.24; x86_64; ; )
In-Reply-To: <8a5a04a665204da0b2ed5ad2766b05b3@imshyb01.MITRE.ORG>
References: <8a5a04a665204da0b2ed5ad2766b05b3@imshyb01.MITRE.ORG>
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="nextPart2229848.xZi9YBWM69"
Content-Transfer-Encoding: 7Bit
Date: Tue, 17 Jan 2017 11:30:36 +0100
From: Agostino Sarubbo <ago@gentoo.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: jasper: multiple crashes with UBSAN
To: oss-security@lists.openwall.com

--nextPart2229848.xZi9YBWM69
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"

On Monday 16 January 2017 19:06:47 cve-assign@mitre.org wrote:
> > http://blogs.gentoo.org/ago/2017/01/16/jasper-multiple-crashes-with-ubsan/
> > 
> > [] jasper-1.900.17/src/libjasper/include/jasper/jas_math.h:156:11
> > runtime error: left shift of negative value -185
> 
> Use CVE-2017-5498.
> 
> > [] jasper-1.900.17/src/libjasper/jpc/jpc_dec.c:1838:9
> > runtime error: signed integer overflow: -64356352 * 
6359082673847140352
> > cannot be represented in type 'long'
> 
> Use CVE-2017-5499.
> 
> > [] jasper-1.900.17/src/libjasper/jpc/jpc_dec.c:1819:40
> > runtime error: shift exponent 117 is too large for 64-bit type 'jpc_fix_t'
> > (aka 'long')
> 
> Use CVE-2017-5500.
> 
> > [] jasper-1.900.17/src/libjasper/jpc/jpc_tsfb.c:233:35
> > runtime error: signed integer overflow: 2013306369 + 251691968 
cannot be
> > represented in type 'int'
> 
> Use CVE-2017-5501.
> 
> > [] jasper-1.900.17/src/libjasper/jp2/jp2_dec.c:485:49
> > runtime error: left shift of negative value -26
> 
> Use CVE-2017-5502.
> 
> 
> --
> CVE Assignment Team
> M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
> [ A PGP key is available for encrypted communications at
>   http://cve.mitre.org/cve/request_id.html ]

The previous mail clearly state:
> Timeline:
> 2016-10-28: bug discovered and reported to upstream

Why CVE-2017-* ?

--
Agostino

--nextPart2229848.xZi9YBWM69--

