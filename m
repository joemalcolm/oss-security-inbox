Received: (qmail 32380 invoked by uid 550); 8 Nov 2022 19:49:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32166 invoked from network); 8 Nov 2022 19:48:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=h3G07AqDvIaNGL3+wJozN1h+ZEvSoFbDUggBzP6WK2o=;
        b=HJ0NaN+RYw89c/uvQqyVwGfrVfbCTeEq/GMJeF/LkRF3MwMnTE5ne0yYOziwsbDtLl
         X4usKOg6kkTPpQiL6/B12DeykDOxi/uE5FtZ5iORoZiqAC6iWc50SfU6J7ic9UkXz4+/
         vtaoSyQvnzJeXpAcoGBRgYd8ekTV+BkbUQm08HicaHhiIRyZQaxfNy7g2ffzZbdODgKU
         KWYUtQxpPEPTu1OW3EH4cizd+Hmf+iPoyfvUl9f4TpwvEKQNTlMaaewj9muuMjhqSSNi
         8Uk9yIwTPy/mcj2wT1nF7Hh2DoQSnQ7CwY+Tx+8zWJu7mtGpLqhcNPKHTVZEAKk/ZygV
         I8bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=h3G07AqDvIaNGL3+wJozN1h+ZEvSoFbDUggBzP6WK2o=;
        b=Hs0eGT2PtIjZqxBXGGNgUjtenRTyhZPnk1HJGp/l67JIGh22RhXTx0mvgWxhax0trr
         hlkx/uFwOxxwjWHSYZ6tH3GLrTmqZ1VQBCiLTE0CSr7F0DS7V10W6Fqt51OJJN352fmc
         +Zvb31DpsKK/1sn61PMEiMmnSdwLXmKWVXVqyX6jLKzH5/iykv8TXlAltbu4cbEH87Kj
         Ffl3TZdP/7hzfa2bog3CvTlcsbhgAvcRHCVJgl1QUhSwHsPeQps+otTsvBerXpPmAHdq
         7rQBZZ6+aeDQICTIYQlzBs5XsuInnmwqyVU3XK6LgwpFAwt/Bn1OZs7MwLIPrfg1MOWd
         msvw==
X-Gm-Message-State: ACrzQf20EgwPcnU5ZWXmSj339A239xJFWc2pLDRthSdutewSdgTi7o3P
	9lXQ0n6XyRlGJ352gydethPQaYMXIBvVIJ04L4xdxj8fBcWsWw==
X-Google-Smtp-Source: AMsMyM7xi1s0a9k4muuAtpdUYPSDpwxFI4xCiUIB0PYNPuAeiR1knrxFSkiQV2UYSL2EKq55G48gR5liSKxaYxt+a78=
X-Received: by 2002:a17:903:40cb:b0:187:1d3:461a with SMTP id
 t11-20020a17090340cb00b0018701d3461amr55904916pld.155.1667936870297; Tue, 08
 Nov 2022 11:47:50 -0800 (PST)
MIME-Version: 1.0
References: <AM8PR05MB8115844B28815B6FC4FFEA2D8C3C9@AM8PR05MB8115.eurprd05.prod.outlook.com>
In-Reply-To: <AM8PR05MB8115844B28815B6FC4FFEA2D8C3C9@AM8PR05MB8115.eurprd05.prod.outlook.com>
From: Adam Reynolds <adamajreynolds@gmail.com>
Date: Tue, 8 Nov 2022 11:47:40 -0800
Message-ID: <CAEF3R_5ojvtyejQHGAuJXQ96xDZ3zq9H9Tm8nyh1NxN+1z2UAg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] CVE-2022-2602 - Linux kernel io_uring UAF

On Mon, Nov 7, 2022 at 7:30 AM John Smith <smitchj013@outlook.com> wrote:
>
> Hello.
>
> Do anyone try this PoC? On my side it's not working on 5.4, 5.10 and 5.15 with KASAN on. KASAN is quiet.  Any ideas?
>
> 27.10.2022, 21:05, "Thadeu Lima de Souza Cascardo" <cascardo@canonical.com>:
> > On Tue, Oct 18, 2022 at 01:59:51PM -0300, Thadeu Lima de Souza Cascardo wrote:
> >
> >     Sorry about posting this late, but here it is.
> >     poc.c
> >     Cascardo.
>

I ran this against both 5.15.68 and 6.1-rc2 and did not see this, only
a memory leak reported by asan:

adreynol@ADAM-HOMEDESK ~> sudo ./uaf_iouring

=================================================================
==182==ERROR: LeakSanitizer: detected memory leaks

Direct leak of 120 byte(s) in 1 object(s) allocated from:
    #0 0x4cfa97 in __interceptor_malloc
(/home/adreynol/uaf_iouring+0x4cfa97) (BuildId:
2e78344ef59fbab75b1384f5e47ad697da629367)
    #1 0x512dac in main (/home/adreynol/uaf_iouring+0x512dac)
(BuildId: 2e78344ef59fbab75b1384f5e47ad697da629367)
    #2 0x7fb49165150f in __libc_start_call_main
(/lib64/libc.so.6+0x2950f) (BuildId:
85c438f4ff93e21675ff174371c9c583dca00b2c)

SUMMARY: AddressSanitizer: 120 byte(s) leaked in 1 allocation(s).
