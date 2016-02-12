X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1505" "Friday" "12" "February" "2016" "09:58:47" "-0500" "David Leo" "httpsonly.github.io@gmail.com" "<CAAeBhPeigEx=_NuqYzTJuCe3=xLnvcx7DOe+0fYE66CNy7oeZQ@mail.gmail.com>" "41" "Re: [oss-security] HTTPS Only (Open Source, Python)" "^Cc:" nil nil "2" "2016021214:58:47" "[oss-security] HTTPS Only (Open Source, Python)" (number mark "        httpsonly.gi Feb 12   41/1505  " thread-indent "\"Re: [oss-security] HTTPS Only (Open Source, Python)\"\n") "<alpine.LFD.2.20.1602112225350.16884@wniryva>" ("<CAAeBhPdgWqsUJStCLLt+dgfHjsP=fUyc75L4ME3de4M_ctu8JQ@mail.gmail.com>" "<alpine.LFD.2.20.1602112225350.16884@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32664 invoked by uid 550); 12 Feb 2016 15:23:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19897 invoked from network); 12 Feb 2016 14:58:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=c7qMVsbGNZuPT/VU/f9ZBfSmCdKi3BxZYwwFya3eKtU=;
        b=M7xZ2w+TRkOqf2rkz1P4cctzmU0rB9sIGx9DgwlWOevhKmfVpp2c4X2pZPQE/Br71T
         uNcFnoxJ81tjcdHhbCkYk09L3T3BqQjo1B29Z9mxViPpgCRMxtQ3xJ2D9QXahnVtl76v
         iI7NLu+pmf2mZ0IzDbaujalAIu9YxVAjv/IP1cTd5MX+Qe0jQ8QF4EYYdemSLQzj2sRi
         UJu2gX0K7J8slevEfgMtF6ebGsPlHrYUvU72Lk/PIlqKNI+hNmplAJwQgDO3fjLimi5K
         BXry3Bd/xBZGUxs9NRTHOF99mTIj0Z5C/bFT9DnljtyNWc51fyBYP5CkPfkJV3NXk9/C
         V2YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=c7qMVsbGNZuPT/VU/f9ZBfSmCdKi3BxZYwwFya3eKtU=;
        b=RjE6zhcThjcns7zEqau3S1naaWNpxKgJDExVkCo6b2mJh3Ixenm3jCmCvYHkHcC0la
         6nRTlmcHIvT63ZFHf0R0ZZsLpN9LnAvn+4bY5fFxVAaLh2rRWP6TRWjeujK5z6Gx4lZd
         8c1bbbFpFjpv7HSutmDAMTvDfchkrEVm1zjqayTOYwWU9W47/nlPyD3NBXjflcPbuOQU
         GQ2PM7SuAX/ELxl1bgNlSlZYyKUKpsx/UyD1sYA8V+iCWToTbabg4gyp3qIdoRhIsRGK
         tvoj1e3xQ7XAo0/gAcmGxiK08ypIhchLjZQaJ8MuA9PYAaloOS2bIo30ANOMX2xGtmsR
         aWOw==
X-Gm-Message-State: AG10YOSpUF/ZMyAN6ixryW2t1GlHo5UnD72xZ4Pxw0/x8L1hQZW3Z+NYSuoOu5YAd+p+YPiqmO4CYesSAlCFpQ==
MIME-Version: 1.0
X-Received: by 10.25.79.16 with SMTP id d16mr696713lfb.73.1455289127721; Fri,
 12 Feb 2016 06:58:47 -0800 (PST)
In-Reply-To: <alpine.LFD.2.20.1602112225350.16884@wniryva>
References: <CAAeBhPdgWqsUJStCLLt+dgfHjsP=fUyc75L4ME3de4M_ctu8JQ@mail.gmail.com>
	<alpine.LFD.2.20.1602112225350.16884@wniryva>
Message-ID: <CAAeBhPeigEx=_NuqYzTJuCe3=xLnvcx7DOe+0fYE66CNy7oeZQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: bugtraq@securityfocus.com, fulldisclosure@seclists.org
Date: Fri, 12 Feb 2016 09:58:47 -0500
From: David Leo <httpsonly.github.io@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] HTTPS Only (Open Source, Python)
To: oss-security@lists.openwall.com

Yes, Mozilla said, "Gradually phasing out access to browser features
for non-secure websites", in April 2015. After more than six months,
they have done nothing useful.

The Chrome team wanted the same stuff:
https://www.chromium.org/Home/chromium-security/marking-http-as-non-secure
Again, nothing significant has been achieved yet.

And there is HTTPS Everywhere, with SO MANY rules:
https://www.eff.org/https-everywhere/atlas/
It's still able to access HTTP by default, but there is "Block all
HTTP requests". The problem: nothing happens when browser tries HTTP -
there should be warning(it's incorrect behavior) and options(try
HTTPS, Google Cache, etc). People complained, months ago:
https://github.com/EFForg/https-everywhere/issues/1329

So I made this project, because I have lost patience a long time ago.

Best Wishes,

On Thu, Feb 11, 2016 at 11:56 AM, P J P <ppandit@redhat.com> wrote:
> +-- On Thu, 11 Feb 2016, David Leo wrote --+
> | If browser tries to access HTTP address,
> | you will have three options:
> | try HTTPS,
> | Google Cache,
> | or copy-and-paste the address.
> |
> | There is no option to "temporarily bypass HTTPS Only".
> | You can always do that in another browser.
> |
> | Project Home Page:
> | https://httpsonly.github.io/
>
> Browsers too are moving there:
>   -> https://blog.mozilla.org/security/2015/04/30/deprecating-non-secure-http/
>
> (just to note)
> --
> Prasad J Pandit / Red Hat Product Security Team
> 47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
