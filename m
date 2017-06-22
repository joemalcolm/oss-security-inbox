X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["813" "Thursday" "22" "June" "2017" "16:34:02" "+0200" "Marcus Meissner" "meissner@suse.de" "<20170622143402.GN32005@suse.de>" "21" "Re: [oss-security] stackguard fix in Red Hat and Ubuntu kernels" nil nil nil "6" "2017062214:34:02" "[oss-security] stackguard fix in Red Hat and Ubuntu kernels" (number mark "U       meissner@sus Jun 22   21/813   " thread-indent "\"Re: [oss-security] stackguard fix in Red Hat and Ubuntu kernels\"\n") "<20170622133812.GA1672@kroah.com>" ("<20170622121330.GA18550@openwall.com>" "<20170622121833.GI32005@suse.de>" "<20170622133812.GA1672@kroah.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17828 invoked by uid 550); 22 Jun 2017 14:34:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17806 invoked from network); 22 Jun 2017 14:34:14 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Thu, 22 Jun 2017 16:34:02 +0200
From: Marcus Meissner <meissner@suse.de>
To: oss-security@lists.openwall.com
Cc: Vasily Averin <vvs@virtuozzo.com>,
	Konstantin Khorenko <khorenko@virtuozzo.com>
Message-ID: <20170622143402.GN32005@suse.de>
References: <20170622121330.GA18550@openwall.com>
 <20170622121833.GI32005@suse.de>
 <20170622133812.GA1672@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170622133812.GA1672@kroah.com>
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [oss-security] stackguard fix in Red Hat and Ubuntu kernels

On Thu, Jun 22, 2017 at 09:38:13PM +0800, Greg KH wrote:
> On Thu, Jun 22, 2017 at 02:18:33PM +0200, Marcus Meissner wrote:
> > Hi,
> > 
> > Yes, we at SUSE are seeing similar crashes. Thanks for the reproducer!
> 
> The patches upstream in Linus's tree should resolve these crashes,
> correct?  If not, please let the kernel developers know, as we ended up
> going with a different set of changes than the distros shipped, and are
> still working on getting these backported to older stable kernels at the
> moment.

For a bit of history...

We used the patch developed by Michal Hocko, which was apparently adjusted/rewritten
by Hugh Dickins for upstream inclusion.

We are working on the improvements on those for our 3.0 kernel, but take
a backport of the mainline fix for 3.12 and 4.4 kernels.

Ciao, Marcus
