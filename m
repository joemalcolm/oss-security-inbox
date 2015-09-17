X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1377" "Thursday" "17" "September" "2015" "21:00:47" "+0200" "Marcus Meissner" "meissner@suse.de" "<20150917190047.GC26219@suse.de>" "39" "[oss-security] Re: CVE Request: remote triggerable use-after-free in rpcbind" nil nil nil "9" "2015091719:00:47" "[oss-security] Re: CVE Request: remote triggerable use-after-free in rpcbind" (number mark "        meissner@sus Sep 17   39/1377  " thread-indent "\"[oss-security] Re: CVE Request: remote triggerable use-after-free in rpcbind\"\n") "<55FB0D43.6070105@RedHat.com>" ("<20150917162046.2F4C16C0044@smtpvmsrv1.mitre.org>" "<55FB0BAE.8070101@RedHat.com>" "<20150917185420.GB26219@suse.de>" "<55FB0D43.6070105@RedHat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28642 invoked by uid 550); 17 Sep 2015 19:00:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28624 invoked from network); 17 Sep 2015 19:00:59 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20150917190047.GC26219@suse.de>
References: <20150917162046.2F4C16C0044@smtpvmsrv1.mitre.org>
 <55FB0BAE.8070101@RedHat.com>
 <20150917185420.GB26219@suse.de>
 <55FB0D43.6070105@RedHat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <55FB0D43.6070105@RedHat.com>
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com,
	Olaf Kirch <okir@suse.de>
Date: Thu, 17 Sep 2015 21:00:47 +0200
From: Marcus Meissner <meissner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: remote triggerable use-after-free in rpcbind
To: Steve Dickson <SteveD@redhat.com>

On Thu, Sep 17, 2015 at 02:58:11PM -0400, Steve Dickson wrote:
> 
> 
> On 09/17/2015 02:54 PM, Marcus Meissner wrote:
> > On Thu, Sep 17, 2015 at 02:51:26PM -0400, Steve Dickson wrote:
> >>
> >>
> >> On 09/17/2015 12:20 PM, cve-assign@mitre.org wrote:
> >>> -----BEGIN PGP SIGNED MESSAGE-----
> >>> Hash: SHA256
> >>>
> >>>> http://www.spinics.net/lists/linux-nfs/msg53045.html
> >>>> https://bugzilla.suse.com/show_bug.cgi?id=946204
> >>>
> >>>> frees the netbuf caller_addr and caller_addr.buf. However, it does not
> >>>> clear xp_rtaddr, so xp_rtaddr.buf now refers to memory region A, which
> >>>> is free.
> >>>>
> >>>> ... It will reuse the buffer inside xp_rtaddr
> >>>
> >>> Use CVE-2015-7236.
> >> Will there be a bz opened up? 
> > 
> > Where should I open it? kernel.org?
> IDK... Aren't CVE suppose to be keep under wrap until
> they are fixed... I know there are some rules around CVEs...

Security issues can be either predisclosed in a smaller circle (the term
is "responsible disclosure"), or published directly.

As Olaf mailed the issue to the linux-nfs list a while ago, and SUSE evaluated
and found the security impact only afterwards, the issue is considered already
"public" and so gets no embargo.

If the impact would be more obvious before it might have get a predisclosure.

There are no strict rules though, just common understanding.

Ciao, Marcus
