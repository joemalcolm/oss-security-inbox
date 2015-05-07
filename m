X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["702" "Thursday" "7" "May" "2015" "12:37:51" "+0300" "Vasily Kulikov" "segoon@openwall.com" "<20150507093751.GA18746@cachalot>" "16" "[oss-security] Re: Linux kernel pointer poisoning (was: CVE request for a fixed bug existed in all versions of linux kernel from KeenTeam)" nil nil nil "5" "2015050709:37:51" "[oss-security] Re: Linux kernel pointer poisoning (was: CVE request for a fixed bug existed in all versions of linux kernel from KeenTeam)" (number mark "        segoon@openw May  7   16/702   " thread-indent "\"[oss-security] Re: Linux kernel pointer poisoning (was: CVE request for a fixed bug existed in all versions of linux kernel from KeenTeam)\"\n") "<20150507093639.GA4522@cachalot>" ("<CADOUnBK=jW36v6X2Q6EXLL35Wxqait7cWJR-adCFwRaMJtucPQ@mail.gmail.com>" "<20150502125329.GA6820@openwall.com>" "<20150507093639.GA4522@cachalot>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15708 invoked by uid 550); 7 May 2015 09:38:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15586 invoked from network); 7 May 2015 09:38:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=9as+KLLtwP97N7BgCHifylIukQcpWcfQNoO9gfO/7x0=;
        b=dQjaA5p+pwkTo0FxiL+SEznfUIfFd3hC4u8VVpKFaM1i+vkFIidflPKj8o0DKmpoNI
         8YkSIRmQspQF+D44fDJUpCJ9wbAOGjU+Tml6P++dWrHa8q5eUO+SpPaddMqZcOYxv18x
         iNe18Jz14oPD0uJ7wylroul5tm5F5OgG0uvDJEo7BDujn/PyoOdl3rTxFFIgGNq7IGiV
         nyP1UkHWTJSdYRKvqJ346LA6Vlvs4DP6O8nfXzpN8MoLLFPObgE9pyz84V8vJ/Htmluk
         R/vbaZrOQ3wG73RkORvOObCbg5hLvP8lSJ3S8Hj/cJgmjLjS7sQXzgh4LDz0jaYCxuIu
         Zg2g==
X-Received: by 10.112.161.66 with SMTP id xq2mr2369687lbb.31.1430991473368;
        Thu, 07 May 2015 02:37:53 -0700 (PDT)
Message-ID: <20150507093751.GA18746@cachalot>
References: <CADOUnBK=jW36v6X2Q6EXLL35Wxqait7cWJR-adCFwRaMJtucPQ@mail.gmail.com>
 <20150502125329.GA6820@openwall.com>
 <20150507093639.GA4522@cachalot>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150507093639.GA4522@cachalot>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Wen Xu <hotdog3645@gmail.com>, oss-security@lists.openwall.com,
	kernel-hardening@lists.openwall.com
Date: Thu, 7 May 2015 12:37:51 +0300
From: Vasily Kulikov <segoon@openwall.com>
Reply-To: oss-security@lists.openwall.com
Sender: Vasiliy Kulikov <segooon@gmail.com>
Subject: [oss-security] Re: Linux kernel pointer poisoning (was: CVE request for a fixed bug
 existed in all versions of linux kernel from KeenTeam)
To: Solar Designer <solar@openwall.com>

On Thu, May 07, 2015 at 12:36 +0300, Vasily Kulikov wrote:
> b) how to check for an insane POISON_POINTER() arg in case of
> TIMER_ENTRY_STATIC (and such)?  The current implementation of
> POISON_POINTER() fails as following:
> 
> mm/page_alloc.c: In function 'free_pages_prepare':
> mm/page_alloc.c:840:23: error: call to '__compiletime_assert_840' declared with attribute error: BUILD_BUG_ON failed: 0x0111400 >= POISON_AREA_SIZE

Sorry, I've copied a wrong error message.  The right one is as
following:

kernel/irq/spurious.c:23:8: error: braced-group within expression allowed only inside a function

-- 
Vasily Kulikov
http://www.openwall.com - bringing security into open computing environments
