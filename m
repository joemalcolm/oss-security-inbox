X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3102" "Monday" "7" "August" "2017" "14:37:56" "+0200" "Marcus Meissner" "meissner@suse.de" "<20170807123756.GA27766@suse.de>" "97" "Re: [oss-security] Cve issue discussion" nil nil nil "8" "2017080712:37:56" "[oss-security] Cve issue discussion" (number mark "U       meissner@sus Aug  7   97/3102  " thread-indent "\"Re: [oss-security] Cve issue discussion\"\n") "<CA+PdXcspyUe_0yO1bypEWmsZNd9xng-4avjExXFnbb0pGi_X=w@mail.gmail.com>" ("<SG2PR0401MB1834CC0A72F7B7E547C0F42888B50@SG2PR0401MB1834.apcprd04.prod.outlook.com>" "<6651351.AxBd7pCpa9@wanheda>" "<SG2PR0401MB18341DCF23068229492F4B2A88B50@SG2PR0401MB1834.apcprd04.prod.outlook.com>" "<CA+PdXcspyUe_0yO1bypEWmsZNd9xng-4avjExXFnbb0pGi_X=w@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28495 invoked by uid 550); 7 Aug 2017 12:38:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28467 invoked from network); 7 Aug 2017 12:38:07 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Mon, 7 Aug 2017 14:37:56 +0200
From: Marcus Meissner <meissner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20170807123756.GA27766@suse.de>
References: <SG2PR0401MB1834CC0A72F7B7E547C0F42888B50@SG2PR0401MB1834.apcprd04.prod.outlook.com>
 <6651351.AxBd7pCpa9@wanheda>
 <SG2PR0401MB18341DCF23068229492F4B2A88B50@SG2PR0401MB1834.apcprd04.prod.outlook.com>
 <CA+PdXcspyUe_0yO1bypEWmsZNd9xng-4avjExXFnbb0pGi_X=w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CA+PdXcspyUe_0yO1bypEWmsZNd9xng-4avjExXFnbb0pGi_X=w@mail.gmail.com>
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [oss-security] Cve issue discussion

Hi,

if it could crash the image reader I would consider it "remote denial of service"
classed and CVE worthy. 

Ciao, Marcus
On Mon, Aug 07, 2017 at 08:15:14AM -0400, Glenn Randers-Pehrson wrote:
> Do memory-exhaustion bugs get a CVE?  Suppose an application is fooled
> into requesting 2Gb of memory but then never uses it other than
> attempting to read it, immediately hitting EOF, and cleaning up.
> 
> I'm addressing such a bug in libpng right now, in which the user
> is sent a PNG file containing a tEXt chunk that claims to have a 2GB
> length (but none of the 2GB data is included in the PNG).  On my
> platform libpng deals with that almost instantaneously, but I think
> some platforms (ASAN builds?) would actually allocate the memory
> before proceeding to read the data.
> 
> Glenn
> 
> 
> On Mon, Aug 7, 2017 at 5:47 AM, ne xo <nexo123@outlook.kr> wrote:
> > Hello,
> >
> > thank you for the reply!
> >
> > I chose the report at random.
> >
> > I'm sorry if I was offended to mention the report.
> >
> > Thanks.
> > <http://aka.ms/weboutlook>
> > ________________________________
> > 보낸 사람: Agostino Sarubbo <ago@gentoo.org>
> > 보낸 날짜: 2017년 8월 7일 월요일 오후 4:42:05
> > 받는 사람: oss-security@lists.openwall.com
> > 제목: Re: [oss-security] Cve issue discussion
> >
> > On Monday 07 August 2017 01:03:53 ne xo wrote:
> >> Hello,
> >>
> >>
> >> I am curious about issuing CVEs.
> >>
> >> I can see that a "NULL pointer dereference" or a bug where the exploit has
> >> not been verified also get a CVE.
> >
> >>
> >> heap-overflows may or may not be exploitable.
> >>
> >>
> >> It takes a lot of time to analyze the exploit and create the exploit code.
> >>
> >>
> >> Is it right to be assigned a CVE only if it is exploitable?
> >>
> >>
> >> Or do you think all bugs need to get a CVE?
> >>
> >>
> >> Thanks.
> >>
> >> ---
> >>
> >> ref
> >>
> >> ---
> >>
> >> [1]http://www.openwall.com/lists/oss-security/2017/04/10/17 - NULL pointer
> >> dereference
> >> [2]http://www.openwall.com/lists/oss-security/2017/04/10/15 -
> >> memory allocation failure
> >
> > Hi.
> >
> > Since you mentioned some issues reported by me, let me answer directly.
> > For the first, it is an undefined behavior, so actually you don't see the
> > crash.
> > Nowadays, the undefined behavior issues do not get anymore a CVE.
> >
> >
> > For the second, ASAN reports that the program want to use more that 64GB of
> > ram to execute the process so ASAN hangs the process. In this case is up to
> > the maintainer check whether there is a problem in the code or not, or it is
> > expected. The better double-check would be verify what happens without ASAN.
> >
> > I'd like also to mention that MITRE assigns CVE after they analyze the
> > reported issue, so if an issue does not deserve a CVE, MITRE probably won't
> > assign accompanied by an explanation.
> >
> > --
> > Agostino Sarubbo
> > Gentoo Linux Developer
> 

-- 
Marcus Meissner,SUSE LINUX GmbH; Maxfeldstrasse 5; D-90409 Nuernberg; Zi. 3.1-33,+49-911-740 53-432,,serv=loki,mail=wotan,type=real <meissner@suse.de>
