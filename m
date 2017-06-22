X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1334" "Thursday" "22" "June" "2017" "01:39:46" "-0400" "Daniel Micay" "danielmicay@gmail.com" "<1498109986.32057.1.camel@gmail.com>" "37" "Re: [oss-security] Re: Qualys Security Advisor -- The Stack Clash" nil nil nil "6" "2017062205:39:46" "[oss-security] Re: Qualys Security Advisor -- The Stack Clash" (number mark "U       danielmicay@ Jun 22   37/1334  " thread-indent "\"Re: [oss-security] Re: Qualys Security Advisor -- The Stack Clash\"\n") "<c5d05c8e-ae1e-e570-beb5-1c070b87e1a5@redhat.com>" ("<7dbe76e8-99b8-4f8b-fa8d-2ec4708a85a1@redhat.com>" "<1497898323.1005.1.camel@gmail.com>" "<748a3bed-a04e-a82e-0459-4627af0d6387@redhat.com>" "<1497941077.15414.1.camel@gmail.com>" "<c5d05c8e-ae1e-e570-beb5-1c070b87e1a5@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12129 invoked by uid 550); 22 Jun 2017 05:40:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12111 invoked from network); 22 Jun 2017 05:40:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:date:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=5im648Edi7oaPjwAprMQdvFRElTFoBxc1MttpPNoHOM=;
        b=nMzJ7IJvn4aHeFAzsKV1LOCDs6GxXWfG9j8UOE6J/XqLiG9c6IxMzIt37uGmOLRPAV
         xP2BJtuB20b7j4O2vdTFw6swPVomaO6f/H+78CCJ6+AO1O0y4FSPwLfGzNRjE9qb1Q6F
         KL7g70SWIIylMXZRQm2IOVnMRFpJZjaprAlyhwy2oA9B70TrWhJjcZKAY8svL9gyENTB
         B+3ztAZCzr98SweSKHaG3DJVSogo3Pef6LIhSJ0sz/Wtx5YEPZRuhN6cYQ8qEHPk7nv+
         bCexy3Rtoall0gn74znXyZGWZavnK2Rb5B+IgbnmPAnRyfeMVCTWmMafgWGtl3vP4BBj
         o+2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5im648Edi7oaPjwAprMQdvFRElTFoBxc1MttpPNoHOM=;
        b=bifmkgRS+1uP6TcT63xxQUROtkicBaUIxNAxOecVjtXURn5YKEwEwG2MUGlxOrQXaX
         d1Jma0GbxnIAyb2BQ6640TNJLZHRjpvuf0j1NM6hTMv2iITpNDAlKijw77CmEDBXPnFp
         DQvf+o2fqMLMATwfD9tfjATvfWSWV9qj8oQoq6dn2DaQIS7F1L6SzShmRM2IsfpsL/z0
         36087Qsnz0BczfVFy+kyl+m+G/3lOQGbMgC0h/JzvUoboAqto1knW+xev+s2pK98BkHj
         qGo6eddVX5W3suqdEyH5T1WC+UhgtwGnglmgiJvRS0D8kYiatqUSQSzTJKY9dY2NYDKE
         c6cQ==
X-Gm-Message-State: AKS2vOyCpfEQYroNwKTnICBQF+fF6wSuCtiyCmYf+Dcy5gRGa+zUJ58/
	xCfqk3uQCVoceQ==
X-Received: by 10.36.69.19 with SMTP id y19mr373436ita.26.1498109988159;
        Wed, 21 Jun 2017 22:39:48 -0700 (PDT)
Message-ID: <1498109986.32057.1.camel@gmail.com>
From: Daniel Micay <danielmicay@gmail.com>
To: Jeff Law <law@redhat.com>, oss-security@lists.openwall.com
Date: Thu, 22 Jun 2017 01:39:46 -0400
In-Reply-To: <c5d05c8e-ae1e-e570-beb5-1c070b87e1a5@redhat.com>
References: <7dbe76e8-99b8-4f8b-fa8d-2ec4708a85a1@redhat.com>
	 <1497898323.1005.1.camel@gmail.com>
	 <748a3bed-a04e-a82e-0459-4627af0d6387@redhat.com>
	 <1497941077.15414.1.camel@gmail.com>
	 <c5d05c8e-ae1e-e570-beb5-1c070b87e1a5@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.24.3 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Re: Qualys Security Advisor -- The Stack Clash

On Wed, 2017-06-21 at 11:33 -0600, Jeff Law wrote:
> On 06/20/2017 12:44 AM, Daniel Micay wrote:
> 
> > I think it's also worth mentioning the segmented stack support in
> > GCC
> > and LLVM that was added for Go. It's possible to use it for C with
> > the
> > __morestack call set up to simply abort when stack space is
> > exhausted.
> > 
> > That's what Rust was doing after it dropped segmented stacks, but
> > they
> > wanted to move to stack probes for efficiency and prematurely
> > dropped
> > these function prelude checks.
> > 
> > It's not efficient, but it works, unlike -fstack-check.
> > 
> > I don't think it makes sense for general purpose distributions to
> > adopt
> > it but it's an available option for others with more concern about
> > this
> > issue.
> 
> Yup.  go's split-stacks are another option.  As you mention, probably
> not performant enough for a general purpose distribution, but could be
> interesting for more specialized needs.
> 
> jeff

It can be used with large fixed size stacks and no actual expansion, but
yeah it's expensive to add a check to every non-leaf prelude. It's not
as expensive as the SSP check for a function but it needs to cover many.

Since probes can be so much more efficient, it only makes sense to
consider it if getting probes fully working is going to take a long
time.
