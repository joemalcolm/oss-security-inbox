X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1614" "Monday" "19" "June" "2017" "18:48:36" "+0200" "Marcus Meissner" "meissner@suse.de" "<20170619164836.GQ20604@suse.de>" "37" "Re: [oss-security] Qualys Security Advisory - The Stack Clash" "^Cc:" nil nil "6" "2017061916:48:36" "[oss-security] Qualys Security Advisory - The Stack Clash" (number mark "        meissner@sus Jun 19   37/1614  " thread-indent "\"Re: [oss-security] Qualys Security Advisory - The Stack Clash\"\n") "<1497890780.6892.2.camel@gmail.com>" ("<20170619152843.GC7769@localhost.localdomain>" "<2a53a138-8f6b-133d-72b2-6dfd5355241a@redhat.com>" "<1497890780.6892.2.camel@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19877 invoked by uid 550); 19 Jun 2017 16:48:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19853 invoked from network); 19 Jun 2017 16:48:48 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20170619164836.GQ20604@suse.de>
References: <20170619152843.GC7769@localhost.localdomain>
 <2a53a138-8f6b-133d-72b2-6dfd5355241a@redhat.com>
 <1497890780.6892.2.camel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1497890780.6892.2.camel@gmail.com>
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: Qualys Security Advisory <qsa@qualys.com>
Date: Mon, 19 Jun 2017 18:48:36 +0200
From: Marcus Meissner <meissner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Qualys Security Advisory - The Stack Clash
To: oss-security@lists.openwall.com

On Mon, Jun 19, 2017 at 12:46:20PM -0400, Daniel Micay wrote:
> On Mon, 2017-06-19 at 09:40 -0600, kseifried@redhat.com wrote:
> > On 06/19/2017 09:28 AM, Qualys Security Advisory wrote:
> > > 
> > > Qualys Security Advisory
> > > 
> > > The Stack Clash
> > 
> > I just want to publicly thank Qualys for working with the Open Source
> > community so we (Linux and *BSD) could all get this fixed properly.
> > There was a lot of work from everyone involved and it all went pretty
> > smoothly.
> 
> Fixing it properly would really also include fixing these:
> 
> https://gcc.gnu.org/bugzilla/show_bug.cgi?id=68065
> https://gcc.gnu.org/bugzilla/show_bug.cgi?id=66479
> 
> and actually implementing -fstack-check as not just a no-op in Clang.
> 
> Windows has working stack probes, even in Windows XP and perhaps even
> earlier. LLVM has working stack probes there (not sure if GCC deals with
> it properly) yet doesn't make them available elsewhere.
> 
> Rust is 'memory safe' but has this same stack exhaustion issue. It
> didn't used to have the issue, since it kept around the LLVM segmented
> stack code generation after it dropped segmented stacks to check for
> stack overflow in function preludes. That got dropped for a 1-3%
> performance win from using stack probes instead... which was a good
> idea, but without implementing stack probes... making it a terrible
> idea. It was deferred to some later date. That was in July 2015, and 2
> years later it's not done.

The GCC team at least has been working on patches on this topic and they will also
continue to work on this publically soon.

Ciao, Marcus
