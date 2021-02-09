X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1070" "Wednesday" "10" "February" "2021" "01:12:21" "+0530" "Utkarsh Gupta" "utkarsh@debian.org" "<CAPP0f97oRuLdWwc7hMA1Fv3ymOkwptS3rks9D7FTFjhJLFvvZw@mail.gmail.com>" "42" "Re: [oss-security] screen crash processing combining characters" "^Date:" nil nil "2" "2021020919:42:21" "[oss-security] screen crash processing combining characters" (number mark "        utkarsh@debi Feb 10   42/1070  " thread-indent "\"Re: [oss-security] screen crash processing combining characters\"\n") "<rvubtf$lnv$1@ciao.gmane.io>" ("<rvubtf$lnv$1@ciao.gmane.io>") nil nil nil nil nil nil nil "Re: [oss-security] screen crash processing combining characters" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 4091 invoked by uid 550); 9 Feb 2021 20:38:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5927 invoked from network); 9 Feb 2021 19:42:46 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=XO1TS3KpurrCvVBOHDY0uJKLrJps6VWea+YUOpo0jD0=;
        b=gHYgVeGSNe3VxKicD0HOq8UBZLXEaoTIxZf2Bk+KV+NoIczrzVBptb8OEyvT2SJdUm
         ZrlvcUOosC0looBqLmLqmR2m0Nk8ImZaJHI5QGyhUZWKabWoKoKbW9PHvSM3S/ZQS2aU
         ekbIECgK5nPvZVVHkNNd/1MX3R301U23pUOT4LIdvtDDgtGY6wTew3VracgxP1NYf23D
         K+e22w4hzbru/FwBxBls+7azBZ+Yu8Fi100FrvV3AgW6IMb9tPi8DLbPk9TjU2EfMSiw
         QN/d5jKMmz52ZpICJHkhbt8pSox6b0L9MuYTdvEgdlkQxb+RIhclT2jUhho3tgJ3JOIW
         UMOg==
X-Gm-Message-State: AOAM5315lAH4Z7iNCuP6RBATUAdRf73z9LYQKwYRgbbzsolbkgVYD9Af
	JYCd53hRK1udi2W5y5uQe/os5BqKPs9P0Q==
X-Google-Smtp-Source: ABdhPJxSii/GuFAgmMtoj42d5U1k8bK2HjrYxIoALOU1u+SGFrsGCRNRzVT+gOBV7NprmWacbDI3WQ==
X-Received: by 2002:a6b:6409:: with SMTP id t9mr20521053iog.139.1612899754551;
        Tue, 09 Feb 2021 11:42:34 -0800 (PST)
X-Received: by 2002:a05:6e02:c9:: with SMTP id r9mr23397569ilq.304.1612899754050;
 Tue, 09 Feb 2021 11:42:34 -0800 (PST)
MIME-Version: 1.0
References: <rvubtf$lnv$1@ciao.gmane.io>
In-Reply-To: <rvubtf$lnv$1@ciao.gmane.io>
X-Gmail-Original-Message-ID: <CAPP0f97oRuLdWwc7hMA1Fv3ymOkwptS3rks9D7FTFjhJLFvvZw@mail.gmail.com>
Message-ID: <CAPP0f97oRuLdWwc7hMA1Fv3ymOkwptS3rks9D7FTFjhJLFvvZw@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000e60c2005baec7cfe"
Date: Wed, 10 Feb 2021 01:12:21 +0530
From: Utkarsh Gupta <utkarsh@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] screen crash processing combining characters
To: oss-security@lists.openwall.com

--000000000000e60c2005baec7cfe
Content-Type: text/plain; charset="UTF-8"

Hi,

On Tue, 9 Feb, 2021, 9:39 pm Tavis Ormandy, <taviso@gmail.com> wrote:

> Hello, I noticed someone posted this to the screen-devel list. I can
> reproduce it here, just catting the testcase does crash my screen
> session.
>
> https://lists.gnu.org/archive/html/screen-devel/2021-02/msg00000.html
>
> (I think it wasn't supposed to be public, but it is, so better it's
> visible to security teams)
>
> It looks like it might be exploitable at first glance, I see a crash
> here in encoding.c, because i is out of range.
>
> 1411   else if (!combchars[i])
> 1412     {
> 1413       combchars[i] = (struct combchar *)malloc(sizeof(struct
> combchar));
> 1414       if (!combchars[i])
> 1415            return;
> 1416       combchars[i]->prev = i;
> 1417       combchars[i]->next = i;
> 1418     }
>
> Exploitable or not, it would be annoying if someone stuffed this into
> logfiles
> being tailed, or whatever.
>

Got CVE-2021-26937 assigned for this.


- u

>

--000000000000e60c2005baec7cfe--
