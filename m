X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["867" "Tuesday" "25" "October" "2016" "12:13:44" "-0700" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFkJFCUiOb+S46jM87qundu4rYO1QhxQ85KJHb_zKVOggzQ@mail.gmail.com>" "22" "Re: [oss-security] Re: jasper: memory allocation failure in jas_malloc (jas_malloc.c)" nil nil nil "10" "2016102519:13:44" "[oss-security] Re: jasper: memory allocation failure in jas_malloc (jas_malloc.c)" (number mark "U       taviso@googl Oct 25   22/867   " thread-indent "\"Re: [oss-security] Re: jasper: memory allocation failure in jas_malloc (jas_malloc.c)\"\n") "<20161023010359.42F65336005@smtpvbsrv1.mitre.org>" ("<2510502.0NpgWQPfkR@blackgate>" "<20161023010359.42F65336005@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13830 invoked by uid 550); 25 Oct 2016 19:14:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13810 invoked from network); 25 Oct 2016 19:14:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=jc321GZSXpUSr1B6ztTT41ufe01ZO6V60yGbBJRBODo=;
        b=Xb9BUfQ0d17HwmgweiARjN/F5RjnyYjoTDRDwJNpE6Y3DP75kZ2chSV926BLd2IVjd
         X+h34GbC2gTTNR2k47YDa/wdW8czVbdINah/eTtv6mzb11/ECrgIITBxzK6zwu1Af7i1
         X6wj8VSveYGcs9VXdObQkM2zfz1JBY9q1nxIAkudh+qUbY8EfmqjnYrY5ELhFIdot+zr
         gJQAgDDKADL1Dx/6mxR4sfDOp4KL2cPvHl937WmII33FcnS/ooztY4fdcMZYHm+Sx9qn
         dX5+R6GIsyfVpn0/cfRUTaQ5SZp0TLsieqdDZxz7az2DwFOFpJMu+bHEAAYLg3x8mLWO
         ihbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=jc321GZSXpUSr1B6ztTT41ufe01ZO6V60yGbBJRBODo=;
        b=jhbK1wXF5xunELemAUiMAkBPftCZPs0GAdrToqp3UVdR9VSponMVca1ZD1tAHdxiVW
         dSUIVYm+fp6CD+K1BulqQJrmREohdgmJE9sPJX8ojTGIbbAO+xOTg51BOS1W/gNdLutq
         n0ADCb/3ec8+YIldkNzyYBNKP/z90TFamNwXOEPzQ2ucp5oy/3HMZbiJJYo5DBM9yGaY
         z5ilpGqb1kvoviu0nM6YFhsOiRMmNB8MYE5mDpI/yFik65/dm2SVgt9t/OEjIDRarJlP
         dUrmGoEwkxBVWIc6Q7ev9im7eKj8gTv7/rD8mx6bXL5aYRoQImOao/kYn21dPjVCVqLK
         Xnow==
X-Gm-Message-State: ABUngvcttgw6XzYWUGQRucdJbK5e8SAnsngZhgX2B+rUyTCrBh1HFS/JXBqeqZ3/sigad6Tsga0dqxeKcsSnpvAl
X-Received: by 10.55.177.5 with SMTP id a5mr20486570qkf.153.1477422844504;
 Tue, 25 Oct 2016 12:14:04 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20161023010359.42F65336005@smtpvbsrv1.mitre.org>
References: <2510502.0NpgWQPfkR@blackgate> <20161023010359.42F65336005@smtpvbsrv1.mitre.org>
From: Tavis Ormandy <taviso@google.com>
Date: Tue, 25 Oct 2016 12:13:44 -0700
Message-ID: <CAJ_zFkJFCUiOb+S46jM87qundu4rYO1QhxQ85KJHb_zKVOggzQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: ago@gentoo.org, Assign a CVE Identifier <cve-assign@mitre.org>
Content-Type: text/plain; charset=UTF-8
Subject: Re: [oss-security] Re: jasper: memory allocation failure in
 jas_malloc (jas_malloc.c)

On Sat, Oct 22, 2016 at 6:03 PM,  <cve-assign@mitre.org> wrote:
>
>> https://blogs.gentoo.org/ago/2016/10/18/jasper-memory-allocation-failure-in-jas_malloc-jas_malloc-c
>>
>> AddressSanitizer failed to allocate 0x1000002000 bytes of LargeMmapAllocator
>>
>> 0x7f4f0474e170 in jas_malloc ... jasper-1.900.5/src/libjasper/base/jas_malloc.c:117:9
>> 0x7f4f04764b4f in bmp_getinfo ... jasper-1.900.5/src/libjasper/bmp/bmp_dec.c:297:25
>
> Use CVE-2016-8886.
>

I'm not sure I understand the concern here. Isn't it usually expected
that the administrator configures appropriate ulimits, and the code
should just handle allocation failure gracefully?

If we are considering *not* implementing arbitrary hardcoded limits a
security problem, that seems like a significant change in software
design philosophy (I've heard it called the zero-one-infinity rule
before).

Tavis.
