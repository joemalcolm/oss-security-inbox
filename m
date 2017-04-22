X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/04/22/2
Message-ID: <7429505.9S0h3zJD4P@arcadia>
Date: Sat, 22 Apr 2017 13:46:35 +0200
From: Agostino Sarubbo <ago@...too.org>
To: oss-security@...ts.openwall.com
Cc: Xiaobo Xiang <xiangxb2112@...il.com>
Subject: Re: CVE Request: podofo: stack overflow in PoDoFo::PdfParser::ReadDocumentStructure(PdfParser.cpp)
Content-Type: text/plain; charset=utf-8

On Saturday 22 April 2017 11:02:21 Xiaobo Xiang wrote:
> There is a infinite recursion in
> PoDoFo::PdfParser::ReadDocumentStructure(PdfParser.cpp )
> In the ReadDocumentStructure function

I found it too time ago, but since upstream was unresponsive about....I didn't 
investigate, and then I didn't know if it has the same root cause of:
https://blogs.gentoo.org/ago/2017/02/01/podofo-infinite-loop-in-podofopdfpagegetinheritedkeyfromobject-pdfpage-cpp/

-- 
Agostino Sarubbo
Gentoo Linux Developer
