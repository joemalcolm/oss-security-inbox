X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["409" "Thursday" "28" "October" "2021" "06:24:24" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" nil "14" "Re: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2021-0006" nil nil nil "10" nil nil (number mark "U       carnil@debia Oct 28   14/409   " thread-indent "\"Re: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2021-0006\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2021-0006" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14210 invoked by uid 550); 28 Oct 2021 04:24:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14189 invoked from network); 28 Oct 2021 04:24:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=TUcrzFx0ltaaTJrhRBzbfkDdEdmuiFATf8Uy94r1TjM=;
        b=NwKnBhoVnB8K8dpBb7osF4IfyBIC11+8YYuaA4nffOAyFK8x7SpxsTiC38RVvSplLr
         YfCBI0IONaJOe9s51fAiyCZd6MG0vv3XLacpAxQcuSTSCvdKjgOCMb2YTPL6LHq9zHVo
         5+7TO+UX7ECb0yrhH7GPE3gVvUEfptQmkISjtItfZK+piC5MR0LDDkqT9G/GnHDk9gI7
         r0F/H3X5DOA0e6yolDXfk04ol+00cljUcAMhs4IfL8TfjQ/4A997wQG4uOqxGo59XB2J
         zTHpMbOlgEnqlqLfVd6Azk70FT1+e/nB6ECTDmTrvo6VsDWu9j9qicdRVxvLz2XAb/25
         5VtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to;
        bh=TUcrzFx0ltaaTJrhRBzbfkDdEdmuiFATf8Uy94r1TjM=;
        b=NfO1hiWUM11paiZb1lu5egLqP5nSTODtU0sUSLpEIRQvsKF3rZY66BzVA7EGLiMdH9
         RQ8GyUeQ7ITjiw9UjwG/usz/OoMVGcRjR9eP7J8wJY4fBnbkzBcWYVpKodiIxu/WET/r
         uc1nUWT1t9cvhK7c1b1zyoJMvOuuvH/vTxPwoQyZdk/1kD7an8N9xb0a1xA0l+5NTOI1
         xuDfryybNhYtVqzy1vBoG2nvndxjZalvF2/UluDvafUkcVJw5eZ9LGcfyzU9IHHuKOTQ
         mFXGA0oO8A5rLG+/v/ipyAlmXm1xIKGNxRjmxKJWGW0q/VqT6m30GGFnttXf7giiIA3v
         wgOQ==
X-Gm-Message-State: AOAM532HhrUxgpvfWj1ii9CrSfbAspOQMVvJtz+zzvaoGBeB1dPnpsco
	Moox7ENN7FBwUggAOBBysvs=
X-Google-Smtp-Source: ABdhPJwwwjBwa8E48NdsNr1r8a6fmoVoC4fRy2X3s/vFemQnDN4ZasvA5POzHeS0MdU+oaY75LeBDA==
X-Received: by 2002:aa7:d697:: with SMTP id d23mr2912818edr.152.1635395065045;
        Wed, 27 Oct 2021 21:24:25 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Thu, 28 Oct 2021 06:24:24 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: Samuel =?iso-8859-1?Q?Gro=DF?= <saelo@google.com>
Cc: Francis Perron <francis.perron@shopify.com>,
	oss-security@lists.openwall.com,
	Carlos Alberto Lopez Perez <clopez@igalia.com>, security@webkit.org,
	Alberto Garcia <berto@igalia.com>
Message-ID: <YXol+JUnMvgDcDJ+@eldamar.lan>
References: <03eb1900-5593-09ff-8814-008632c46c5c@igalia.com>
 <YXjQiwOj3gF/phTC@elende.valinor.li>
 <CAJAmgfgpTF--5HsAaWrmWaoM5dHswtdNB2==gUdhSCiDYG6X+A@mail.gmail.com>
 <CAMyKh9dsqQfJQ1-aTomc_Ou3q3_m0iofZtuAwxPaFrm0mi4B1Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAMyKh9dsqQfJQ1-aTomc_Ou3q3_m0iofZtuAwxPaFrm0mi4B1Q@mail.gmail.com>
Subject: Re: [oss-security] WebKitGTK and WPE WebKit Security Advisory
 WSA-2021-0006

Hi Samuel,

On Wed, Oct 27, 2021 at 04:40:55PM +0200, Samuel Groß wrote:
> Hi!
> 
> I don't know what happened to CVE-2021-30851 as these CVEs are allocated by
> Apple usually. I think the CVE would correspond to this issue though:
> https://bugs.webkit.org/show_bug.cgi?id=227988

I pinged now product-security@apple.com as well on this (as Apple Inc
is the responsible CNA for the CVE).

Regards,
Salvatore
