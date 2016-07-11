X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["445" "Monday" "11" "July" "2016" "16:08:10" "+0100" "Ben Laurie" "benl@google.com" "<CABrd9SS+ThMG53SSycdE_Cg4e1VqKd+ToY7G_noNc=e3jf-u_Q@mail.gmail.com>" "16" "Re: [oss-security] CVE request: apparmor: oops in apparmor_setprocattr()" nil nil nil "7" "2016071115:08:10" "[oss-security] CVE request: apparmor: oops in apparmor_setprocattr()" (number mark "U       benl@google. Jul 11   16/445   " thread-indent "\"Re: [oss-security] CVE request: apparmor: oops in apparmor_setprocattr()\"\n") "<57809C8C.6070902@canonical.com>" ("<57809C8C.6070902@canonical.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1935 invoked by uid 550); 11 Jul 2016 15:08:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1917 invoked from network); 11 Jul 2016 15:08:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=ePHwD6aEdr5zjUDXPAK+Lw1Hvp0lBd6ytMlg3j1N4k8=;
        b=MnDkqvpzJYT0s2reXpHQuEMfH3zJAuQ9HlTpKDK0RDXUY1SYJGQ7KvSDWPftY61fF9
         O88avJyPa0hFRL6gYquFtDqAPuReX7XsGNNbgGtutxcAtafG0BZvkk0XvUdazP80p94O
         1qVHI4ZrVGMjSeKJSndCH+jboNtTkenF0cPFL7lH82Jhq/5ZR0L9Cc+Q69J2M+nouyE4
         NiLPLgwyuiQHJz8D8IKnBFaRiv8mdTtNY98hLLI7490W8vXdtFb3mG2AS3NeXq2f3OC5
         6qGsevdE7ZF7PSRDmVeoE6hZqEjI8q79cU85oo8hzvWyhD1M+FpDTtIwFAvFOxi16a8D
         pgKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=ePHwD6aEdr5zjUDXPAK+Lw1Hvp0lBd6ytMlg3j1N4k8=;
        b=Ux5HQK5JAU9Cf6kky4SD0Idm1h6jSmv1t+yQvktXxdBT7GAXS5QKYXW6ult4Hykray
         J8io74GbdT2VwZGRbTC+vs+qpSFYXi6w/pWnNPcZPef4jQA1vkAet6t7kbk5Wn8GWxeX
         +WJRfhs+mSGVCDp+z0TrKPOrnu8tSCDUHXhVl+K86bw4UuXjxynKE2aAT0vISNmYM6pl
         WWc+NaGghK7DVTUkjP0PAPePKR7hitV6UWW/J/h/bIdvlLWKeZK/tFf8KXSCvOeYy1nP
         zZcDc5T/CI5BWNu+CojzK7xC16krCUU+zYNc1rUeLGgTm4BWlFi1xHDlbNfkKGbJIT2c
         RGzg==
X-Gm-Message-State: ALyK8tJkgiEkOptp8w4ElW1wMiulDRsuJKCZi5F0yHsLTiElEZaXgLhjuGe9vq3rz5fb6qe8NJdpDHmAAu2RcY1h
X-Received: by 10.159.55.235 with SMTP id q98mr9502073uaq.83.1468249690784;
 Mon, 11 Jul 2016 08:08:10 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <57809C8C.6070902@canonical.com>
References: <57809C8C.6070902@canonical.com>
From: Ben Laurie <benl@google.com>
Date: Mon, 11 Jul 2016 16:08:10 +0100
Message-ID: <CABrd9SS+ThMG53SSycdE_Cg4e1VqKd+ToY7G_noNc=e3jf-u_Q@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: Re: [oss-security] CVE request: apparmor: oops in apparmor_setprocattr()

On 9 July 2016 at 07:41, John Johansen <john.johansen@canonical.com> wrote:
> There is a potential privilege escalation in apparmor's setprocattr() interface.
>
> https://lkml.org/lkml/2016/7/7/906
>
> introduced by: 30a46a4647fd1df9cf52e43bf467f0d9265096ca
> fixed by: 30a46a4647fd1df9cf52e43bf467f0d9265096ca

I assume its not actually introduced and fix by the same commit. :-)

>
> Could you assign a CVE for this issue?
>
> thanks
> John
>
