X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3726" "Tuesday" "20" "June" "2017" "02:44:37" "-0400" "Daniel Micay" "danielmicay@gmail.com" "<1497941077.15414.1.camel@gmail.com>" "89" "Re: [oss-security] Re: Qualys Security Advisor -- The Stack Clash" "^Date:" nil nil "6" "2017062006:44:37" "[oss-security] Re: Qualys Security Advisor -- The Stack Clash" (number mark "        danielmicay@ Jun 20   89/3726  " thread-indent "\"Re: [oss-security] Re: Qualys Security Advisor -- The Stack Clash\"\n") "<748a3bed-a04e-a82e-0459-4627af0d6387@redhat.com>" ("<7dbe76e8-99b8-4f8b-fa8d-2ec4708a85a1@redhat.com>" "<1497898323.1005.1.camel@gmail.com>" "<748a3bed-a04e-a82e-0459-4627af0d6387@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28538 invoked by uid 550); 20 Jun 2017 06:44:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28517 invoked from network); 20 Jun 2017 06:44:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:date:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=aGZeFEUeVexiVrE2LITaJrAnpVVEqw2ee5aqNl1aFns=;
        b=Ia7UvykWDQKg6fFztHszBCK09l8eEXI3wdMHSLjjgWvju4EzdlBo9tk5mVMf1foLcZ
         lcSOeKRL+ejbg31Yy8kcz8XQ8ZulFKrfasLuTYaJVMHk4g7RIoEBtHzTBMKEjOXkSwDG
         6D7c98171Q50QhAwxaSUcFL6MqPOs3p879m6Sgmt/I41P4qvjPYppTKVqRs5S5fs75lM
         MbdeCUYeO/OgygTR4x7+Z8GKR4asNntq13hR7rV5z/QAq+oWwgJhRp2Gk7a3uTLXRNUd
         s0xY5lluES+FJr9UIhIorRVp/thpaMgOvsH4HBWELJSRzSVSiNKrEjlzDrke+ftfYQUr
         TiMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=aGZeFEUeVexiVrE2LITaJrAnpVVEqw2ee5aqNl1aFns=;
        b=KuJie0y0XvpLSDiu0Qib0egX2FZusO3PMGVXAcOQ6XQ0hPv1DK0Wn7rUWnuVvD5YB0
         vp+WxX5eClWiPD0way1ZOZ7097eUP+/IpCN0UcFn+AILHjV6MiEZ6xefusRlmiTAqJwH
         5MWx9zdgQAZp5+xe7SOipyoUKAtCQ3tSMRE4ytcbiYnH9B0+Yj7ex5p+4lj3as2SpygG
         YK/KcZ0djJt+koNT457fTwMeXulyCIgaHFLbbn9/B3pe+v700FfM7lr7wVP1Uqwh/DYt
         +P2H/JBUh3pWW5eQN5pHQVQ2Dpl3PhAoR6KINxYg2F1Ila5HXCg+PNlgxP04YMP6NNOu
         ucUA==
X-Gm-Message-State: AKS2vOzlvhgU8TtwT0Ol5oEHatPHYEL7OWffLYTcOvJD2j/7c/COqxFU
	4YRQkpD5t2PtGw==
X-Received: by 10.107.137.26 with SMTP id l26mr24040008iod.13.1497941078942;
        Mon, 19 Jun 2017 23:44:38 -0700 (PDT)
Message-ID: <1497941077.15414.1.camel@gmail.com>
In-Reply-To: <748a3bed-a04e-a82e-0459-4627af0d6387@redhat.com>
References: <7dbe76e8-99b8-4f8b-fa8d-2ec4708a85a1@redhat.com>
	 <1497898323.1005.1.camel@gmail.com>
	 <748a3bed-a04e-a82e-0459-4627af0d6387@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.24.3 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Date: Tue, 20 Jun 2017 02:44:37 -0400
From: Daniel Micay <danielmicay@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Qualys Security Advisor -- The Stack Clash
To: Jeff Law <law@redhat.com>, oss-security@lists.openwall.com

On Mon, 2017-06-19 at 15:15 -0600, Jeff Law wrote:
> On 06/19/2017 12:52 PM, Daniel Micay wrote:
> > On Mon, 2017-06-19 at 11:26 -0600, Jeff Law wrote:
> > > I would consider those two GCC BZs (68065, 66479) a separate an
> > > distinct
> > > issue.
> > > 
> > > It is far more important to address design issues around the
> > > existing
> > > -fstack-check first.  I think we've got a pretty good handle on
> > > how to
> > > address those problems and discussions with the upstream GCC
> > > community
> > > have already started.
> > > 
> > > In an ideal world we'll get to a place where the new -fstack-check
> > > does
> > > not change program semantics, never misses probes and is efficient
> > > enough to just turn on and forget everywhere.  The existing
> > > -fstack-check fails all three of those criteria.
> > > 
> > > Jeff
> > 
> > AFAIK, the main efficiency issue (reserving a register) was fixed
> > for
> > GCC 6. I might be missing something but it seems very cheap now, at
> > least for x86_64. It definitely doesn't really work though.
> > 
> > Is there an example of it changing program semantics? I haven't seen
> > anything since the generic arch stuff was fixed.
> 
> Absolutely -fstack-check, as currently implemented, can change program
> semantics.  It's related to -fstack-check moving objects from
> statically
> allocated space into dynamically allocated space (because the generic
> code can't handle large static frames).  It creates the alloca'd
> objects
> at the wrong scope.  This doesn't happen on all architectures, but it
> does happen on architectures I have to care about.
> 
> WRT efficiency, -fstack-check is marginal -- even with its clever code
> of assuming that it can elide probes into the first two pages of a
> static frame (because the caller must have probed those two frames).
> Consistently when we looked at code it's over-probing.  Sadly, it's
> over-probing in all the wrong places (because it's trying so damn hard
> to ensure there's always 2 free pages the signal handler can use).
> 
> WRT probing correctness -- -fstack-check skips probes on the
> assumption
> that an earlier caller in the call chain should have probed those
> pages.
>  But that's a fundamentally flawed assumption unless the entire
> application is compiled with -fstack-check.  In fact, by eliding those
> probes, it actually misses the most important cases in mixed
> environment!
> 
> -fstack-check also has the nasty habit of probing into unallocated
> areas.  This tends to cause valgrind problems.  Both in the sense of
> getting far too many false positives, but on two platforms the code
> generated by -fstack-check actually crashes valgrind.  These issues
> are
> directly related to -fstack-check wanting to probe all the pages
> before
> doing any allocations.
> 
> FWIW, we initially thought we were going to be able to use -fstack-
> check
> with some slight tweaks.  But the deeper we got into -fstack-check the
> more we ended up rewriting the probe generation from scratch.  In
> fact,
> we were unable to use the existing -fstack-check probing code from
> *any*
> target.
> 
> jeff

I think it's also worth mentioning the segmented stack support in GCC
and LLVM that was added for Go. It's possible to use it for C with the
__morestack call set up to simply abort when stack space is exhausted.

That's what Rust was doing after it dropped segmented stacks, but they
wanted to move to stack probes for efficiency and prematurely dropped
these function prelude checks.

It's not efficient, but it works, unlike -fstack-check.

I don't think it makes sense for general purpose distributions to adopt
it but it's an available option for others with more concern about this
issue.
