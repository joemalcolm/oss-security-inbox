X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["662" "Thursday" "23" "February" "2017" "10:20:28" "-0600" "Serge E. Hallyn" "serge@hallyn.com" "<20170223162028.GA14624@mail.hallyn.com>" "16" "Re: [oss-security] util-linux 2.29.2 fixes CVE-2017-2616" nil nil nil "2" "2017022316:20:28" "[oss-security] util-linux 2.29.2 fixes CVE-2017-2616" (number mark "U       serge@hallyn Feb 23   16/662   " thread-indent "\"Re: [oss-security] util-linux 2.29.2 fixes CVE-2017-2616\"\n") "<20170223170848.17d43fb3@pc1>" ("<20170223074630.GB26098@suse.de>" "<20170223104054.42060545@pc1>" "<20170223100148.GA23394@suse.de>" "<D7FFF88A-2AA9-432A-9830-0DF662E32524@gmail.com>" "<20170223170848.17d43fb3@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23768 invoked by uid 550); 23 Feb 2017 17:22:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1941 invoked from network); 23 Feb 2017 16:20:39 -0000
Date: Thu, 23 Feb 2017 10:20:28 -0600
From: "Serge E. Hallyn" <serge@hallyn.com>
To: oss-security@lists.openwall.com
Message-ID: <20170223162028.GA14624@mail.hallyn.com>
References: <20170223074630.GB26098@suse.de>
 <20170223104054.42060545@pc1>
 <20170223100148.GA23394@suse.de>
 <D7FFF88A-2AA9-432A-9830-0DF662E32524@gmail.com>
 <20170223170848.17d43fb3@pc1>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20170223170848.17d43fb3@pc1>
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: Re: [oss-security] util-linux 2.29.2 fixes CVE-2017-2616

On Thu, Feb 23, 2017 at 05:08:48PM +0100, Hanno Böck wrote:
> On Thu, 23 Feb 2017 07:56:51 -0500
> Assaf Gordon <assafgordon@gmail.com> wrote:
> 
> > GNU Coreutils stopped installing 'su' by default in 2007,
> > and completely removed 'su' (including the 'su.c' source file)
> > in 2012.
> 
> That's good to know, so now there are only 2 competing versions of su
> instead of 3 in major packages :-)
> 
> Anyone have a good idea who is using shadow vs. util-linux su? Do they
> have specific advantages/disadvantages, would it be reasonable to try
> to get all distros to use them same one?

There is a debian bug to switch over to the util-linux version of su.
