X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["843" "Tuesday" "17" "January" "2017" "11:33:21" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<9235377.E4Xv9CnOap@blackgate>" "34" "Re: [oss-security] Re: jasper: invalid memory read in jas_matrix_asl (jas_seq.c)" "^Date:" nil nil "1" "2017011710:33:21" "[oss-security] Re: jasper: invalid memory read in jas_matrix_asl (jas_seq.c)" (number mark "U       ago@gentoo.o Jan 17   34/843   " thread-indent "\"Re: [oss-security] Re: jasper: invalid memory read in jas_matrix_asl (jas_seq.c)\"\n") "<e442aa4c259f4f8f855d4e2125208702@imshyb01.MITRE.ORG>" ("<e442aa4c259f4f8f855d4e2125208702@imshyb01.MITRE.ORG>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18391 invoked by uid 550); 17 Jan 2017 10:33:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18366 invoked from network); 17 Jan 2017 10:33:37 -0000
Message-ID: <9235377.E4Xv9CnOap@blackgate>
User-Agent: KMail/4.14.10 (Linux/4.4.39-gentoo; KDE/4.14.24; x86_64; ; )
In-Reply-To: <e442aa4c259f4f8f855d4e2125208702@imshyb01.MITRE.ORG>
References: <e442aa4c259f4f8f855d4e2125208702@imshyb01.MITRE.ORG>
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="nextPart2480148.SJEGA9zp0H"
Content-Transfer-Encoding: 7Bit
Date: Tue, 17 Jan 2017 11:33:21 +0100
From: Agostino Sarubbo <ago@gentoo.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: jasper: invalid memory read in jas_matrix_asl (jas_seq.c)
To: oss-security@lists.openwall.com

--nextPart2480148.SJEGA9zp0H
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"

On Monday 16 January 2017 19:11:33 cve-assign@mitre.org wrote:
> > []
> > https://blogs.gentoo.org/ago/2017/01/16/jasper-invalid-memory-read-in-jas
> > _matrix_asl-jas_seq-c
> > 
> > AddressSanitizer: SEGV on unknown address
> > The signal is caused by a READ memory access.
> > 
> > jas_matrix_asl ... jasper-1.900.27/src/libjasper/base/jas_seq.c:376:11
> 
> Use CVE-2017-5505.
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

--nextPart2480148.SJEGA9zp0H--

