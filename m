X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["742" "Wednesday" "6" "May" "2015" "18:43:53" "+0300" "Vasily Kulikov" "segoon@openwall.com" "<20150506154353.GA7500@cachalot>" "22" "Re: [oss-security] CVE request for a fixed bug existed in all versions of linux kernel from KeenTeam" nil nil nil "5" "2015050615:43:53" "[oss-security] CVE request for a fixed bug existed in all versions of linux kernel from KeenTeam" (number mark "        segoon@openw May  6   22/742   " thread-indent "\"Re: [oss-security] CVE request for a fixed bug existed in all versions of linux kernel from KeenTeam\"\n") "<20150502125329.GA6820@openwall.com>" ("<CADOUnBK=jW36v6X2Q6EXLL35Wxqait7cWJR-adCFwRaMJtucPQ@mail.gmail.com>" "<20150502125329.GA6820@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32396 invoked by uid 550); 6 May 2015 15:44:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32313 invoked from network); 6 May 2015 15:44:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=ZtPcyiN4+KRz9rpMSKo4MioTOxVQ9JSIMbvmrJ++1bk=;
        b=h6cUIK3TxAYEWw24Z9VOcynNQhEx9We3B+tVx4r1qXO3X8Kf9HgVvlAbeeuHUvCm9j
         82ys+ez6yhnlG5Zt7T/n1e9Uk1I8CxXo7/nruU7V+YW3Cg8ykxPdmLEYdVE3wjaV4Ous
         9hZT9SCAOrdETNDm2xZPtSEAGGctvCQpbfxNoNFSx2kUBujzBfYI4xEO6f+aZxGQm+8l
         H9fYPQ1clDJjFpWf8e1OCNdz76jCuvhLzZE39M4qj4P5GPqP7CjLMNH/bE5Y6NqRMZos
         VWm8d+extPzhQFHGQCTx3cCh3Sehb5xOQ/l8VvGNftrkdBnmhFNAc3TVzlxKpKFft9yO
         Lysw==
X-Received: by 10.112.188.194 with SMTP id gc2mr23759492lbc.25.1430927035575;
        Wed, 06 May 2015 08:43:55 -0700 (PDT)
Message-ID: <20150506154353.GA7500@cachalot>
References: <CADOUnBK=jW36v6X2Q6EXLL35Wxqait7cWJR-adCFwRaMJtucPQ@mail.gmail.com>
 <20150502125329.GA6820@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150502125329.GA6820@openwall.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Wen Xu <hotdog3645@gmail.com>, oss-security@lists.openwall.com
Date: Wed, 6 May 2015 18:43:53 +0300
From: Vasily Kulikov <segoon@openwall.com>
Reply-To: oss-security@lists.openwall.com
Sender: Vasiliy Kulikov <segooon@gmail.com>
Subject: Re: [oss-security] CVE request for a fixed bug existed in all
 versions of linux kernel from KeenTeam
To: Solar Designer <solar@openwall.com>

Hi,

On Sat, May 02, 2015 at 15:53 +0300, Solar Designer wrote:
> On Sat, May 02, 2015 at 06:31:12PM +0800, Wen Xu wrote:
> > The bug exists in all versions of linux kernel.
> 
> "All" as in "all upstream versions that contain the feature at all
> (3.0+), and likely some backports".  It appears the bug got introduced
> in Vasily's forward-porting of the functionality to newer 2.6.x kernels
> before it finally got merged in this thread:
> 
> https://lkml.org/lkml/2011/5/13/382

I confirm this bug was introduced during forward-porting of the ICMP
patch to the upstream kernel.  The bug is not present in Owl's version
of the patch.

Thanks,

-- 
Vasily Kulikov
http://www.openwall.com - bringing security into open computing environments
