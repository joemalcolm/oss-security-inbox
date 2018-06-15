X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1110" "Friday" "15" "June" "2018" "15:25:07" "+0200" "Marcus Meissner" "meissner@suse.de" "<20180615132506.m2ks4ptiky4byayq@suse.de>" "29" "Re: [oss-security] Re: Intel FP security issue" "^Date:" nil nil "6" "2018061513:25:07" "[oss-security] Re: Intel FP security issue" (number mark "        meissner@sus Jun 15   29/1110  " thread-indent "\"Re: [oss-security] Re: Intel FP security issue\"\n") "<CAOp4FwSb4wWUGL57msLTj1yNjzCtQP3zqKfLba8RME0L+4VWkg@mail.gmail.com>" ("<CAOp4FwSfmC=vLLSTxZYFbAbkh_j3eJJGqvwTg5R_bgzh9vyuEA@mail.gmail.com>" "<CAOp4FwSb4wWUGL57msLTj1yNjzCtQP3zqKfLba8RME0L+4VWkg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24027 invoked by uid 550); 15 Jun 2018 13:25:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24009 invoked from network); 15 Jun 2018 13:25:19 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20180615132506.m2ks4ptiky4byayq@suse.de>
References: <CAOp4FwSfmC=vLLSTxZYFbAbkh_j3eJJGqvwTg5R_bgzh9vyuEA@mail.gmail.com>
 <CAOp4FwSb4wWUGL57msLTj1yNjzCtQP3zqKfLba8RME0L+4VWkg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOp4FwSb4wWUGL57msLTj1yNjzCtQP3zqKfLba8RME0L+4VWkg@mail.gmail.com>
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: NeoMutt/20170421 (1.8.2)
Date: Fri, 15 Jun 2018 15:25:07 +0200
From: Marcus Meissner <meissner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Intel FP security issue
To: oss-security@lists.openwall.com

Hi,

On Wed, Jun 13, 2018 at 11:07:18PM +0400, Loganaden Velvindron wrote:
> On Wed, Jun 13, 2018 at 7:34 PM, Loganaden Velvindron
> <loganaden@gmail.com> wrote:
> > Hi All,
> >
> > Both OpenBSD and DragonflyBSD have gone ahead and committed fixes for
> > the rumored Intel FP issue:
> >
> > OpenBSD: https://marc.info/?l=openbsd-cvs&m=152818076013158&w=2
> > DragonflyBSD: http://lists.dragonflybsd.org/pipermail/commits/2018-June/672324.html
> >
> > I think that the cat is already out of the bag, and releasing details
> > of this security problem makes sense. Since this has gone public, Is
> > there a reason to keep this under embargo ?
> >
> 
> FreeBSD appears to be moving in this direction too:
> https://svnweb.freebsd.org/base?view=revision&revision=335072

For the record, this is https://www.intel.com/content/www/us/en/security-center/advisory/intel-sa-00145.html
aka CVE-2018-3665 with codename "Lazy FPU Save/Restore".

XEN advisory https://xenbits.xen.org/xsa/advisory-267.html was posted here too, describing it a bit better.

Full details are planned to be released June 27th.

Ciao, Marcus
