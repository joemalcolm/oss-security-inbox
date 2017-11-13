X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["774" "Monday" "13" "November" "2017" "07:46:28" "-0800" "Anthony Liguori" "anthony@codemonkey.ws" "<CA+aC4kvjfSt0ijv_tUNRNNLzSh9-qhuC1X_tpzPVT0hU2iskRw@mail.gmail.com>" "26" "Re: [oss-security] (linux-)distros list use statistics" "^Date:" nil nil "11" "2017111315:46:28" "[oss-security] (linux-)distros list use statistics" (number mark "        anthony@code Nov 13   26/774   " thread-indent "\"Re: [oss-security] (linux-)distros list use statistics\"\n") "<20171113151047.GA23493@openwall.com>" ("<20171113151047.GA23493@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12268 invoked by uid 550); 13 Nov 2017 16:16:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17769 invoked from network); 13 Nov 2017 15:46:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=codemonkey-ws.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=R/S1zcVDCS7h61PzLgsqFcKCHyTxfHhFP7drTsSFvA8=;
        b=zbY7Q9TsBhk5gnc5oOuiL6XipvOvPUjb3YzCBDdus8KSjCR7Nsfov5wHbitHoWf8sh
         /Z52vDN3MhImoSbxDouCbMQ9GrAdWRL6IKtit+Z899pWwGbslNd3Wo0cMbtM/eHOjmJQ
         PE/Sx7jnwsjStUKVhF2bXgOJOJTKMYQPEhge2Y2gf2Y0u/sw92sFWUGfC5PmJMyix7En
         NrvHzM7N11LEhZUm2E6hO9T3oZBh9ILwev6nF6cA9zAbXnSDxGaEKieZrbAKXIn9+1uf
         pyRTwvgneZGv0/9xrS8/CZtRunhHBoxTj6yEa6hsWpDsZazPFVh2xQI6V2cmrOOOHfOV
         8F2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=R/S1zcVDCS7h61PzLgsqFcKCHyTxfHhFP7drTsSFvA8=;
        b=TZNDKs8qUrZkRr5VY4OGvNgcHNEkV+bAqjgUlQUgau3dW/CBJ5Ogdb2CpHCI3rkyaM
         lJ+Ko6TQsfkX5Sy+G+EbGoQZ9cMBsiv4BIZJ6Y8hcqrsiZW5TDaG9ueKmThU7uPElQkO
         cO5OrHiRsnWTy+SBJH2+PX7rYRArjjlHdxdHiwnYrIc1xXegKIUc3p6CYlMOhl4hHbyu
         9cNlA2MVFEFHTZMxYFMNr0Wy1Sv+OUpy8dIGnzzvVrnI1raMlqouwlTufp6CfhJl/lQb
         l/eAa71T6a2ltO2ESJo3/hwsfbJx6lMGmwpaDbK7sTNSj2dFOgDT9DX0SztnsLFoahGe
         Q58w==
X-Gm-Message-State: AJaThX4RUSSi0pJUCn/Hfrp2HYkz6+BiDFivIVxaPDg9W/Ng1oLVGZP5
	hSkyjG0x608W0pPfuHUUPf6QIOJ9XQ6QAuGoa3iJHg==
X-Google-Smtp-Source: AGs4zMZMdQS46U7RgVT9iHq1/NQZ7/kLhpVMEYXkOyE+4US+Nqd58uWIhXO4Zub40DVJ3gn93oCHCke5VVPGpzs2ncM=
X-Received: by 10.46.17.70 with SMTP id f67mr1599221lje.160.1510587988834;
 Mon, 13 Nov 2017 07:46:28 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20171113151047.GA23493@openwall.com>
References: <20171113151047.GA23493@openwall.com>
Message-ID: <CA+aC4kvjfSt0ijv_tUNRNNLzSh9-qhuC1X_tpzPVT0hU2iskRw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Mon, 13 Nov 2017 07:46:28 -0800
From: Anthony Liguori <anthony@codemonkey.ws>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] (linux-)distros list use statistics
To: oss-security@lists.openwall.com

On Mon, Nov 13, 2017 at 7:10 AM, Solar Designer <solar@openwall.com> wrote:
> Hi,
>
> I think it's time for Gentoo and/or Amazon to share with all of us the
> statistics they should have collected so far as per:
>
> http://oss-security.openwall.org/wiki/mailing-lists/distros#contributing-back
>
> "13. Keep track of per-report and per-issue handling and disclosure
> timelines (at least times of notification of the private list and of
> actual public disclosure), at regular intervals produce and share
> statistics (most notably, the average embargo duration) as well as the
> raw data (except on issues that are still under embargo) by posting to
> oss-security - primary: Gentoo, backup: Amazon"
>
> Please do.

Ack.

Regards,

Anthony Liguori

> Thanks,
>
> Alexander
