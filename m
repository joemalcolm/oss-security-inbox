X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["274" "Saturday" "5" "December" "2020" "09:44:10" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<X8tIWqUvzrWFujHy@eldamar.lan>" "13" "Re: [oss-security] Security fixes from Android 10 release which are relevant outside the Android ecosystem?" nil nil nil "12" "2020120508:44:10" "[oss-security] Security fixes from Android 10 release which are relevant outside the Android ecosystem?" (number mark "U       carnil@debia Dec  5   13/274   " thread-indent "\"Re: [oss-security] Security fixes from Android 10 release which are relevant outside the Android ecosystem?\"\n") "<20191107182804.GE6595@outflux.net>" ("<20191025212309.GA18967@pisco.westfalen.local>" "<20191107182804.GE6595@outflux.net>") nil nil nil nil nil nil nil "Re: [oss-security] Security fixes from Android 10 release which are relevant outside the Android ecosystem?" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23976 invoked by uid 550); 5 Dec 2020 08:44:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23955 invoked from network); 5 Dec 2020 08:44:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=hmhYd3pxrUXqktOEEdyu3qqhQ4NkLl9YMpgo0iVdDrU=;
        b=BYuUUvuApWJbnzsDPpIU/VxIOAd6r1/rHYp+Qex5IErlIwTsQCoTVux+dMo4ftRwcm
         w7iia2cFpPuuqnAYt9TFpemOZlkt16q5o7EtBsgomi65CFi6o3xtYgYOuRWYt2/61i8L
         4V7sQVtmekI1u0lZmbq2ZWDAs1P06HEbxveHR9Wa7GFraV+Va1f6JKV144LqXH06e5cd
         ozwtUvmivqDDXHzm6WD8DsQjdFqwEKuq3TC1yWKo1t6d0Yi1lvYnEajQ9PGAcpVFd8IG
         flgRPvz14kMjZJMQMQWCa08Qku5UbGpzdVciqX+yyhuA6KID/B4R9ljUgzPZzFQjtrAu
         brFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition:in-reply-to;
        bh=hmhYd3pxrUXqktOEEdyu3qqhQ4NkLl9YMpgo0iVdDrU=;
        b=WCA51SX1hdKyw4bEhZTgWyXm04/oKAQEeDa7rcovoSYlxO2MTF2L8lDKIYLauBaHiv
         JdOr0CiJoOHhJYQLNaBu1K0X24xOtLRfTR1lQlQrTy3BuegyaNAIGdPpBPabM7E5J+Dy
         GuFFr9L++6efw6tn0N+M3+4Ykj8XVL2fUB8UuAjhEHFkpKXZ+ce/Z3bd4iBI7s68t8uv
         tzmEdMxAy13jaK/Q+9lWraZEYzpeeP9Mb/pPUWBC4J4xI1Ri+nInhBPYlgxRS1Z/2L0S
         8uCSnBBiBLCIaJXKADWlSA2LPElYURBb8h2eZM9dHbNy71HnqugDFBF6ZFZEww6az1RZ
         xdUg==
X-Gm-Message-State: AOAM530tUC52jd7viPRuS4OV9v6xj7xxKzz+PeBIzbk6pp5f7dGUG+d1
	hGoR0hkgVPpysPzzZXhLrv6Vmi53uAM+WA==
X-Google-Smtp-Source: ABdhPJzFVkWKAi2fLsa1gUxXZLfU5V0tXADI32wMU7g9x5CCPLP42/A4eqwkpnBYUi5A7KBzOHmnaw==
X-Received: by 2002:a5d:438f:: with SMTP id i15mr9350428wrq.121.1607157852227;
        Sat, 05 Dec 2020 00:44:12 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Sat, 5 Dec 2020 09:44:10 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <X8tIWqUvzrWFujHy@eldamar.lan>
References: <20191025212309.GA18967@pisco.westfalen.local>
 <20191107182804.GE6595@outflux.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191107182804.GE6595@outflux.net>
Subject: Re: [oss-security] Security fixes from Android 10 release which are
 relevant outside the Android ecosystem?

hi Kees,

On Thu, Nov 07, 2019 at 10:28:04AM -0800, Kees Cook wrote:
[...]
> > CVE-2019-9423 (also libexif and opencv)
> 
> This one I can't find an external reference for. I've asked for more
> details internally.

Did you got any feedback on this one?

Regards,
Salvatore
