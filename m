X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1831" "Thursday" "28" "September" "2017" "16:53:02" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20170928145302.smwgiqa4n76cjp75@eldamar.local>" "56" "Re: [oss-security] Advisory: Git cvsserver OS Command Injection" nil nil nil "9" "2017092814:53:02" "[oss-security] Advisory: Git cvsserver OS Command Injection" (number mark "U       carnil@debia Sep 28   56/1831  " thread-indent "\"Re: [oss-security] Advisory: Git cvsserver OS Command Injection\"\n") "<20170926090349.f5rwmd7be3tu2qad@refracta>" ("<20170926090349.f5rwmd7be3tu2qad@refracta>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13664 invoked by uid 550); 28 Sep 2017 14:53:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13640 invoked from network); 28 Sep 2017 14:53:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=50RirKK9ry5i8Py0fUABKJOhu9yJvqWWhndrkrTomNk=;
        b=Gm8pS+TusUJcbGaSEMwbl0xwBbeVXgyHogTCjLxt81YMJsIiKtk2wV7nAm/Yon0kjN
         ZpxBuhlmtXkX5tlZyqv6LXAw0GwrXhUB63Q563PkKLoknIu1I8hGvuQkH2B3OdFDrsfE
         rGh+vKiUSbptVVkb8R5te3z71vCJERIFauqQ/Pck1QXeOlzBMSRdx5UJOKzbvOPXROF1
         JPZLPcaZrpGTQ5b2VC/p8CqgVbmoGt8OekYcwQc9aRY8JaNKnrjCfv/c39aAHNMGY42g
         IWEc1P1iQhXXDuPDKSXX1+5LMekIRfetCl9t80u6nk/2ZEG9Wf5zbHf1KquX1FqAS0/Q
         IdpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=50RirKK9ry5i8Py0fUABKJOhu9yJvqWWhndrkrTomNk=;
        b=lFUYeWnFNicTNZ4pTX606qTL2kLuTc2MF/Vi4avFT8d54EwpLqhrixnIjuQRMwR4lW
         DW8CUutB813EB1lLLdAiR64UPYksmJ4fxesO4gS3PtvkbTddocEn39yusNPGA3c1Egzi
         ASKFPHv77mQ5JQXmJOueOKjDzokCI5OE3FYRSX1+Pu46/RNXG0PaDNm1MjvtAcmhFW8q
         +VlVRP4ts4yqWQKfZJ/+/vG+euO+tFIeGsRacaySVe8jsGHNZuqbYZBdnjDr6losQG0v
         yQ+Y7kpXtIaQqhm9vbbM7h+6iPNqP4PcR5robAJqqu/U4U0zIXm0UmssTYPPY6PcTAq0
         i0WQ==
X-Gm-Message-State: AHPjjUjQlmzeL+xEMUuEDyRLh6aBdkmk1lio1Um1R/J2BFWTNbqvigCc
	N/7qqNr01zqC/zsmCRZt6uXM2w==
X-Google-Smtp-Source: AOwi7QD2yyZ1cHC/mz2eSGf/OtZ+caOvnXHv7WKo59CUGNpwDBfTa4dhDDbScimdJAIez1/5pGSwSg==
X-Received: by 10.223.157.3 with SMTP id k3mr5485284wre.122.1506610387831;
        Thu, 28 Sep 2017 07:53:07 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Thu, 28 Sep 2017 16:53:02 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <20170928145302.smwgiqa4n76cjp75@eldamar.local>
References: <20170926090349.f5rwmd7be3tu2qad@refracta>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170926090349.f5rwmd7be3tu2qad@refracta>
User-Agent: NeoMutt/20170609 (1.8.3)
Subject: Re: [oss-security] Advisory: Git cvsserver OS Command Injection

Hi

On Tue, Sep 26, 2017 at 11:03:49AM +0200, joernchen wrote:
> Hi,
> 
> 
> see attached advisory.
> 
> Cheers,
> 
> joernchen
> -- 
> joernchen ~ Phenoelit
> <joernchen@phenoelit.de> ~ C776 3F67 7B95 03BF 5344
> http://www.phenoelit.de  ~ A46A 7199 8B7B 756A F5AC

> Phenoelit Advisory <wir-haben-auch-mal-was-gefunden #0815 ++--->
> 
> [ Authors ]
>         joernchen       <joernchen () phenoelit de>
> 
>         Phenoelit Group (http://www.phenoelit.de)
> 
> [ Affected Products ]
>         Git before 2.14.2, 2.13.6, 2.12.5, 2.11.4 and 2.10.5 (git-cvsserver)
>         https://git-scm.com
> 
> [ Vendor communication ]
>         2017-09-08 Sent vulnerability details to the git-security list
>         2017-09-09 Acknowledgement of the issue, git maintainers ask if
>                    a patch could be provided
>         2017-09-10 Patch is provided
>         2017-09-11 Further backtick operations are patched by the git
>                    maintainers, corrections on the provided patch
>         2017-09-11 Revised patch is sent out
>         2017-09-11 Jeff King proposes to drop `git-cvsserver`'s default
>                    invocation from `git-shell`
>         2017-09-22 Draft release for git 2.14.2 is created including the
>                    fixes
>         2017-09-26 Release of this advisory, release of fixed git versions
> 
> [ Description ]
> 	The `git` subcommand `cvsserver` is a Perl script which makes excessive
> 	use of the backtick operator to invoke `git`. Unfortunately user input
>         is used within some of those invocations.
> 
> 
> 	It should be noted, that `git-cvsserver` will be invoked by `git-shell`
>         by default without further configuration.

FTR, this has been assigned CVE-2017-14867.

https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-14867

Regards,
Salvatore
