X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["322" "Wednesday" "22" "August" "2018" "23:36:44" "+0200" "Leonardo Taccari" "iamleot@gmail.com" "<5b7dd771.1c69fb81.a6d8.6521@mx.google.com>" "10" "Re: [oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?" "^Date:" nil nil "8" "2018082221:36:44" "[oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?" (number mark "        iamleot@gmai Aug 22   10/322   " thread-indent "\"Re: [oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?\"\n") "<alpine.GSO.2.20.1808221612460.22335@scrappy.simplesystems.org>" ("<CAJ_zFk+ZNi8r8TKTZuaYgSBUz4mxCO7C5SC=B8Ktc_CZQW6Dsw@mail.gmail.com>" "<CAJ_zFk+RtYrqWQ4Mj1SLVJ7BTZBHLjo_M9t-gDVS_uDEPhuCrg@mail.gmail.com>" "<alpine.GSO.2.20.1808210951110.18862@scrappy.simplesystems.org>" "<CAFRnB2U+QMGmAMoZqbCgTjEx_o_NA+Y9eBE6eDBgJJ0hZdQ4GQ@mail.gmail.com>" "<CAJ_zFkJpnGtG6D3JZVaC5KJiNzsJ6vjJK0oXRfirR8QsdFbZVQ@mail.gmail.com>" "<CAOVKCF0Qehz2q3m2vPSAr3vKRAxdHrTbnyk71ApFYnVXuZ-P6Q@mail.gmail.com>" "<alpine.GSO.2.20.1808221612460.22335@scrappy.simplesystems.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26151 invoked by uid 550); 23 Aug 2018 09:06:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32126 invoked from network); 22 Aug 2018 21:37:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:from:to:subject:in-reply-to:references:comments
         :mime-version:content-id:date;
        bh=e0YDVmnCQz7a6s5Ry3TkI71gexNxkYhRO4t4RMtfwLI=;
        b=muu0SvDtNnVq8EVH+kOXkgARFniUeWTgBaYnGchmlYHbSDccLpqUREX/o7UwAJWqqZ
         YCFHhekqRu/zfgEvZr+D4/Rcp3WvWgO1Wa+WBgSwYzgrHmudaQLoprINC9fvC+fzGlJh
         PRt3hirGVepknnGCdbNvrqcn3wvPhN4ohMNKKdCiI4E6Xq8qqtvAiotr91ioeP6BwrtO
         5/uhRmIZO1fV9sqyEq306JF97mUQ4AkJQbMURhmdWdagr2CINtBoYhBXXKmGQfm0JUPV
         eKzD4rWwj33vbP2ClGYmSRHS5/pERhaPkbp9/5wZ6WCby7NSfeOnKSbxLma0M7d/Wm6O
         uj/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:from:to:subject:in-reply-to
         :references:comments:mime-version:content-id:date;
        bh=e0YDVmnCQz7a6s5Ry3TkI71gexNxkYhRO4t4RMtfwLI=;
        b=GNy8g3hmuhWQ0g5usjPl+mmNPMoWeJ4a9Lq6JxmmJ29OryzLDYyJyoyOYD5JuPNbsP
         2lfY5kVYiWeM9mi/a3e6czNW2XUB+I/cE3YoCVbNtA9y2isabjrl79zSnkUDo82RXLJU
         kcRaHP4SgNvJOHy2b2Mw5wMxZdNVDYRD16xhRmCDm5oUtepVajsAarCt3UGScchvWrEA
         /nQlihe+PbZGfS6QpNGvkKqtfiJ4xwyFYHpwcfPhXKHMgB0v7dB0EW+gEMeV/moGmFY6
         ullDABO93wRWfqE1ZT7oWa8C3YIWcM4GoBhL7/of0Y5JeE0RWl0GNAl7KocNbnZesccp
         0sjA==
X-Gm-Message-State: APzg51C3hBufvrBO8jMUPGyOSC+ExAMA7uHA+8Vmm11jo3WcQYnD61aS
	lM/5YMhtb9MOhZ6MJLqpA7KUdpmk
X-Google-Smtp-Source: ANB0VdbhtBleWIq6MRJBrsd9a1GZukzCcJM92jNPHtTR8M5a5CBHGHwUg5d6YuMJxs/Rvf4vXlH+aw==
X-Received: by 2002:a1c:8b86:: with SMTP id n128-v6mr3507101wmd.42.1534973810885;
        Wed, 22 Aug 2018 14:36:50 -0700 (PDT)
Message-ID: <5b7dd771.1c69fb81.a6d8.6521@mx.google.com>
In-reply-to: <alpine.GSO.2.20.1808221612460.22335@scrappy.simplesystems.org>
References: <CAJ_zFk+ZNi8r8TKTZuaYgSBUz4mxCO7C5SC=B8Ktc_CZQW6Dsw@mail.gmail.com> <CAJ_zFk+RtYrqWQ4Mj1SLVJ7BTZBHLjo_M9t-gDVS_uDEPhuCrg@mail.gmail.com> <alpine.GSO.2.20.1808210951110.18862@scrappy.simplesystems.org> <CAFRnB2U+QMGmAMoZqbCgTjEx_o_NA+Y9eBE6eDBgJJ0hZdQ4GQ@mail.gmail.com> <CAJ_zFkJpnGtG6D3JZVaC5KJiNzsJ6vjJK0oXRfirR8QsdFbZVQ@mail.gmail.com> <CAOVKCF0Qehz2q3m2vPSAr3vKRAxdHrTbnyk71ApFYnVXuZ-P6Q@mail.gmail.com> <alpine.GSO.2.20.1808221612460.22335@scrappy.simplesystems.org>
Comments: In-reply-to Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
   message dated "Wed, 22 Aug 2018 16:16:34 -0500."
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <11112.1534973804.1@boh>
Date: Wed, 22 Aug 2018 23:36:44 +0200
From: Leonardo Taccari <iamleot@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?
To: oss-security@lists.openwall.com

Hello Bob,

Bob Friesenhahn writes:
> The CERT advisory at https://www.kb.cert.org/vuls/id/332928 provides a 
> policy.xml example which does not appear to block PS2 and PS3, which 
> are also entry points for reading Postscript.
> [...]

If I am not missing something I think that ghostscript isn't used
for them though.
