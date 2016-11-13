X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["833" "Sunday" "13" "November" "2016" "12:25:15" "+0100" "Bastien ROUCARIES" "roucaries.bastien@gmail.com" "<CAE2SPAbE_XOSFwrt=r=zvLf003rXL78f+-pBpXU4Ggc+q6gGtA@mail.gmail.com>" "21" "[oss-security] Imagemagick heap overflow" nil nil nil "11" "2016111311:25:15" "[oss-security] Imagemagick heap overflow" (number mark "U       roucaries.ba Nov 13   21/833   " thread-indent "\"[oss-security] Imagemagick heap overflow\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25718 invoked by uid 550); 13 Nov 2016 12:20:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3499 invoked from network); 13 Nov 2016 11:25:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=nv/zY3RNL9/SFCuCIAwasBTFLBR7tUqAx4B4WMQEOxQ=;
        b=VzKkA/QAkCG1EfllC1CXf0bTGATTmeJMTHYF5Mt3Cpbz+l/KYSCAgbfgQ57HRJyJI7
         1X3fnAmukiINixm/DwqhHphtUiYs4nKqTAlVrfnmsQnjPJ3Z+eJBKqwHcz9PmdJYFpP/
         PkAv4ZKKFGqVQUfqQhKSkKR928RFUKfbXCmVaMt24ErdGV2HigqA2ykDbuZFPwPdOOHh
         14He6SX9W7Ojs7+31XftTo5QcCUxjM8LYdtWPGUtyCxKHdFuJagcc620nRtodxzcF9RV
         ksoImwpbvL1kS9wlx7CGI9Po2LAXMt3//oQ1VfxT4Iu3glLaoUn3HakM/jQxivjlzsCR
         RZ3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=nv/zY3RNL9/SFCuCIAwasBTFLBR7tUqAx4B4WMQEOxQ=;
        b=khzroOwC8Ppjek4AfIUICA/qVUPXfvSgheyPkQy57zAs9oNw++XiV5Xo2erNfYGk9Q
         DSRvVdsKK+Z5QZD7nfTx/IHmvDv5Z+NT5CJbHYM5Vu0VD0nVVnhtdiSlTQLxl6boSSU9
         ocIBdG7A8nQITgaKFE4unvwUOUVKa6qeoWXwNL4OQbAcmo/LQnDrGQiywFDVewhIBBu/
         6C9OugJc2bTItwAJ2wEmvnfLn2RqlNd1D+Lht0m9+LGWgWzL/uVhoreUr6wXJhKtabrm
         xiYkrhlwUmua8o2VSn2f7Rfy993ESRNn30BDcJx2kbiDu+4xa3tXVGsVtHAjMJPLwViS
         109w==
X-Gm-Message-State: ABUngvcEzJw9C5zJCZhSDISIt6/mJf6gr+GjqGNEXs0gWxZnRiMnfnHvz7kof3GOcpYgHwPOEBl1g5+5DU8/hg==
X-Received: by 10.28.105.78 with SMTP id e75mr6693990wmc.55.1479036345972;
 Sun, 13 Nov 2016 03:25:45 -0800 (PST)
MIME-Version: 1.0
From: Bastien ROUCARIES <roucaries.bastien@gmail.com>
Date: Sun, 13 Nov 2016 12:25:15 +0100
Message-ID: <CAE2SPAbE_XOSFwrt=r=zvLf003rXL78f+-pBpXU4Ggc+q6gGtA@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Debian Security Team <team@security.debian.org>
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] Imagemagick heap overflow

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
