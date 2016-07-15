X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["610" "Friday" "15" "July" "2016" "08:12:10" "+0800" "Anonymous" "ihunan@gmail.com" "<CABBnxRbnOo12JO-n6ydrYROkXqU2cR-ifw7LQtuiWJy-NAQrwA@mail.gmail.com>" "21" "Re: [oss-security] CVE Request: libgd: Out-Of-Bounds Read in function read_image_tga of gd_tga.c" nil nil nil "7" "2016071500:12:10" "[oss-security] CVE Request: libgd: Out-Of-Bounds Read in function read_image_tga of gd_tga.c" (number mark "U       ihunan@gmail Jul 15   21/610   " thread-indent "\"Re: [oss-security] CVE Request: libgd: Out-Of-Bounds Read in function read_image_tga of gd_tga.c\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30187 invoked by uid 550); 15 Jul 2016 02:02:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17488 invoked from network); 15 Jul 2016 00:12:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:cc
         :content-transfer-encoding;
        bh=BJKEzrCPZgvCp650qaImfoAixrhgzyhvMBhj1BQoNOU=;
        b=nBW5H8/0FGrP/gg6j4r1+3y6WEcEqg8oJJUPeQFwuX2xTGXDZ0LXU11fHbeLy7s1qa
         CAUMca9/Zjp0mhsPYorRYGxaEeKZYN0ng2LH09FKiwphaKdcGqAtF7lbaHoj0nIJcdhu
         SuMzBVz5yUGM9/lGCDSLoFGt4SIDIBaYVJ+dSaZWF4GDJT18cFdHbIO5DCjIR7ejSV1p
         U+Wo6xeldykEoE2Kcfabm/+pp80a+VnvIRZ4PKFS+/44hu8oDrhU9xiV1p6YRHfMR/2z
         cOnEs/7JWLdhtKhaVT1j8mCpDxGoMpdrx03xIs3VZQMw6evI6VbHuKKSYYSb0/V1TEsD
         5khQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :content-transfer-encoding;
        bh=BJKEzrCPZgvCp650qaImfoAixrhgzyhvMBhj1BQoNOU=;
        b=RXntFwwIXuuDtrTLp0lSbNPaV0YtDTcVN5BuKqn0lCXumnGmlSc/gu3aJ08jL+mdyI
         njSfFrFBBsWXYKpCfwe+kcPOl4lG9v5XP39R3N8Qu5F0xxUpqSlsykhdCXq6keIEWrHg
         Br/GxvaV9krjVVM28lur34MO9OtkhB1NhAxYOUbBelUFgJ4roLRqRsr+W5Fks5cxOtpH
         +LFfEXICcxEa5JQCytMEUIt2LbhFBqqUWod7jgJsL6dJWADIwQqkv7Td2NGSao4tJeGR
         jTvxy4MjFNm9SDkwFxBKryLYqZa1JvUMRaGhEjNOwb++YezFfDX2aR61Qdem2kYpr7jc
         AS+g==
X-Gm-Message-State: ALyK8tJxbH59lFFFiJuuK1M/L4kMSZ7IruGzo0Tdp4xsuP7vc5Fe+O+Qt4c1vrjT4NpinBSLMTHQEcZ0Yw6euw==
X-Received: by 10.31.114.203 with SMTP id n194mr8437054vkc.55.1468541531039;
 Thu, 14 Jul 2016 17:12:11 -0700 (PDT)
MIME-Version: 1.0
From: Anonymous <ihunan@gmail.com>
Date: Fri, 15 Jul 2016 08:12:10 +0800
Message-ID: <CABBnxRbnOo12JO-n6ydrYROkXqU2cR-ifw7LQtuiWJy-NAQrwA@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] CVE Request: libgd: Out-Of-Bounds Read in function
 read_image_tga of gd_tga.c

Fixed via https://github.com/libgd/libgd/commit/3c2b605d72e8b080dace1d98a6e=
50b46c1d12186
And cc cve-assign explicitly.

2016-07-12 15:08 Salvatore Bonaccorso <carnil@debian org>:
> Hi
>
> Another issue was reported in the libgd issue tracker, an
> out-of-bounds reads in read_image_tga in gd_tga.c:
>
> https://github.com/libgd/libgd/issues/248
>
> Pull request: https://github.com/libgd/libgd/pull/251
>
> Upstream issue contains a reproducer for the issue and Ond=C5=99ej Sur=C3=
=BD
> confirmed that this is not a duplicate of issue #247. Could you assign
> a CVE for this issue?
>
> Regards,
> Salvatore
