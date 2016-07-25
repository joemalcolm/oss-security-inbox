X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["723" "Monday" "25" "July" "2016" "12:16:54" "+1000" "Wade Mealing" "wmealing@redhat.com" "<CALJHwhQrJUeWwJ6u=kQ_=LU5AGMgQoN_rEE4rGieMwe+JspG2A@mail.gmail.com>" "28" "Re: [oss-security] Re: CVE-2016-5400 - linux kernel: denial of service in airspy USB driver." "^Date:" nil nil "7" "2016072502:16:54" "[oss-security] Re: CVE-2016-5400 - linux kernel: denial of service in airspy USB driver." (number mark "        wmealing@red Jul 25   28/723   " thread-indent "\"Re: [oss-security] Re: CVE-2016-5400 - linux kernel: denial of service in airspy USB driver.\"\n") "<20160725011319.GA17899@kroah.com>" ("<CALJHwhS5Qin0-snXT458ARcXDPTHAdpsS3ax1CCPFdWSeLeLAQ@mail.gmail.com>" "<CALJHwhSoHKvrNxFbYL4HJk4GtxHxaetQWBZQQf8ROVYqm+N=dg@mail.gmail.com>" "<20160725011319.GA17899@kroah.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 8069 invoked by uid 550); 25 Jul 2016 02:17:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 8047 invoked from network); 25 Jul 2016 02:17:06 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=EodJvolLdBzJb23M1qQuK+hbTFT6Q/lUDTysGfEtOzY=;
        b=UMbsFFXQrPIccebpOdAcRE+Wts8acPMiRLOfaYAKs0cICEY9hYDyO9RyrX2w2v+5ji
         t5LWaPK5qbMAT8yeNLYZmiU7L2OTq3M5/Q0UGu6sYurcxxmFHWd1uKtWNOearA7th12h
         nGinFIVcwsA+KZD3PXaVKJR/aCH88HQq0f9W4Py9F6C+LyANjBAuyr4J1CLK6XMDOYdu
         9ZJUuwZWKZZy/OhyAkpFguDaXOTo/yG3O7wpbztzuFyRI+eoL/6sfVuFY1tGFHrFdsol
         gm+DMCZuM53hGEnbwWxxSoVOjVPkgg7KLtbVwsKRRr6/IsU0L2PGwoVqZJWVSqu+KX8i
         otRg==
X-Gm-Message-State: AEkoout6eUpoG1O3Pkd3cO+lL/wLBzr8RD9c0t3OxQHSo1qj6tVrRi7ooplcWefMjguQf5qxLX5pmcZjHx6JWuB6
X-Received: by 10.107.53.34 with SMTP id c34mr19032797ioa.60.1469413014857;
 Sun, 24 Jul 2016 19:16:54 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160725011319.GA17899@kroah.com>
References: <CALJHwhS5Qin0-snXT458ARcXDPTHAdpsS3ax1CCPFdWSeLeLAQ@mail.gmail.com>
 <CALJHwhSoHKvrNxFbYL4HJk4GtxHxaetQWBZQQf8ROVYqm+N=dg@mail.gmail.com> <20160725011319.GA17899@kroah.com>
Message-ID: <CALJHwhQrJUeWwJ6u=kQ_=LU5AGMgQoN_rEE4rGieMwe+JspG2A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Mon, 25 Jul 2016 12:16:54 +1000
From: Wade Mealing <wmealing@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE-2016-5400 - linux kernel: denial of
 service in airspy USB driver.
To: oss-security@lists.openwall.com

> Any reason why this isn't tagged for a stable kernel release?

Patch was sent to airspy maintainer by James Patrick-Evans (The flaw
submitter) on July 17th.  I have no control over maintainers.

LKML process is likely best kept off list.

Thanks,

Wade Mealing

On Mon, Jul 25, 2016 at 11:13 AM, Greg KH <greg@kroah.com> wrote:
> On Mon, Jul 25, 2016 at 10:51:16AM +1000, Wade Mealing wrote:
>> Hit send too early,
>>
>>
>> Upstream patch:
>> https://git.linuxtv.org/media_tree.git/commit/?id=eca2d34b9d2ce70165a50510659838e28ca22742
>>
>> Maintainer has yet to send to LKML.
>
> If it's in the media tree, it doesn't go to lkml.
>
> Any reason why this isn't tagged for a stable kernel release?
>
> thanks,
>
> greg k-h
