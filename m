X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1444" "Thursday" "3" "December" "2015" "11:56:47" "-0500" "Glenn Randers-Pehrson" "glennrp@gmail.com" "<CA+PdXcszrzhnMEa_Et8xhxdL_AzdE+C07AJnEN_XWOJA1Uv57g@mail.gmail.com>" "35" "[oss-security] Status of CVE-2015-8126: libpng buffer overflow in png_set_PLTE" "^Date:" nil nil "12" "2015120316:56:47" "[oss-security] Status of CVE-2015-8126: libpng buffer overflow in png_set_PLTE" (number mark "U       glennrp@gmai Dec  3   35/1444  " thread-indent "\"[oss-security] Status of CVE-2015-8126: libpng buffer overflow in png_set_PLTE\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30485 invoked by uid 550); 3 Dec 2015 16:57:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30430 invoked from network); 3 Dec 2015 16:56:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=xO3OS5eHZD4ZCcP/D5ZaYSEZjV01//ccUNYBJkXxodA=;
        b=yg9cIIiJJbFeJH0JW2A96AfDoPW7+Yzmn4+dcYPqVj1ic7WqYqYiIo2cf8/bIaC9dF
         BjOzEEpuJuKNu73d7aumCGaEKDbf6Pn9OWuXGMulmgFpI4ZM3XO1U7j/6pPXWeby4qm3
         5xklmNCJ5I+pHTxZiDOUyjdDZa5hPX+hjMYTOwbKmurk5aL5kUR4hF4MtX5zASUHaduN
         Bdjmkh97jliUKDHwXaWr+82FxxQKZ4X2KWU7w5aLvDKnep488zuV5UCd5nfTm5jVBkt+
         Sb2lKrVjG+s1Iwp57yQHuoVZsPAjRMWrHPX9m9OxEqBkMnbLrnxMDr2Ayg/FUMpGkMUk
         6hlw==
MIME-Version: 1.0
X-Received: by 10.55.80.68 with SMTP id e65mr5126580qkb.46.1449161807609; Thu,
 03 Dec 2015 08:56:47 -0800 (PST)
Message-ID: <CA+PdXcszrzhnMEa_Et8xhxdL_AzdE+C07AJnEN_XWOJA1Uv57g@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a114a6b7cc3e80c052601463e
Date: Thu, 3 Dec 2015 11:56:47 -0500
From: Glenn Randers-Pehrson <glennrp@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Status of CVE-2015-8126: libpng buffer overflow in png_set_PLTE
To: oss-security@lists.openwall.com

--001a114a6b7cc3e80c052601463e
Content-Type: text/plain; charset=UTF-8

On Thu, Nov 12, 2015 at 1:26 PM, Glenn Randers-Pehrson <glennrp@gmail.com>
wrote:

> I request a CVE for a vulnerability in libpng, all versions, in the
> png_set_PLTE/png_get_PLTE functions.  These functions failed to check for
> an out-of-range palette when reading or writing PNG files with a bit_depth
> less than 8.  Some applications might read the bit depth from the IHDR
> chunk and allocate memory for a 2^N entry palette, while libpng can return
> a palette with up to 256 entries even when the bit depth is less than 8.
>
> libpng versions 1.6.19, 1.5.24, 1.4.17, 1.2.54, and 1.0.64 were released
> today (12 November 2015) to fix this vulnerability.  See
> libpng.sourceforge.net
>

The patch was incomplete.  While it defended against the potential overrun
while reading PNG files, it did not detect a potential overrun by
applications using png_set_PLTE directly.  Libpng versions 1.6.20, 1.5.25,
1.4.18, 1.2.55, and 1.0.65 which were released today, December 3, 2015, fix
this remaining problem.

The PNG Development Group has not yet been made aware of any application
that is actually vulnerable to CVE-2015-8126. The original "crash" obtained
by fuzzing optipng had triggered an assert() that probably should have been
a warning; no out-of-bounds read occurs in optipng.

Regards

Glenn Randers-Pehrson
libpng custodian

--001a114a6b7cc3e80c052601463e--
