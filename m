Received: (qmail 9847 invoked by uid 550); 23 May 2025 14:44:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13348 invoked from network); 23 May 2025 13:58:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stig.io; s=MBO0001;
	t=1748008682;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=AuRA3kuuuJcwgVC8ZT1prTT37d2TTx9MGXMMc6e+HQw=;
	b=vHEpvopnIzjQlUnMUwkPrrO7+rbGLgrNZNyEhaA+/q6vdJtSZVh/h4nQAJzaVpMji9/i2e
	zwDWFSulba5NyTLcz8Nb72l8RtlJkaWs+jkWZWm/XRS1E+mm+uQlI6Kse6Y2ccl5Yn0cMp
	KnqFNg20j0Wrlvr3ha63/cVJsnRxyuHiUMNDVzQEi0jVPi+Zx9WNFeYhRdVoA3pG+6LYew
	wMXDO+IBxdLYmB2pnAXFXQK9mQolxP8vgnJe8sNW6zeh7kSfjCecJkc7qC3TrK7sPJ2qZ4
	6B/TVd50THtCrf53o9Wyp6MFEvwIv25R/P2sB6QLa/Rh1Vx6X1g9rMr7Axbfzg==
Date: Fri, 23 May 2025 15:58:00 +0200
From: Stig Palmquist <stig@stig.io>
To: oss-security@lists.openwall.com
Message-ID: <6kly7vhcuuu6uinufhnhfogyuwgim6heonbcix6cuvxbmwi7sy@rviudni63tvk>
References: <20250522171117.GA603991@cventin.lip.ens-lyon.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250522171117.GA603991@cventin.lip.ens-lyon.fr>
Subject: Re: [oss-security] Perl 5.40 dir dup bug with threading: security
 consequences

On 2025-05-22 19:11, Vincent Lefevre wrote:
> Hi,
> 
> In February, I reported the following bug in perl:
> 
>   https://github.com/Perl/perl5/issues/23010
> 
> The issue is that under some conditions, perl temporarily changes
> the current working directory at a thread creation, which affects
> the other threads as a consequence: file accesses related to the
> current working directory may actually be done related to another
> directory.
> 
> Perl 5.40 and various earlier versions are affected; the bug was
> introduced in 2010.
> 
> In the corresponding Debian bug
> 
>   https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=1098226
> 
> the perl maintainer thinks that this is not regarded as a serious
> security issue by upstream.
> 
> The following test shows that arbitrary code execution is a possible
> consequence.
[..]

Thank you for the report

CVE-2025-40909 has been assigned, and the Perl security team is looking
into the issue.

Best regards,
-- 
Stig Palmquist
