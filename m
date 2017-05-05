X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1206" "Friday" "5" "May" "2017" "11:22:58" "+0200" "Marcus Meissner" "meissner@suse.de" "<20170505092258.GF25854@suse.de>" "29" "Re: [oss-security] rpcbomb: remote rpcbind denial-of-service" "^Date:" nil nil "5" "2017050509:22:58" "[oss-security] rpcbomb: remote rpcbind denial-of-service" (number mark "        meissner@sus May  5   29/1206  " thread-indent "\"Re: [oss-security] rpcbomb: remote rpcbind denial-of-service\"\n") "<20170504005520.GD12174@hunt>" ("<CAO5O-EKoyVe5oxT3nx6pOYsHwhvp9SxcezkV-m5pnpw4Q_4j8A@mail.gmail.com>" "<20170504005520.GD12174@hunt>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7545 invoked by uid 550); 5 May 2017 09:23:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7521 invoked from network); 5 May 2017 09:23:11 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20170505092258.GF25854@suse.de>
References: <CAO5O-EKoyVe5oxT3nx6pOYsHwhvp9SxcezkV-m5pnpw4Q_4j8A@mail.gmail.com>
 <20170504005520.GD12174@hunt>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170504005520.GD12174@hunt>
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.24 (2015-08-30)
Date: Fri, 5 May 2017 11:22:58 +0200
From: Marcus Meissner <meissner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] rpcbomb: remote rpcbind denial-of-service
To: oss-security@lists.openwall.com

On Wed, May 03, 2017 at 05:55:20PM -0700, Seth Arnold wrote:
> On Wed, May 03, 2017 at 08:55:23PM +0200, Guido Vranken wrote:
> > This vulnerability allows an attacker to allocate any amount of bytes
> > (up to 4 gigabytes per attack) on a remote rpcbind host, and the
> > memory is never freed unless the process crashes or the administrator
> > halts or restarts the rpcbind service.
> > [...]
> > An extensive write-up can be found here:
> > https://guidovranken.wordpress.com/2017/05/03/rpcbomb-remote-rpcbind-denial-of-service-patches/
> > 
> > Exploit + patches: https://github.com/guidovranken/rpcbomb/
> 
> Hello Guido, nice find. Have CVE numbers been requested for this issue
> yet? Have you investigated if ntirpc is affected too? Much of the code
> looks similar:
> 
> http://sources.debian.net/src/ntirpc/1.4.3-3/src/rpc_generic.c/#L728

We also saw glibc affected.

https://bugzilla.suse.com/show_bug.cgi?id=1037559#c7

That said, your reproducer allocates virtual memory, and on systems with overcommit
there is only neglible impact on overall memory pressure.

The rpc service will however likely crash at some point though when there is no virtual
address space left for it.

Ciao, Marcus
