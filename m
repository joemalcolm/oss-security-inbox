X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/04/27/4
Message-ID: <CABfY0L3+qV-Q_L2awb-PSXzy=fPWyQFMkZwfbjHSXyxCkfrEbA@mail.gmail.com>
Date: Tue, 26 Apr 2016 23:26:13 -0500
From: Jodie Cunningham <jodie.cunningham@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: 3 bugs refer to buffer overflow in in libtiff 4.0.6
Content-Type: text/plain; charset=utf-8

On Tue, Apr 26, 2016 at 10:36 PM, PXO炳林 <271193918@...com> wrote:
>
> Hello oss-security,
>
> I did some test and found three bugs refer to buffer overflow: one stack
> buffer overflow in thumbnail and two buffer overflows in bmp2tiff.
>
> Please let me know whether CVE Identifier number could be assigned.
>
> Overview:
>
> Running each poc file crashes thumbnail and bmp2tiff made with
> AddressSanitizer in tiff-4.0.6. I have attached poc and log files .
> ------------------
> From Debug_Orz
>


Is there a patch upstream?
