X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["717" "Saturday" "19" "September" "2015" "07:08:18" "+0900" "sfjro@users.sourceforge.net" "sfjro@users.sourceforge.net" "<32284.1442614098@jrobl>" "23" "[oss-security] Re: CVE request: Use-after-free in Linux kernel with aufs mmap patch" nil nil nil "9" "2015091822:08:18" "[oss-security] Re: CVE request: Use-after-free in Linux kernel with aufs mmap patch" (number mark "        sfjro@users. Sep 19   23/717   " thread-indent "\"[oss-security] Re: CVE request: Use-after-free in Linux kernel with aufs mmap patch\"\n") "<32354.1441914246@jrobl>" ("<1441913190.17007.15.camel@decadent.org.uk>" "<32354.1441914246@jrobl>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27880 invoked by uid 550); 18 Sep 2015 22:08:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27862 invoked from network); 18 Sep 2015 22:08:32 -0000
In-Reply-To: <32354.1441914246@jrobl>
References: <1441913190.17007.15.camel@decadent.org.uk> <32354.1441914246@jrobl>
Message-ID: <32284.1442614098@jrobl>
Date: Sat, 19 Sep 2015 07:08:18 +0900
From: sfjro@users.sourceforge.net
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: Use-after-free in Linux kernel with aufs mmap patch
To: Ben Hutchings <ben@decadent.org.uk>,
    oss-security <oss-security@lists.openwall.com>


sfjro@users.sourceforge.net:
> Ben Hutchings:
> > The aufs (Advanced Union Filesystem) project provides an optional patch
> > for the Linux kernel, called either aufs3-mmap.patch or
> 	:::
> > I posted a patch here that works for me:
> > http://sourceforge.net/p/aufs/mailman/message/34449209/
> >
> > Please assign a CVE ID to this.
>
> I know this is a bug but I don't have time to fix it or test your patch.
	:::
> I have no objection to assign a CVE ID, but I don't think it is fixed or
> at least I didn't confirmt yet.

Mainly to oss-security people,

FYI, I confirmed that Ben Hutchings' patch is correct and fixed the
problem. Actually I've released aufs officially after applying his patch.


J. R. Okajima
