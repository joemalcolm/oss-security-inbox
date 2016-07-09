X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1390" "Saturday" "9" "July" "2016" "12:35:27" "-0400" "Glenn Randers-Pehrson" "glennrp@gmail.com" "<CA+PdXcs3nHUMs8cnF_XMNOOq7_yARB_qK_6kr4bufvgRYFUySA@mail.gmail.com>" "42" "Re: [oss-security] On anonymous CVE assignments" nil nil nil "7" "2016070916:35:27" "[oss-security] On anonymous CVE assignments" (number mark "U       glennrp@gmai Jul  9   42/1390  " thread-indent "\"Re: [oss-security] On anonymous CVE assignments\"\n") "<CA+PdXcs2t_Jj2m+jx9Q2TbfstaX_PijmfYEcJm=LZMk-Xy4m0g@mail.gmail.com>" ("<CAEsznC46-6Z7vLuP2FDuNVATcOkGV8jERu8q059AFaP=TjusPA@mail.gmail.com>" "<CANO=Ty3S0SmpoUVj5ZiQL9RF99PL7Kxt4SpDJQt2D_1SDwQmsw@mail.gmail.com>" "<CA+PdXcs2t_Jj2m+jx9Q2TbfstaX_PijmfYEcJm=LZMk-Xy4m0g@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5785 invoked by uid 550); 9 Jul 2016 16:35:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5765 invoked from network); 9 Jul 2016 16:35:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=XYw+ZHNGEOQlzhP46ranld/aYEHfH39YbGxm/8sgEaU=;
        b=hGRLn46mqea640p6sW4dLOjJeMikt9Dwxgvdxb9IbkXWnF+AbXg96zqarh9PjC3BUs
         5KO6Qo//7iBiOAoR098E3tWGrC4bh+hxYEwwdA9XBtInvpwVKDdUjLfOhlAvfuMm7M0R
         d3hRyAinbwNiabAxECXeQLeY3tHWE+RrQMghIrfYMADyjJrQO37z+9O8QQ/dREYRei/M
         Lmtjecu+gs+Ahr5kq9Zv0Tvr+9h/AUHUmNhNSDFao3b0AUd3s0YzhhfXOnPY8bFm7Xlw
         eT275R5VCMbkgauXkJnrixKn8C0NiOUj8Kk6jS/WOphZe1fLJIZlg0MCdCgH1R0kUgyY
         Xzxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=XYw+ZHNGEOQlzhP46ranld/aYEHfH39YbGxm/8sgEaU=;
        b=Vewj9zDbyFWtzbRxJX0TtJSKt8OAgSonv2u0fxM4DyYMPou6ZsO8+57G0Y0uBR84zW
         i42Ta5KirqesktEzsPyVPX7KWaOUVM5nod0Ep9tr+24iLag5xLvr9Zik8AlQaiRB3sAT
         qwhiUA5rvZjN8VIPP98xrMrPPHoTyowt2HaIYlrue/wJCdh3aRLpiSns3z4R4eo3NYuZ
         64suGzSm6ofgTJYslsoNj7mTW1zWpbQZJdU3yjcCkIsdA4wvhjMF3z4iNgZXTfucLtL3
         csj1EaiSc+KXFMhYiTyNshIv0W9CM5IN1VgtOtGeXopfpzpON2ZoDkEXG8MWch2hkLc2
         ee9g==
X-Gm-Message-State: ALyK8tIFFZqfFLywuUQAJjELwJmfA3dz0erBrbm/ftAEHU4WyO3I1BHbB5QQKHnz/tDBz9JCHrJWMkZN8SLP9g==
X-Received: by 10.107.155.145 with SMTP id d139mr14249180ioe.36.1468082128322;
 Sat, 09 Jul 2016 09:35:28 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CA+PdXcs2t_Jj2m+jx9Q2TbfstaX_PijmfYEcJm=LZMk-Xy4m0g@mail.gmail.com>
References: <CAEsznC46-6Z7vLuP2FDuNVATcOkGV8jERu8q059AFaP=TjusPA@mail.gmail.com>
 <CANO=Ty3S0SmpoUVj5ZiQL9RF99PL7Kxt4SpDJQt2D_1SDwQmsw@mail.gmail.com> <CA+PdXcs2t_Jj2m+jx9Q2TbfstaX_PijmfYEcJm=LZMk-Xy4m0g@mail.gmail.com>
From: Glenn Randers-Pehrson <glennrp@gmail.com>
Date: Sat, 9 Jul 2016 12:35:27 -0400
Message-ID: <CA+PdXcs3nHUMs8cnF_XMNOOq7_yARB_qK_6kr4bufvgRYFUySA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a11402d02c287ae0537368139
Subject: Re: [oss-security] On anonymous CVE assignments

--001a11402d02c287ae0537368139
Content-Type: text/plain; charset=UTF-8

On Fri, Jul 8, 2016 at 3:43 PM, Glenn Randers-Pehrson <glennrp@gmail.com>
wrote:

> *CVE*-*2016*-*3751*(H)
>
> On Fri, Jul 8, 2016 at 9:55 AM, Kurt Seifried <kseifried@redhat.com>
> wrote:
>
>> Also if projects don't like "Surprise" CVEs one way to deal with that is
>> to
>> request the CVE's themselves when they know something is a security
>> vulnerability. Also making it easy to contact them helps, the harder you
>> make it for a security researcher to deal with you, the less likely they
>> are to.
>>
>
> It's hard to do that when a "surprise" CVE was never sent to the project,
> for example  *CVE*-*2016*-*3751*(H) which just appeared in an Android
> security
> bulletin.  It claims that libpng has a bug that allows privilidge
> escalation
> and was reported 3 Dec 2015. I'm guessing that it is a duplicate of
> CVE-2015-8126 or CVE-2015-8472, but it's hard to tell for sure without
> seeing it.  All I've been able to find out is that it is a "reserved" CVE,
> with
> no clue as to who reserved it.
>

I still haven't seen the CVE, but it seems that it is a report against a
fork of libpng, that had fallen several years out-of-date, and the CVE
is just a private catch-all for updating the fork to current libpng status.


> Glenn Randers-Pehrson
> libpng custodian
>
>

--001a11402d02c287ae0537368139--
