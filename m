X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["886" "Saturday" "28" "November" "2015" "21:06:01" "-0800" "Michal Zalewski" "lcamtuf@coredump.cx" "<CALx_OUAUgrpm0W0E=qDq_hw_3tZ3e+wiRjfQ99pg+n4xO-93cw@mail.gmail.com>" "18" "Re: [oss-security] Re: Heap Overflow in PCRE" "^Cc:" nil nil "11" "2015112905:06:01" "[oss-security] Re: Heap Overflow in PCRE" (number mark "        lcamtuf@core Nov 28   18/886   " thread-indent "\"Re: [oss-security] Re: Heap Overflow in PCRE\"\n") "<20151129040103.E8DA86C018F@smtpvmsrv1.mitre.org>" ("<20151124113343.4382bed3@pc1>" "<20151129040103.E8DA86C018F@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1420 invoked by uid 550); 29 Nov 2015 05:06:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1398 invoked from network); 29 Nov 2015 05:06:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=coredump-cx.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type;
        bh=wAa2Q5DK91QYiQQtMdeEVWbxoE5KP//i4rXJnLCBnoo=;
        b=uTGQbYlJqAk0CWFwbqUF/DxGeB5npSvugOsy3wsRRbPKiXDlYV4Cjg+MefgeiNpyVZ
         qRtdFrdWgDvMg6rS5BUPYuds7/9p8Np8ZOCepo9KbZ+sZPJ8/pcfU9yuILLq8eeom1A8
         uaPpYSuEnCFujroNu7+a0Ou3YDeZ6ljfNgUIgrWZWQTKXfpzobuehWyk1J/UL0CJ4j/n
         krXP7G5hb1a09ucborEa5xSI1dC5brCNsK8X3TXoVBPz9cLL8pm9JMw/u2E4YDFZVU0V
         jbR1fhIKzyFysuSMwaWC001F0qcHVG2FmROQpKtrwXEVmEs3cKtuVNNY1J5qPpubFK7R
         V0ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-type;
        bh=wAa2Q5DK91QYiQQtMdeEVWbxoE5KP//i4rXJnLCBnoo=;
        b=J0xVpqln+EiSUjSWUiEmbBabJKbg7quLrSnp2uM0CWay13BOBlmDdjyPQmPmLSgdt0
         PNqEqR4ZP4fJKyGy3Vmk4K4el61TqKd51qNE/5uBbp+yXLlpd8ZUupVkMPBewmHGWrRU
         utodPDdLWmZDjkWxQDZU4rQtUMLGMDrK19yTSHLj4yTDr4CWITE7i/QmHYqLeHbuqU+w
         oy9wP0V10c19afQGT5kQsSUY4Y7j9VITNEZrQDVzLJ0SeJnLUlwjRJJZe8NZLtMHrOmy
         vxsEys4vJQ9KCvrBDi46EmodV05KT//yasiD1d/Z3B/34WVl/E509uf1zDm5NuKQXgND
         /Uvw==
X-Gm-Message-State: ALoCoQmAMzM++P2cQM/iTymXuvpaXsmoKPnPmiPEOuGY2J9AMVOwRfV4hM1ACRyGAYxhjyN91XPS
X-Received: by 10.107.4.213 with SMTP id 204mr60212273ioe.195.1448773581175;
 Sat, 28 Nov 2015 21:06:21 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20151129040103.E8DA86C018F@smtpvmsrv1.mitre.org>
References: <20151124113343.4382bed3@pc1> <20151129040103.E8DA86C018F@smtpvmsrv1.mitre.org>
Message-ID: <CALx_OUAUgrpm0W0E=qDq_hw_3tZ3e+wiRjfQ99pg+n4xO-93cw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: =?UTF-8?Q?Hanno_B=C3=B6ck?= <hanno@hboeck.de>, 
	Assign a CVE Identifier <cve-assign@mitre.org>
Date: Sat, 28 Nov 2015 21:06:01 -0800
From: Michal Zalewski <lcamtuf@coredump.cx>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Heap Overflow in PCRE
To: oss-security <oss-security@lists.openwall.com>

> Most PCRE findings have a requirement that the attacker is able to
> provide an arbitrary regular expression in a way that crosses a
> privilege boundary.
> http://www.pcre.org/current/doc/html/pcre2pattern.html implies that
> this is relevant to the PCRE security model, i.e., the reference to
> "applications that allow their users to supply patterns." We've
> mentioned this before in
> http://www.openwall.com/lists/oss-security/2015/09/08/8 but we're
> still unaware of any specific application that meets this requirement

Languages such as Flash or JavaScript, where untrusted parties are
allowed to specify regular expression patterns that are compiled by an
underlying regex library - be it PCRE or something else. Examples:

https://code.google.com/p/google-security-research/issues/detail?id=225
https://code.google.com/p/google-security-research/issues/detail?id=208

/mz
