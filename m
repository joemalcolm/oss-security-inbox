X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2004" "Monday" "18" "July" "2016" "12:12:11" "+1000" "David Black" "dblack@atlassian.com" "<CAAYo3BvcTv66Cr5m6p32u+AXLx1eyFwM+mfb2O4rZOHtnk__mw@mail.gmail.com>" "57" "[oss-security] Re: CVE request for the Play Framework" nil nil nil "7" "2016071802:12:11" "[oss-security] Re: CVE request for the Play Framework" (number mark "U       dblack@atlas Jul 18   57/2004  " thread-indent "\"[oss-security] Re: CVE request for the Play Framework\"\n") "<20160715115441.2B51D6C4292@smtpvmsrv1.mitre.org>" ("<CAAYo3BupQw4M1Ct5nO4UVC87TmQatCdcxbmZpaiyckMb8ws4sQ@mail.gmail.com>" "<20160715115441.2B51D6C4292@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14097 invoked by uid 550); 18 Jul 2016 02:12:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14076 invoked from network); 18 Jul 2016 02:12:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atlassian-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=4LFKIyrKiiIuPY8qUUbyNqraskV1V8YQ6f/53aL2Wf8=;
        b=j9CdPnFf0g+lWolaOBhbITYftiKLwXMV2uCVmtOdeZCFTsnN09yJIyHfs3pI7fn7S9
         y+xd/ZwsuEeuUXUbko9ztP0QDB25RnwzHz8sMdZGB6+Qv7a0JLIXiSOq/4NGmIAWj4vw
         pS0UlOmGgxokNqlMSlZcAAUn9uulw/S8YIs1y/bN75bTtECqLEpx9fTG600u2AaV6k9k
         LyW2OAZB5EzDLR9ltXSU61fEN7WexQkUdGPed4UhfsfxWNtcTodsAkTuZDcUdCg/Glk0
         BFcl3m13ClorugahsdsljDMaREeLFwfQe54fnHXilYFsbhCeLeYrYK1zVxEhtpUdwCCJ
         Hp2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=4LFKIyrKiiIuPY8qUUbyNqraskV1V8YQ6f/53aL2Wf8=;
        b=lA9UJ5F8gMlx5vQP5PJZM2RkL0MQ2RVVx+6pMH4/NlDRbsJXkFa0AJzju7M1j8F2AU
         SypCIDUHQqR32JcFNsqwwOb7aMntjyryBzqqlOjIy/RrHEBYJEwVpFcEZC8aPUPeUvqz
         ubSKejb0/14CYMk5RWxPn1lgbyxn5jaShbsSiWhJZakUsnmgI+cqxg9qjSK+HyzT1w3q
         5Fb9Dm9OlD76k0Aq7CxIulSYyFOZy1M3FZSyhskPypGr2EEQy8rQk+SUlXjS0ZV0Xb8j
         MLY4DB5bEeklB83ldmdHhxKuS3dkrH87TGgRn16CvRY1sK+swlccYr1ztogLi/RK89Qi
         z9Ug==
X-Gm-Message-State: ALyK8tLwrufXsjoKz7DnYYpEHHIF2Ou8mZFmx1RDlBv9krUzNAhbfaUF4wCzrJWZ6+DPj5EvbJ7t2NitQy3HJcDa
X-Received: by 10.129.101.213 with SMTP id z204mr20859322ywb.153.1468807950744;
 Sun, 17 Jul 2016 19:12:30 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160715115441.2B51D6C4292@smtpvmsrv1.mitre.org>
References: <CAAYo3BupQw4M1Ct5nO4UVC87TmQatCdcxbmZpaiyckMb8ws4sQ@mail.gmail.com>
 <20160715115441.2B51D6C4292@smtpvmsrv1.mitre.org>
From: David Black <dblack@atlassian.com>
Date: Mon, 18 Jul 2016 12:12:11 +1000
Message-ID: <CAAYo3BvcTv66Cr5m6p32u+AXLx1eyFwM+mfb2O4rZOHtnk__mw@mail.gmail.com>
To: cve-assign@mitre.org
Cc: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a114c83ae25fbfe0537df809b
Subject: [oss-security] Re: CVE request for the Play Framework

--001a114c83ae25fbfe0537df809b
Content-Type: text/plain; charset=UTF-8

On 15 July 2016 at 21:54, <cve-assign@mitre.org> wrote:

> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>
> > In version 2.5.0 of the Play Framework a CSRF bypass that depends upon
> > an implementation bug in chrome's beacon api was fixed.
>
> We think additional information would help in deciding whether this is
> commonly recognized as a Play Framework vulnerability (which would
> have a CVE ID) or Play Framework security hardening (which would not
> have a CVE ID). Our understanding thus far is:
>
>   - Play Framework is not an Atlassian product
>


Correct.



>
>   -
> https://github.com/playframework/playframework/pull/5527#discussion-diff-51786858
>     says "In order to make Play's CSRF filter more resilient to
>     browser plugin vulnerabilities and new extensions, the default
>     configuration for the CSRF filter has been made far more
>     conservative."
>
>   - Chromium issue 490015 has some debate about whether it is a
>     Chrome/Chromium vulnerability, e.g., "The issue is whether it's
>     the browser responsibility to act as a nanny to weak websites, or
>     we should leave weak websites as sacrifice for great justice."
>     versus "To be clear, this is a security bug ... There is a
>     security bug in Chrome, but no action is being done."
>
> Typically, it would be best not to have a CVE for Play Framework if
> the essence of the Play Framework problem is "the product did not
> proactively add workarounds for all browser-level vulnerabilities that
> might be discovered later."
>


Perhaps the question(s) should also be - "should a CVE be assigned to
chrome/chromium?" or perhaps in general for CSRF protection implementations
that make an assumption that at least currently does not hold up in a
widely used browser (content-type is not as restricted in cross-domain
requests as some have assumed) ?


-- 
David Black / Security Engineer.

--001a114c83ae25fbfe0537df809b--
