X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["721" "Monday" "5" "December" "2016" "16:47:25" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20161205154725.n4erh7wnftmlptz7@eldamar.local>" "29" "Re: [oss-security] Re: Remote crash in MaraDNS 2.0.13 and git master" nil nil nil "12" "2016120515:47:25" "[oss-security] Re: Remote crash in MaraDNS 2.0.13 and git master" (number mark "U       carnil@debia Dec  5   29/721   " thread-indent "\"Re: [oss-security] Re: Remote crash in MaraDNS 2.0.13 and git master\"\n") "<eacf0ad3886d4928905ca3e10c529e80@imshyb02.MITRE.ORG>" ("<1478939985.2087788.785402465.36AF3B93@webmail.messagingengine.com>" "<eacf0ad3886d4928905ca3e10c529e80@imshyb02.MITRE.ORG>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11916 invoked by uid 550); 5 Dec 2016 15:47:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11895 invoked from network); 5 Dec 2016 15:47:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=JXR79kko+7WueufUFyAouVns6pbES9rDEJni0o+nbN0=;
        b=cciCL5To7xGr3NGPyptOZjCFPC/z8RAOXtDL3yWcvTza5RI2lpH8YSGRCMGn+p7dgq
         eGEFoQaqCJt1mFCkdG9R6XmntHvgOF0x1wHocaI64iaTqdzpMQZXM3oQFu54Er64+PRs
         CZ9/aGUfSBgUsoDwbzgscfN6TUrQndeE7Mz5hqfDnV4/HbbTj0ymv41aVy93pdrNWtJq
         lKxCG9vEaVuVIHtCU4ye6k97yRc0/hQVB/S9mdpHFQE8t84REYy3GvoJ369rFGY4kkom
         7TNraigdtH4CWiUW69ZyuUXnjeGJ1+5vvraf3FwTZmUy96vSeAbqfctJIWtd4ARDQldh
         /qSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=JXR79kko+7WueufUFyAouVns6pbES9rDEJni0o+nbN0=;
        b=FDfKNbdxqHO7C5E//TEcXivF+Gjb9sPhj4777MuOvIUcuNiFU7GQhKbA5JUiVlQwg1
         Pfkn+GdVkv+5ZF8AFAKICZZbmNZR8P/w0bMQEk6fcpPbiSXuDmVORgYp0XVjKtodvKGk
         O+qv8u8sUhdY4p+eW+HxW7tyWCKauQtyHjCicsYrvpsrdKl/wTeiXTMGhI8ekr2wwZRX
         WzlnvxPeXeD+mRkY5UizpU5F6ccXqwFM9zC56UtqF0sOhiVzNIdkPnkwmU2gZ/ZIFOMB
         JbQ9MfwSNQpgxkEhlcJV9wULts0+G2Uzce/ZbC1tnxqUdW8LiZdi0VKLLcO0X0pSXaQi
         C2sA==
X-Gm-Message-State: AKaTC00ATrudI7WyavWhYsXJMO8of5APHm4X/+LyqKB/ByB4B/YXsIrvlelLpaHKEflmPg==
X-Received: by 10.28.130.137 with SMTP id e131mr9547387wmd.21.1480952847038;
        Mon, 05 Dec 2016 07:47:27 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Mon, 5 Dec 2016 16:47:25 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Cc: ondrej@sury.org, cve-assign@mitre.org, team@security.debian.org,
	dariusz.dwornikowski@cs.put.poznan.pl,
	sam-k6mymjcnjpz3fmkieotlt7rbgvqt98qy@samiam.org
Message-ID: <20161205154725.n4erh7wnftmlptz7@eldamar.local>
References: <1478939985.2087788.785402465.36AF3B93@webmail.messagingengine.com>
 <eacf0ad3886d4928905ca3e10c529e80@imshyb02.MITRE.ORG>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <eacf0ad3886d4928905ca3e10c529e80@imshyb02.MITRE.ORG>
User-Agent: NeoMutt/20161126 (1.7.1)
Subject: Re: [oss-security] Re: Remote crash in MaraDNS 2.0.13 and git master

Hi MITRE CVE assigning team,

On Mon, Nov 14, 2016 at 01:36:58PM -0500, cve-assign@mitre.org wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
> 
> > remote crash bug in MaraDNS 2.0.13 js_readuint16
> 
> Use CVE-2016-9300.
> 
> 
> > remote crash bug in MaraDNS 2.0.13 js_substr
> 
> Use CVE-2016-9301.
> 
> 
> > remote crash bug in MaraDNS 2.0.13 process_query -> this in fact
> > looks like stack smashing, since it crashes on htons in an unrelated
> > place
> 
> Use CVE-2016-9302.

According to the analysis of Sam Trenholme in
https://bugs.debian.org/844121#32, and confirmed by Ondrej, afaics,
those above would not be vulnerabilities in MaraDNS. Can you please
reject those three CVEs?

Regards,
Salvatore
