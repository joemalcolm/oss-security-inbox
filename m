X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1037" "Thursday" "23" "February" "2017" "11:01:48" "+0100" "Marcus Meissner" "meissner@suse.de" "<20170223100148.GA23394@suse.de>" "29" "Re: [oss-security] util-linux 2.29.2 fixes CVE-2017-2616" nil nil nil "2" "2017022310:01:48" "[oss-security] util-linux 2.29.2 fixes CVE-2017-2616" (number mark "U       meissner@sus Feb 23   29/1037  " thread-indent "\"Re: [oss-security] util-linux 2.29.2 fixes CVE-2017-2616\"\n") "<20170223104054.42060545@pc1>" ("<20170223074630.GB26098@suse.de>" "<20170223104054.42060545@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29932 invoked by uid 550); 23 Feb 2017 10:02:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29890 invoked from network); 23 Feb 2017 10:01:59 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Thu, 23 Feb 2017 11:01:48 +0100
From: Marcus Meissner <meissner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20170223100148.GA23394@suse.de>
References: <20170223074630.GB26098@suse.de>
 <20170223104054.42060545@pc1>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20170223104054.42060545@pc1>
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [oss-security] util-linux 2.29.2 fixes CVE-2017-2616

On Thu, Feb 23, 2017 at 10:40:54AM +0100, Hanno Böck wrote:
> Hi,
> 
> On Thu, 23 Feb 2017 08:46:30 +0100
> Marcus Meissner <meissner@suse.de> wrote:
> 
> > util-linux 2.29.2 fixes CVE-2017-2616, a race condition which allowed
> > local users to kill other processes.
> 
> I just reported this in Gentoo [1], yet I was informed that we're not
> using su from util-linux, but from shadow. So depending on the
> distribution you may not use this implementation of su.
> 
> I haven't digged deeper into this, can you say if this issue is
> generic enough to be expected in other implementations as well? (Not
> sure if the implementations of su in shadow and util-linux share a
> common codebase, seems to be quite old stuff.)
> 
> [1] https://bugs.gentoo.org/show_bug.cgi?id=610664

coreutils uses the same su.c codebase, so it is also affected.


Looking at shadow su.c code, it calls waitpid ... and does not handle
the pid_child exiting case after calling waitpid.

So I would think it is affected without digging deeper.

Ciao, Marcus
