X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["967" "Saturday" "18" "September" "2021" "07:38:57" "-0700" "Kees Cook" "keescook@chromium.org" nil "23" "Re: [oss-security] Containers-optimized OS (COS) membership in the linux-distros list" nil nil nil "9" nil nil (number mark "U       keescook@chr Sep 18   23/967   " thread-indent "\"Re: [oss-security] Containers-optimized OS (COS) membership in the linux-distros list\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Containers-optimized OS (COS) membership in the linux-distros list" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11828 invoked by uid 550); 18 Sep 2021 14:54:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7302 invoked from network); 18 Sep 2021 14:39:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=NkcMHpxLeFnduRxkCHesERb+nqhPjQypNaN2b3ChG/w=;
        b=kNJ6Q/p3mUZxP6weY/4tURsCDjn6vvmmG4QYFl0yqJTs1qpoVCjNnuXjGNkzNGNG28
         fPmjPIAViX/WMR8x6bkRiiawFWNMHxWt3Bn43WTksLIalj0KOCHb+RHRnRfLf3TWZSG3
         F6guf7z+2EbyPMD9pIS6QAIZZcwV8MUJyaMq0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=NkcMHpxLeFnduRxkCHesERb+nqhPjQypNaN2b3ChG/w=;
        b=c589FhzEEFKvnRt7oa2vXmS1vQK3L1+o1bZH+1MYlGDCf9/APsMb8Sj0V5IfQgW6I9
         IUOQEVrwm5dyQ9qXg8bhJHPrT49ues+8mSO9doWkzTDGmeiXjm6O3rr87fuwrg1zLqfa
         x4HMcD1hOZi9VH2b0qEAIZTLNpIbCdnZLZovow5FrmRc0S9zwq1Q64dIIRHnzr/gsZaK
         MCP8upRXNybZmkF/43CHzPsbiPGvlL2e+wcSl7GW3xQnPL6nkxK5Hea15KMZtVsxzqE6
         i3zlftv6EelDKtXP7fj6tFgPwKurtx9AsuWLsDb9Kj/McGNboLYYwlL1wyOkJR2V+4Kk
         dp9A==
X-Gm-Message-State: AOAM531gdVIk9DzntgvlCy7p+l25T9hOUrFMKGgZ48p93wFhxQCXf7Xc
	oWBo9GRUTDmornUfs8BHEhvE1g==
X-Google-Smtp-Source: ABdhPJzhDlVwGACwuiW9gAcb5DzmWbMQK0xsKhqofiMo7Mkz6MsbcscVAHHxTrnUVIKlhGKEzr+deg==
X-Received: by 2002:a63:da0a:: with SMTP id c10mr15082003pgh.255.1631975939324;
        Sat, 18 Sep 2021 07:38:59 -0700 (PDT)
Date: Sat, 18 Sep 2021 07:38:57 -0700
From: Kees Cook <keescook@chromium.org>
To: Solar Designer <solar@openwall.com>
Cc: Oleksandr Tymoshenko <ovt@google.com>, oss-security@lists.openwall.com
Message-ID: <202109180736.BC80F1E90@keescook>
References: <CACGj0Cg_OgsYUAw8R6cbHr+ihPjfrKUJw0RjVewzuWYVi8tXpg@mail.gmail.com>
 <20210917161848.GB9168@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210917161848.GB9168@openwall.com>
Subject: Re: [oss-security] Containers-optimized OS (COS) membership in the
 linux-distros list

On Fri, Sep 17, 2021 at 06:18:48PM +0200, Solar Designer wrote:
> On Thu, Sep 16, 2021 at 11:12:21PM -0700, Oleksandr Tymoshenko wrote:
> > I???d like to propose Container-Optimized OS (COS)  for membership in
> > linux-distros. Text below addresses items listed in the ???Membership
> > criteria??? section of
> > https://oss-security.openwall.org/wiki/mailing-lists/distros

> > > 9. Have someone already on the private list, or at least someone else who
> > > has been active on oss-security for years but is not affiliated with your
> > > distro nor your organization, vouch for at least one of the people
> > > requesting membership on behalf of your distro (then that one vouched-for
> > > person will be able to vouch for others on your team, in case you'd like
> > > multiple people subscribed)
> > 
> > Kees Cook (Cc-ed) can vouch for the proposed candidates.

I can vouch for Oleksandr and the COS team. They're active and
responsive.

-Kees

-- 
Kees Cook
