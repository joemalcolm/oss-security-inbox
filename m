X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["877" "Sunday" "31" "October" "2021" "15:50:22" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" nil "24" "Re: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2021-0006" nil nil nil "10" nil nil (number mark "U       carnil@debia Oct 31   24/877   " thread-indent "\"Re: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2021-0006\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2021-0006" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25751 invoked by uid 550); 31 Oct 2021 14:50:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25733 invoked from network); 31 Oct 2021 14:50:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=AOlXOhiF2y5fE0UQECUGN48F73XZChCZkY7Qny3ZY80=;
        b=iCFcHAiWgI4WhoufnbqXCwjF+X1bQLbgKea0DnhTG1xaJBfIjUYBbhpAHIdQ266xrM
         s+3E71QvMo6BNfBgpQ+4QQrs+zuvMrrLTe7xJh/2+6FHd5Hr0mts1YH1Lv/xY1BxnLQ/
         yC0StFiY+2z+Ok4nB0Idk3w7Bx+0C1Z4xh7tgSNFQRw8HKoTIbEY7Bp2t/tqsHyUSgEO
         YNodnMQVnPqFAsQEeTujjZaOt3YxtY+v82Bo9X5c1CVaJ2fNfUZtRupgK5U75yYPPlbC
         XiwuTZPeu35P6RSm6YlG6p5Kx5PMgCztyPzQnzzW1ZNKgidUFmDpFEsoCIzD1fk8hbnM
         mATw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to;
        bh=AOlXOhiF2y5fE0UQECUGN48F73XZChCZkY7Qny3ZY80=;
        b=kMMI1yHTtSybJ6kFICSCCDYt8iDAyrQF6W2pp+qAp+9I5XDNYAfDM5+lUkPE+EL4ZE
         af1y1yQ7CAn/cPr64hiOpaZArT8VPKq2WuzPeahBo1dbTkzQ+q7QqfXgYr6HYsD1f//S
         9R972nB80IIGdcNaG5/aJ4fhw6LZcqNfKvivNO2piOnbR97BGOF6m5UWWIgoOcJV3Qsf
         Df7UJRnYzvb1Q8EV05DbbDDN9u53qVhr+iCMsZiNDREG0ZpzDQnKI3nA8A4Z3pQPh/Bu
         CVoVo09GgdA7Tv1YNYDFCwQJBI2PrNzOTMF3mO5g8l6W/ZBmpwPk1LZ2g5pbOryrGGJB
         KY5g==
X-Gm-Message-State: AOAM530yY2Vd6sJ4krM/3uj1ZTGZfxl1dGP+nv5l9Gx3UE4nkrVtf9BL
	MKg88a+U1Ikl6y4uB8dUoVM=
X-Google-Smtp-Source: ABdhPJwXeH3/AfwkmsAnofJ6ptSG079FDvqwHF60nj22TyZ2hGlcM9pE52kXgI1V/l+lOsuFNp8Hkg==
X-Received: by 2002:a17:906:e0cf:: with SMTP id gl15mr1848225ejb.448.1635691823247;
        Sun, 31 Oct 2021 07:50:23 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Sun, 31 Oct 2021 15:50:22 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Cc: Samuel =?iso-8859-1?Q?Gro=DF?= <saelo@google.com>,
	Francis Perron <francis.perron@shopify.com>,
	Carlos Alberto Lopez Perez <clopez@igalia.com>, security@webkit.org,
	Alberto Garcia <berto@igalia.com>
Message-ID: <YX6tLtG34BETJzoE@eldamar.lan>
References: <03eb1900-5593-09ff-8814-008632c46c5c@igalia.com>
 <YXjQiwOj3gF/phTC@elende.valinor.li>
 <CAJAmgfgpTF--5HsAaWrmWaoM5dHswtdNB2==gUdhSCiDYG6X+A@mail.gmail.com>
 <CAMyKh9dsqQfJQ1-aTomc_Ou3q3_m0iofZtuAwxPaFrm0mi4B1Q@mail.gmail.com>
 <YXol+JUnMvgDcDJ+@eldamar.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YXol+JUnMvgDcDJ+@eldamar.lan>
Subject: Re: [oss-security] WebKitGTK and WPE WebKit Security Advisory
 WSA-2021-0006

Hi,

On Thu, Oct 28, 2021 at 06:24:24AM +0200, Salvatore Bonaccorso wrote:
> Hi Samuel,
> 
> On Wed, Oct 27, 2021 at 04:40:55PM +0200, Samuel Groß wrote:
> > Hi!
> > 
> > I don't know what happened to CVE-2021-30851 as these CVEs are allocated by
> > Apple usually. I think the CVE would correspond to this issue though:
> > https://bugs.webkit.org/show_bug.cgi?id=227988
> 
> I pinged now product-security@apple.com as well on this (as Apple Inc
> is the responsible CNA for the CVE).

I did not got a reply but apparently the CVE entry got re-populated
at https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-30851 and
now reads as "A memory corruption vulnerability was addressed with
improved locking. This issue is fixed in Safari 15, tvOS 15, watchOS
8, iOS 15 and iPadOS 15. Processing maliciously crafted web content
may lead to code execution."

Regards,
Salvatore
