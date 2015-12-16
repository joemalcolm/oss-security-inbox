X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1124" "Wednesday" "16" "December" "2015" "12:44:30" "+0100" "Marcus Meissner" "meissner@suse.de" "<20151216114430.GH19953@suse.de>" "23" "Re: [oss-security] Re: CVE Request: Linux Kernel: information leak from getsockname" "^Cc:" nil nil "12" "2015121611:44:30" "[oss-security] Re: CVE Request: Linux Kernel: information leak from getsockname" (number mark "        meissner@sus Dec 16   23/1124  " thread-indent "\"Re: [oss-security] Re: CVE Request: Linux Kernel: information leak from getsockname\"\n") "<20151215181507.A136936E040@smtpvbsrv1.mitre.org>" ("<20151215143002.GM11263@suse.de>" "<20151215181507.A136936E040@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11288 invoked by uid 550); 16 Dec 2015 11:44:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11265 invoked from network); 16 Dec 2015 11:44:42 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20151216114430.GH19953@suse.de>
References: <20151215143002.GM11263@suse.de>
 <20151215181507.A136936E040@smtpvbsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151215181507.A136936E040@smtpvbsrv1.mitre.org>
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: cve-assign@mitre.org
Date: Wed, 16 Dec 2015 12:44:30 +0100
From: Marcus Meissner <meissner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE Request: Linux Kernel: information leak
 from getsockname
To: oss-security@lists.openwall.com, cve-assign@mitre.org

On Tue, Dec 15, 2015 at 01:15:07PM -0500, cve-assign@mitre.org wrote:
> > http://twitter.com/grsecurity/statuses/676744240802750464
> > https://lkml.org/lkml/2015/12/14/252
> > http://git.kernel.org/cgit/linux/kernel/git/davem/net.git/commit/?id=09ccfd238e5a0e670d8178cf50180ea81ae09ae1
> 
> (not yet available at
> http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/log/drivers/net/ppp/pptp.c)
> 
> > getsockname() for some socket families did not check the length of the passed sockaddr,
> > copying out more kernel memory than required, leaking information from the kernel stack,
> > including kernel addresses. This can be used for KASLR bypass or other information leaks.
> 
> Use CVE-2015-8569 for both the pptp_bind issue and the pptp_connect
> issue. (We don't know whether the pptp_connect issue would've been
> exploitable if only the pptp_bind issue were fixed.)

The netdev team has added more fixes very similar to that. Could we merge them with this CVE?

http://git.kernel.org/cgit/linux/kernel/git/davem/net.git/commit/?id=5233252fce714053f0151680933571a2da9cbfb4

in bluetooth/sco

Ciao, Marcus
