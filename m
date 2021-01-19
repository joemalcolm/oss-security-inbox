X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["961" "Tuesday" "19" "January" "2021" "21:00:46" "+0530" "Utkarsh Gupta" "utkarsh@debian.org" "<CAPP0f96WPsiSAzNkmPrPiPcFQ7g7NGG8yfVjPH85U2GOCtExJQ@mail.gmail.com>" "25" "Re: [oss-security] mutt recipient parsing memory leak" nil nil nil "1" "2021011915:30:46" "[oss-security] mutt recipient parsing memory leak" (number mark "U       utkarsh@debi Jan 19   25/961   " thread-indent "\"Re: [oss-security] mutt recipient parsing memory leak\"\n") "<ru239p$147u$1@ciao.gmane.io>" ("<ru239p$147u$1@ciao.gmane.io>") nil nil nil nil nil nil nil "Re: [oss-security] mutt recipient parsing memory leak" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24171 invoked by uid 550); 19 Jan 2021 17:04:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20293 invoked from network); 19 Jan 2021 15:31:35 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5dTNMIaxhSe96Gg0eGxrqVv3+yRPjP9oUVFWFR+x1Fs=;
        b=Qupy8MPYuPdZ9kuJkkkjW3sDJ/l8bOuz9EFt29m6dUdB42NvyoxPZsKBjTlTfJSAsa
         kbHTvWPj9EcVFLgzwGDH1ACVqQQZ9Ct+tTVlr9kO1UmqCYZ+n1IH82k92Wxmbsp2BChZ
         JBJ7RJh19pqSQFPEZpAHOaQfLC6pekFrHe7CX+Avm+awS1PcKl/fipt8j35knzMAE4vV
         yYjLpogv3MnhhYjT9sGtWWwEQok9yzWbvuOaLRxPaDnqb4BymjKZMuEX50olm8muauN6
         1utJtZ2pEu419/gmXVnCqV00xTScA54BdreTy/ByAcvl11YRUuufHiMCCJKRNigSbrw0
         Kr0w==
X-Gm-Message-State: AOAM533SyFyg+FFKhwkug7RmiVrYsx8Hl7iFagilWlOyPVBO6zUhS6M9
	f7ojLAtLpHUmHqWD14ydeBmLkObzZOVjJg==
X-Google-Smtp-Source: ABdhPJwpm9Erb1yVq9Eu7wZToyfGOFCcf8d/osL232HvUJdwZMzJPpUt0RuvEtWV5kQbarqSRjj9jQ==
X-Received: by 2002:a5e:c00e:: with SMTP id u14mr3275685iol.194.1611070283025;
        Tue, 19 Jan 2021 07:31:23 -0800 (PST)
X-Received: by 2002:a02:a02:: with SMTP id 2mr3915318jaw.27.1611070282199;
 Tue, 19 Jan 2021 07:31:22 -0800 (PST)
MIME-Version: 1.0
References: <ru239p$147u$1@ciao.gmane.io>
In-Reply-To: <ru239p$147u$1@ciao.gmane.io>
From: Utkarsh Gupta <utkarsh@debian.org>
Date: Tue, 19 Jan 2021 21:00:46 +0530
X-Gmail-Original-Message-ID: <CAPP0f96WPsiSAzNkmPrPiPcFQ7g7NGG8yfVjPH85U2GOCtExJQ@mail.gmail.com>
Message-ID: <CAPP0f96WPsiSAzNkmPrPiPcFQ7g7NGG8yfVjPH85U2GOCtExJQ@mail.gmail.com>
To: taviso@gmail.com
Cc: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] mutt recipient parsing memory leak

Hi Tavis,

On Mon, Jan 18, 2021 at 1:11 AM Tavis Ormandy <taviso@gmail.com> wrote:
> Hello, I noticed mutt was leaking memory whenever I opened a particular
> mailbox. I tracked down the problem: Using rfc822 groups without the madatory
> labels wasn't being parsed properly.
>
> https://tools.ietf.org/html/rfc822#section-6.2.6
>
> (A spammer had just put some junk in there, they weren't deliberately using
> exotic addressing schemes.. haha).
>
> It turns out that you can send a small message that leaks a *lot* of memory. A
> small message can leak GBs of memory, effectively preventing you from opening
> your mailbox. You would need to use a different mail client to clean up the
> malformed message before you can use mutt again.
>
> I sent this upstream as a DoS, but they don't want to treat it as a security
> isssue. I though I'd just send a FYI here instead in case anyone wants to
> backport the patch.

Got CVE-2021-3181 assigned for this!


- u
