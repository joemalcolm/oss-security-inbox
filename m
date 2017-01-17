X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["841" "Tuesday" "17" "January" "2017" "11:33:28" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<2971422.7a4hKthq7I@blackgate>" "34" "Re: [oss-security] Re: jasper: invalid memory write in dec_clnpass (jpc_t1dec.c)" nil nil nil "1" "2017011710:33:28" "[oss-security] Re: jasper: invalid memory write in dec_clnpass (jpc_t1dec.c)" (number mark "U       ago@gentoo.o Jan 17   34/841   " thread-indent "\"Re: [oss-security] Re: jasper: invalid memory write in dec_clnpass (jpc_t1dec.c)\"\n") "<6a99e3df9a9449dcb2ea3a4358c469b0@imshyb01.MITRE.ORG>" ("<6a99e3df9a9449dcb2ea3a4358c469b0@imshyb01.MITRE.ORG>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20223 invoked by uid 550); 17 Jan 2017 10:33:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20073 invoked from network); 17 Jan 2017 10:33:44 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Date: Tue, 17 Jan 2017 11:33:28 +0100
Message-ID: <2971422.7a4hKthq7I@blackgate>
User-Agent: KMail/4.14.10 (Linux/4.4.39-gentoo; KDE/4.14.24; x86_64; ; )
In-Reply-To: <6a99e3df9a9449dcb2ea3a4358c469b0@imshyb01.MITRE.ORG>
References: <6a99e3df9a9449dcb2ea3a4358c469b0@imshyb01.MITRE.ORG>
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="nextPart2001436.pLm7yc0Z7P"
Content-Transfer-Encoding: 7Bit
Subject: Re: [oss-security] Re: jasper: invalid memory write in dec_clnpass (jpc_t1dec.c)

--nextPart2001436.pLm7yc0Z7P
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"

On Monday 16 January 2017 19:08:48 cve-assign@mitre.org wrote:
> > []
> > https://blogs.gentoo.org/ago/2017/01/16/jasper-invalid-memory-write-in-de
> > c_clnpass-jpc_t1dec-c
> > 
> > AddressSanitizer: SEGV on unknown address
> > The signal is caused by a WRITE memory access.
> > 
> > dec_clnpass ... jasper-1.900.27/src/libjasper/jpc/jpc_t1dec.c:869:4
> 
> Use CVE-2017-5503.
> 
> 
> --
> CVE Assignment Team
> M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
> [ A PGP key is available for encrypted communications at
>   http://cve.mitre.org/cve/request_id.html ]

The previous mail clearly state:
> Timeline:
> 2016-11-20: bug discovered and reported to upstream

Why a CVE-2017-* ?

--
Agostino

--nextPart2001436.pLm7yc0Z7P--

