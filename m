X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["856" "Wednesday" "26" "January" "2022" "13:54:45" "+0100" "Dominik Czarnota" "dominik.b.czarnota@gmail.com" nil "36" "Re: [oss-security] pwnkit: Local Privilege Escalation in polkit's pkexec (CVE-2021-4034)" nil nil nil "1" nil nil (number mark "U       dominik.b.cz Jan 26   36/856   " thread-indent "\"Re: [oss-security] pwnkit: Local Privilege Escalation in polkit's pkexec (CVE-2021-4034)\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] pwnkit: Local Privilege Escalation in polkit's pkexec (CVE-2021-4034)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9360 invoked by uid 550); 26 Jan 2022 12:57:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7760 invoked from network); 26 Jan 2022 12:55:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=l9skKGnLv3zvWPo0cEu0IOT8Qil4d78rBleQ4uPZQpo=;
        b=a68kOGWyfY9Gxzi6kfz6xI06Xq5sH810lk1p5yHGoTpAB29Pyhii6PncP2YeFF4rul
         b/DsHdO5qg0o5LN8n6ErVkfX2HwpsG5tO08dgt57vK6n/OO4Mqu1Bu26n5F/e8NQicuc
         jpWm9tGp6N5Ff5HzI2oNGWbHKr2MFByNEI4R/7D92IxErfHwqm9ec340yhHDa2CoVjCz
         B4MxWJhS6Vdc1t1ngDJT+DWMR97wgQdF7GMuxDUYnJb3GlR0MyWesl1bnfmNMSGVhXDA
         HgY1ipiZ7cw3BWhwbTjBIu8G93glf1yqIR4yPOUqTZ0LzGUJ/HrDXEMjsv2W48BWZIgf
         ARPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=l9skKGnLv3zvWPo0cEu0IOT8Qil4d78rBleQ4uPZQpo=;
        b=Wr1nJJSquOlZmqQKEa5cINegw8avvLN7mZqwP1z9+o9d6c6TkxEbUI6kD67Xhq2tYk
         mcV/rrOpxp9t0LUL0WtWuIxiJ/vhFd4hUiDIH14opbfFsRICj1y8YVudzMzjHpwpOXDU
         bRDcU6LQ9lq6iR6T8tSFrW107XBEhyIGNa0nSJqljUSc6b8tO9mL9t0FWGHccXMnK/V9
         ugJxNP4SsFbVSa3wms1DklZz5Vk98Cwme1BFAaamVgXHYCciuqd6AkiySpuE4bFlGntR
         UqihxLjAmOtvcyx5+i73XXNKOkMLmN0UPU/hcf951K7ZLpvjmPmxcbh8kS9kSUAsopOk
         btTA==
X-Gm-Message-State: AOAM531+eDKx7SrxtKKCNWZvkf78vp3ZkyPzAdNgWiP4Ql6E+kzz3Rpv
	JCPdhrIpavfQNawUc4QhF1HeBnREfnm+J6+F6dWEAQi42wc=
X-Google-Smtp-Source: ABdhPJx0M+0KsvdTm8/0hHfne3UxS2Y5muEicqfM94h4dxGH36Rbbs3GmZhpcCi+xrWr3DkEYdgDK+a7ajI6nTcH22Y=
X-Received: by 2002:a37:9307:: with SMTP id v7mr18375723qkd.257.1643201721455;
 Wed, 26 Jan 2022 04:55:21 -0800 (PST)
MIME-Version: 1.0
References: <20220125175655.GA14958@localhost.localdomain> <YfFBAVnpRJemuCed@xosc.org>
In-Reply-To: <YfFBAVnpRJemuCed@xosc.org>
From: Dominik Czarnota <dominik.b.czarnota@gmail.com>
Date: Wed, 26 Jan 2022 13:54:45 +0100
Message-ID: <CABEVAa2T604XknM=iC01OVRciWVCiTKJxuNS=RRtWhGpUWmwnw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000e6d76d05d67bb66f"
Subject: Re: [oss-security] pwnkit: Local Privilege Escalation in polkit's
 pkexec (CVE-2021-4034)

--000000000000e6d76d05d67bb66f
Content-Type: text/plain; charset="UTF-8"

Hi,

And many other binaries also do things incorrectly:
- https://grep.app/search?q=%3D%201%3B%20n%20%3C%20argc
- https://grep.app/search?q=%3D%201%3B%20.%20%3C%20argc&regexp=true

But most of them are not suid binaries and also do not perform a write into
argv[].

Cheers,
Disconnect3d

On Wed, 26 Jan 2022 at 13:52, Matthias Schmidt <oss-sec@xosc.org> wrote:

> Hi,
>
> * Qualys Security Advisory wrote:
> >
> > Qualys Security Advisory
> >
> > pwnkit: Local Privilege Escalation in polkit's pkexec (CVE-2021-4034)
>
> This was already mentioned in 2013 in a blog post, however, it seems the
> author didn't realize the consequences of their finding:
>
> https://ryiron.wordpress.com/2013/12/16/argv-silliness/
>
> Cheers
>
>         Matthias
>

--000000000000e6d76d05d67bb66f--
