X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["839" "Tuesday" "17" "January" "2017" "11:33:24" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<2348308.pih3DINQSq@blackgate>" "34" "Re: [oss-security] Re: jasper: invalid memory read in jpc_undo_roi (jpc_dec.c)" nil nil nil "1" "2017011710:33:24" "[oss-security] Re: jasper: invalid memory read in jpc_undo_roi (jpc_dec.c)" (number mark "U       ago@gentoo.o Jan 17   34/839   " thread-indent "\"Re: [oss-security] Re: jasper: invalid memory read in jpc_undo_roi (jpc_dec.c)\"\n") "<09d7ec25ba894f319c2e8257965b0ea0@imshyb01.MITRE.ORG>" ("<09d7ec25ba894f319c2e8257965b0ea0@imshyb01.MITRE.ORG>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19916 invoked by uid 550); 17 Jan 2017 10:33:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19758 invoked from network); 17 Jan 2017 10:33:41 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Date: Tue, 17 Jan 2017 11:33:24 +0100
Message-ID: <2348308.pih3DINQSq@blackgate>
User-Agent: KMail/4.14.10 (Linux/4.4.39-gentoo; KDE/4.14.24; x86_64; ; )
In-Reply-To: <09d7ec25ba894f319c2e8257965b0ea0@imshyb01.MITRE.ORG>
References: <09d7ec25ba894f319c2e8257965b0ea0@imshyb01.MITRE.ORG>
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="nextPart1638296.PX4rkTCLtu"
Content-Transfer-Encoding: 7Bit
Subject: Re: [oss-security] Re: jasper: invalid memory read in jpc_undo_roi (jpc_dec.c)

--nextPart1638296.PX4rkTCLtu
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"

On Monday 16 January 2017 19:10:08 cve-assign@mitre.org wrote:
> > []
> > https://blogs.gentoo.org/ago/2017/01/16/jasper-invalid-memory-read-in-jpc
> > _undo_roi-jpc_dec-c
> > 
> > AddressSanitizer: SEGV on unknown address
> > The signal is caused by a READ memory access.
> > 
> > jpc_undo_roi ... jasper-1.900.27/src/libjasper/jpc/jpc_dec.c:1925:10
> 
> Use CVE-2017-5504.
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

--nextPart1638296.PX4rkTCLtu--

