X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["949" "Saturday" "22" "April" "2017" "20:03:32" "+0800" "Xiaobo Xiang" "xiangxb2112@gmail.com" "<CAHHvYcojhqfj_naXXv=qiQhXLMGFP2+EOostc9ff0yhbt4ZgWA@mail.gmail.com>" "31" "Re: [oss-security] CVE Request: podofo: stack overflow in PoDoFo::PdfParser::ReadDocumentStructure(PdfParser.cpp)" "^Cc:" nil nil "4" "2017042212:03:32" "[oss-security] CVE Request: podofo: stack overflow in PoDoFo::PdfParser::ReadDocumentStructure(PdfParser.cpp)" (number mark "        xiangxb2112@ Apr 22   31/949   " thread-indent "\"Re: [oss-security] CVE Request: podofo: stack overflow in PoDoFo::PdfParser::ReadDocumentStructure(PdfParser.cpp)\"\n") "<7429505.9S0h3zJD4P@arcadia>" ("<CAHHvYcpseXiQc73gQqrb3Eumt05=8Chd9Nfv1qooVkMxON-RtQ@mail.gmail.com>" "<7429505.9S0h3zJD4P@arcadia>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1943 invoked by uid 550); 22 Apr 2017 12:18:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23870 invoked from network); 22 Apr 2017 12:03:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=n7dVObxM4C+uO5vJjCVhRnlQHQKcC2cXyJ3xz/1Y1nw=;
        b=EnBu7oYVhk4cqYrfg93PA3NgnueJy3oWccZ40ymGnIkgi5WYRIRIL5SCbFRoqbw49a
         sW2ldxfaMylPu7DZ9ZQrf94n1LJnAWImbUDa6Q4RK71/7RzL72QnSaMmOUbZDCijrJPJ
         DqZK+TFpTxmKDewJYSzXCaW6eVhzhuwMhSsfGK+8C/OP+zsgs0dTXBjExW/yLwNsa+0r
         /HL8zZpOKGPsnikm2+puDZVynyUyimCX0Dk6O9oG131/5gh63HN+nuoqSYfWbit6PgSy
         FoU+djrsIMtloXqS+ViX0Wg1DEVA7yfwdvbNmEDIQZw+r3bCDTej/qVfKGv38a92BzT4
         8QlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=n7dVObxM4C+uO5vJjCVhRnlQHQKcC2cXyJ3xz/1Y1nw=;
        b=mO0u4i+YuH3uUdD3SyvS04BpOcka5gWQow13LTmMN5jStvSZF5XRWFXuV5ElpPZ23D
         hy/Dq6fF3qDSJTIW/1N1MvDmo6skbtbJkYvd9BQIkhQXUpMIFdHOqfxPlCqJkcM60CCH
         +xRr9teP6Z49HeUTP4TxGzDXvzx3UsskHRxe8xFSX1EYECqtTyYd/XxgMLcZeotDyhQI
         R2L8BYXk06QtbGcKL0baTQArYCODp0XZymYIEpMfyUop25h+2Wku4oUA4i/zpEp5RHJl
         Ovj+7V7VjJp2v//YgYkSsdKsJ7t4aY2A3Iv5K1cy+iIFPh2sbcX0NihmPe81WkLQRlD0
         A2+Q==
X-Gm-Message-State: AN3rC/66jBHni8pKX9sHkTjF+UiBAbCbaIs+b91hPzctSn5zusW9oNtc
	p4ILfk+1Yi0K0ZAbTO3o/IBAFSIevg==
X-Received: by 10.157.19.40 with SMTP id f37mr9858497ote.212.1492862613464;
 Sat, 22 Apr 2017 05:03:33 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <7429505.9S0h3zJD4P@arcadia>
References: <CAHHvYcpseXiQc73gQqrb3Eumt05=8Chd9Nfv1qooVkMxON-RtQ@mail.gmail.com>
 <7429505.9S0h3zJD4P@arcadia>
Message-ID: <CAHHvYcojhqfj_naXXv=qiQhXLMGFP2+EOostc9ff0yhbt4ZgWA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a113d0a6ac62c71054dc029ac
Cc: oss-security@lists.openwall.com
Date: Sat, 22 Apr 2017 20:03:32 +0800
From: Xiaobo Xiang <xiangxb2112@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: podofo: stack overflow in PoDoFo::PdfParser::ReadDocumentStructure(PdfParser.cpp)
To: Agostino Sarubbo <ago@gentoo.org>

--001a113d0a6ac62c71054dc029ac
Content-Type: text/plain; charset=UTF-8

Hello ago,

They are two different issues, we could judge them by just checking the
call stacks. I have the infinite recursion crash in the pdfpage too but I
found your blog post so I ignored it. This is a different issue.

Best Regards,
Xiang Xiaobo

2017-04-22 19:46 GMT+08:00 Agostino Sarubbo <ago@gentoo.org>:

> On Saturday 22 April 2017 11:02:21 Xiaobo Xiang wrote:
> > There is a infinite recursion in
> > PoDoFo::PdfParser::ReadDocumentStructure(PdfParser.cpp )
> > In the ReadDocumentStructure function
>
> I found it too time ago, but since upstream was unresponsive about....I
> didn't
> investigate, and then I didn't know if it has the same root cause of:
> https://blogs.gentoo.org/ago/2017/02/01/podofo-infinite-loop-in-
> podofopdfpagegetinheritedkeyfromobject-pdfpage-cpp/
>
> --
> Agostino Sarubbo
> Gentoo Linux Developer
>

--001a113d0a6ac62c71054dc029ac--
