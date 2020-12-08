X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["899" "Tuesday" "8" "December" "2020" "08:38:01" "+0100" "Marcus Meissner" "meissner@suse.de" "<20201208073801.GA26544@suse.de>" "33" "Re: [oss-security] Linux kernel NULL-ptr deref bug in spk_ttyio_receive_buf2" nil nil nil "12" "2020120807:38:01" "[oss-security] Linux kernel NULL-ptr deref bug in spk_ttyio_receive_buf2" (number mark "U       meissner@sus Dec  8   33/899   " thread-indent "\"Re: [oss-security] Linux kernel NULL-ptr deref bug in spk_ttyio_receive_buf2\"\n") "<CA+-U7QBR-P1==EsFfr+ZxEQ8Tt2D6obJumq1oN165NWFJi6Caw@mail.gmail.com>" ("<CAM1BPE5H=DB0=83v4+i4pqUCJeJre5UTv5XSSV1MoX-4Ufyb0A@mail.gmail.com>" "<76041A8A-5899-4BC6-AEDE-58C591807AFB@oracle.com>" "<CA+-U7QBR-P1==EsFfr+ZxEQ8Tt2D6obJumq1oN165NWFJi6Caw@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Linux kernel NULL-ptr deref bug in spk_ttyio_receive_buf2" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7985 invoked by uid 550); 8 Dec 2020 07:38:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7967 invoked from network); 8 Dec 2020 07:38:13 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Tue, 8 Dec 2020 08:38:01 +0100
From: Marcus Meissner <meissner@suse.de>
To: oss-security@lists.openwall.com
Cc: John Haxby <john.haxby@oracle.com>
Message-ID: <20201208073801.GA26544@suse.de>
References: <CAM1BPE5H=DB0=83v4+i4pqUCJeJre5UTv5XSSV1MoX-4Ufyb0A@mail.gmail.com>
 <76041A8A-5899-4BC6-AEDE-58C591807AFB@oracle.com>
 <CA+-U7QBR-P1==EsFfr+ZxEQ8Tt2D6obJumq1oN165NWFJi6Caw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CA+-U7QBR-P1==EsFfr+ZxEQ8Tt2D6obJumq1oN165NWFJi6Caw@mail.gmail.com>
Organization: SUSE Software Solutions =?iso-8859-1?Q?Ger?=
 =?iso-8859-1?Q?many_GmbH=2C_Maxfeldstr=2E_5=2C_90409_Nuernberg=2C_Germany?=
 =?iso-8859-1?Q?=2C_GF=3A_Felix_Imend=F6rffer=2C_HRB_36809=2C_AG_N=FCrnber?=
 =?iso-8859-1?Q?g?=
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [oss-security] Linux kernel NULL-ptr deref bug in
 spk_ttyio_receive_buf2

Hi,

CVE-2020-27830 was assigned on linux-distros by Redhat.

(It might be good to keep discussions on oss-security after publication to avoid parallel threads.)

Ciao, Marcus

On Mon, Dec 07, 2020 at 07:02:02PM +0800, - Nop wrote:
> Hi,
> 
> yes, we asked for a CVE in the original email sent to
> linux-distros@vs.openwall.org.
> 
> Thanks,
> Bodong Zhao
> 
> On Mon, Dec 7, 2020 at 6:23 PM John Haxby <john.haxby@oracle.com> wrote:
> 
> >
> >
> > > On 7 Dec 2020, at 02:20, Shisong Qin <qinshisong1205@gmail.com> wrote:
> > >
> > > Recently we found another NULL-ptr deref BUG in spk_ttyio.c in the latest
> > > Linux kernel(5.9.11 is the latest at that now). In the
> > > spk_ttyio_receive_buf2() function, it would dereference spk_ttyio_synth
> > > without checking whether it is NULL or not, and may lead to a NULL-ptr
> > > deref crash.
> >
> > Did you ask for a CVE for bug?
> >
> > jch
> >
