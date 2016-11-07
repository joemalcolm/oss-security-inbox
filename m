X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["839" "Monday" "7" "November" "2016" "13:48:54" "+0100" "Moritz Muehlenhoff" "jmm@debian.org" "<20161107124854.GA7492@inutil.org>" "23" "Re: [oss-security] Re: kernel: fix minor infoleak in get_user_ex()" nil nil nil "11" "2016110712:48:54" "[oss-security] Re: kernel: fix minor infoleak in get_user_ex()" (number mark "U       jmm@debian.o Nov  7   23/839   " thread-indent "\"Re: [oss-security] Re: kernel: fix minor infoleak in get_user_ex()\"\n") "<b2c66d90c93144128adf042665999c21@imshyb02.MITRE.ORG>" ("<CABniQZMPWz9XaVm4fjsYC8SZXksNm-63-gzeRkz8Eertv3j-SQ@mail.gmail.com>" "<b2c66d90c93144128adf042665999c21@imshyb02.MITRE.ORG>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9617 invoked by uid 550); 7 Nov 2016 12:49:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9593 invoked from network); 7 Nov 2016 12:49:07 -0000
Date: Mon, 7 Nov 2016 13:48:54 +0100
From: Moritz Muehlenhoff <jmm@debian.org>
To: oss-security@lists.openwall.com
Cc: citypw@gmail.com, cve-assign@mitre.org
Message-ID: <20161107124854.GA7492@inutil.org>
References: <CABniQZMPWz9XaVm4fjsYC8SZXksNm-63-gzeRkz8Eertv3j-SQ@mail.gmail.com>
 <b2c66d90c93144128adf042665999c21@imshyb02.MITRE.ORG>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b2c66d90c93144128adf042665999c21@imshyb02.MITRE.ORG>
User-Agent: Mutt/1.5.20 (2009-06-14)
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: jmm@inutil.org
X-SA-Exim-Scanned: No (on inutil.org); SAEximRunCond expanded to false
Subject: Re: [oss-security] Re: kernel: fix minor infoleak in get_user_ex()

Hi,

> > get_user_ex(x, ptr) should zero x on failure. It's not a lot of a leak
> > (at most we are leaking uninitialized 64bit value off the kernel
> > stack, and in a fairly constrained situation
> > 
> > https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=1c109fabbd51863475cd12ac206bdd249aee35af
> > https://lwn.net/Articles/705264/
> 
> Use CVE-2016-9178.

Can you please clarify on the scope of CVE-2016-9178?

I assume this is for the leak fixed with 1c109fabbd51863475cd12ac206bdd249aee35af,
but the LWN comment by Brad Spengler referenced above refers to a new issue
which affected some Linux stable lines, which backported 
1c109fabbd51863475cd12ac206bdd249aee35af without also backporting
548acf19234dbda5a52d5a8e7e205af46e9da840.

So please assign a second CVE ID for the latter.

Cheers,
        Moritz
