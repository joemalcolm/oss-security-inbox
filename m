X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1534" "Saturday" "27" "March" "2021" "15:28:52" "-0700" "Gordon Tetlow" "gordon@tetlows.org" nil "32" "Re: [oss-security] OpenSSL 1.1.1 CVE-2021-3450 CA certificate check bypass with X509_V_FLAG_X509_STRICT, CVE-2021-3449 NULL pointer deref in signature_algorithms processing" nil nil nil "3" nil nil (number mark "U       gordon@tetlo Mar 27   32/1534  " thread-indent "\"Re: [oss-security] OpenSSL 1.1.1 CVE-2021-3450 CA certificate check bypass with X509_V_FLAG_X509_STRICT, CVE-2021-3449 NULL pointer deref in signature_algorithms processing\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] OpenSSL 1.1.1 CVE-2021-3450 CA certificate check bypass with X509_V_FLAG_X509_STRICT, CVE-2021-3449 NULL pointer deref in signature_algorithms processing" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30265 invoked by uid 550); 27 Mar 2021 22:36:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27821 invoked from network); 27 Mar 2021 22:29:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tetlows.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=VUb5/+ICJ1oxV93z824G9zadgRweh5hfVOdfU1xS1M0=;
        b=VqjYl+M3Mcyu+rfcOipqbjNO6MRex48yMaGniXDn8ATXmVFrsRPr5f+FAjKgFgUcg7
         noZ0AzSbn9oMV8D8fqsH+0qCZjFdqoWNjOrxzHWmJh/zHJJ+oLGz7X306s97yoeN3ndo
         rKSRjo4Uikp+jRbXmcjFHXSWI0MpJyp2b0mn4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=VUb5/+ICJ1oxV93z824G9zadgRweh5hfVOdfU1xS1M0=;
        b=k6Dt3AAuTVpEYca5XX7EepI6S/3+OPGSGWy6Uo71r7NkhmWuBQ/hdEdXYNgRvJsXBk
         noTy8pBGrENDPEjNPnkL8VWvXD3FpJ/7gu1+XctK+1oQHIFqh86sn8nX5USrVP9SQxCs
         ovMzgFv3pCdlxune/cZw4r0lFsFnXtsm4eHxLNVTkd5HQI0Wui99uow5Uux+65zyQbfj
         3IPFp646Qy9seyhZ7A5ApAtQKSyJ3KYsgOtbBOpg3dRI0sGk88IGrjd2viTPgO8dQizK
         MUN0qVmcs2383JXFlTy4NqI5sy21jCmobE4opxdbhpENeDqyx14W27FlchOeYjPPR89V
         r6/Q==
X-Gm-Message-State: AOAM531N5sXlFhLklk/flvwig0Ql5qj0qq3kCHd5EavOt7lRCSmzTWgB
	/MSVNjHnDUtP2+PdkHrOjjW+gtqMR1WTi9pUkT1v1jOa+hSW
X-Google-Smtp-Source: ABdhPJwurWuf60X1WW1hxFN9rdakPCccU7MnJZJXt2C6bR+jSjwzXCshw5S0I9vWe7HfEgnMxdovGh4hKcT/YzcZpeI=
X-Received: by 2002:a67:d393:: with SMTP id b19mr11711229vsj.60.1616884143647;
 Sat, 27 Mar 2021 15:29:03 -0700 (PDT)
MIME-Version: 1.0
References: <20210327180255.GA12647@openwall.com>
In-Reply-To: <20210327180255.GA12647@openwall.com>
From: Gordon Tetlow <gordon@tetlows.org>
Date: Sat, 27 Mar 2021 15:28:52 -0700
Message-ID: <CAKghNw2tx1MqnRF-osqZQ4x5PWak8jTT1nvjrcZrJtrFOQdZdQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] OpenSSL 1.1.1 CVE-2021-3450 CA certificate check
 bypass with X509_V_FLAG_X509_STRICT, CVE-2021-3449 NULL pointer deref in
 signature_algorithms processing

On Sat, Mar 27, 2021 at 11:05 AM Solar Designer <solar@openwall.com> wrote:
>
> One other detail I feel I have to bring up in here, and expect a
> response to, is Wind River's apparent leak of the vulnerability detail
> two days prior to scheduled public disclosure.  This was brought up on
> the distros list back then, and I was also asked about it on Twitter
> when the vulnerabilities were finally made public appropriately on the
> scheduled date.
>
> Since the vulnerability detail wasn't on the distros list, it's not
> exactly a case of a list member leaking from there, but it's closely
> related.  And regardless of where this happened, it's a concern, which
> we probably should discuss on oss-security.
>
> So I'd appreciate an explanation/statement from Wind River on what
> happened and what measures, if any, are being taken to prevent this from
> happening again.  I'd also appreciate a comment from OpenSSL.
>
> The leak was on a web page archived here:
>
> https://web.archive.org/web/20210324105700/https://support2.windriver.com/index.php?page=security-notices&on=view&id=7055

While I am neither Wind River nor OpenSSL, I did notice on the linked
page that the upper right hand corner says:
Released: Apr 22, 2020     Updated: Mar 22, 2021

Without knowing much else, it feels like someone accidentally put a
"released" date as last year and the content management system went
ahead and made the article public. Hard to say without confirmation,
but I could definitely see that being the chain of events.

Gordon
