Received: (qmail 22334 invoked by uid 550); 27 Mar 2026 14:47:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 31872 invoked from network); 27 Mar 2026 06:24:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1774592628;
	bh=UHnlqXCZd/Sv7p01HuSlu8JjnKE1DHlAiKLFQX1JF8s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=1J6OOkj2p+ijrD9LprGjOL6VwM/rrKmNJ57qmSO5qX+jrkrNFSkxRzxKoDEMnBG1o
	 vCLcBnoYsHNhoCCwy7k/HJwhM1p1GBCH4hbjUhLGsGVLvarUCL2QIW/mq8g4+ciWKJ
	 iWbIveIgDNrI9RmulM8AIO+4W58aVplQ7pix9WCM=
Date: Fri, 27 Mar 2026 07:23:24 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Qualys Security Advisory <qsa@qualys.com>
Cc: "cve@kernel.org" <cve@kernel.org>,
	"oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Message-ID: <2026032744-resale-jeep-2d72@gregkh>
References: <20260312212345.GA2728@localhost.localdomain>
 <20260312213345.GA3105@localhost.localdomain>
 <20260326183559.GA22540@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260326183559.GA22540@localhost.localdomain>
Subject: [oss-security] Re: Multiple vulnerabilities in AppArmor

On Thu, Mar 26, 2026 at 06:36:17PM +0000, Qualys Security Advisory wrote:
> Since two weeks have passed now (since the fixes were released), would
> it be possible to please assign CVEs to the remaining seven AppArmor
> vulnerabilities:
> 
> ------------------------------------------------------------------------
> https://git.kernel.org/stable/c/e38c55d9f834e5b848bfed0f5c586aaf45acb825
> > - "[PATCH 02/11] apparmor: fix memory leak in verify_header" (a memory
> >   leak);
> ------------------------------------------------------------------------
> https://git.kernel.org/stable/c/ab09264660f9de5d05d1ef4e225aa447c63a8747
> https://git.kernel.org/stable/c/306039414932c80f8420695a24d4fe10c84ccfb2
> > - "[PATCH 03/11] apparmor: replace recursive profile removal with
> >   iterative approach" and "[PATCH 04/11] apparmor: fix: limit the number
> >   of levels of policy namespaces" (the uncontrolled recursion detailed
> >   in this advisory);
> ------------------------------------------------------------------------
> https://git.kernel.org/stable/c/8756b68edae37ff546c02091989a4ceab3f20abd
> > - "[PATCH 05/11] apparmor: fix side-effect bug in match_char() macro
> >   usage" (the out-of-bounds read detailed in this advisory);
> ------------------------------------------------------------------------
> https://git.kernel.org/stable/c/d352873bbefa7eb39995239d0b44ccdf8aaa79a4
> > - "[PATCH 06/11] apparmor: fix missing bounds check on DEFAULT table in
> >   verify_dfa()" (an out-of-bounds read and write);
> ------------------------------------------------------------------------
> https://git.kernel.org/stable/c/5df0c44e8f5f619d3beb871207aded7c78414502
> > - "[PATCH 07/11] apparmor: Fix double free of ns_name in
> >   aa_replace_profiles()" (the double-free detailed in this advisory);
> ------------------------------------------------------------------------
> https://git.kernel.org/stable/c/39440b137546a3aa383cfdabc605fb73811b6093
> > - "[PATCH 09/11] apparmor: fix differential encoding verification" (an
> >   infinite loop);
> ------------------------------------------------------------------------
> https://git.kernel.org/stable/c/a0b7091c4de45a7325c8780e6934a894f92ac86b
> https://git.kernel.org/stable/c/8e135b8aee5a06c52a4347a5a6d51223c6f36ba3
> > - "[PATCH 10/11] apparmor: fix race on rawdata dereference" and "[PATCH
> >   11/11] apparmor: fix race between freeing data and fs accessing it"
> >   (the use-after-free detailed in this advisory).
> ------------------------------------------------------------------------
> 
> Thank you very much in advance! With best regards,

We were told that these all required elevated privileges to hit, and so
were not classified as individual vulnerabilities.  If the Apparmor
maintainer tells us that these really all should be assigned a CVE, we
will be glad to do so, but until then, we're just going to stick with
the ones that we have assigned already.

thanks,

greg k-h
