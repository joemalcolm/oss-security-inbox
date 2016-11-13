X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/11/13/1
Message-ID: <CAE2SPAbE_XOSFwrt=r=zvLf003rXL78f+-pBpXU4Ggc+q6gGtA@mail.gmail.com>
Date: Sun, 13 Nov 2016 12:25:15 +0100
From: Bastien ROUCARIES <roucaries.bastien@...il.com>
To: oss-security@...ts.openwall.com
Cc: Debian Security Team <team@...urity.debian.org>
Subject: Imagemagick heap overflow
Content-Type: text/plain; charset=utf-8

Hi,

Imagemagick before 3cbfb163cff9e5b8cdeace8312e9bfee810ed02b
suffer from a heap overflow in WaveletDenoiseImage(). This problem is
easelly trigerrable  from a perl script.

For more details see:
https://github.com/ImageMagick/ImageMagick/issues/296

The problem is solved by this simple patch:
@@ -5866,7 +5866,7 @@ MagickExport Image *WaveletDenoiseImage(const
Image *image,
     ThrowImageException(ResourceLimitError,"MemoryAllocationFailed");
   pixels_info=AcquireVirtualMemory(3*image->columns,image->rows*
     sizeof(*pixels));
-  kernel=(float *) AcquireQuantumMemory(MagickMax(image->rows,image->columns),
+  kernel=(float *)
AcquireQuantumMemory(MagickMax(image->rows,image->columns)+1,
     GetOpenMPMaximumThreads()*sizeof(*kernel));
   if ((pixels_info == (MemoryInfo *) NULL) || (kernel == (float *) NULL))
     {
