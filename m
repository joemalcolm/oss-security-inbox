X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2040" "Thursday" "23" "June" "2016" "10:58:34" "+0300" "Lior Kaplan" "kaplanlior@gmail.com" "<CAEsznC7fwbsJ3JudAY4fkh3k_4TfHwaSkgZ9CB=xRQ_1Y5HDdg@mail.gmail.com>" "73" "[oss-security] CVE for PHP 5.5.37 issues" nil nil nil "6" "2016062307:58:34" "[oss-security] CVE for PHP 5.5.37 issues" (number mark "U       kaplanlior@g Jun 23   73/2040  " thread-indent "\"[oss-security] CVE for PHP 5.5.37 issues\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25612 invoked by uid 550); 23 Jun 2016 07:58:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24518 invoked from network); 23 Jun 2016 07:58:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=chEOkTpjz1ULBp8zXVqjAVMClcZHurxbaLCEbYQtGXE=;
        b=A8rmAyLhRtp33eAgNhCfhWp+gwUexoe3Ln1igm3tflx5C7M79FxHcd7mqeYGmEL2PC
         5tWGN9iicJpqij1SIQmlmZbuu/KoVqV9FD4Q7lZjDpxgR1H1JXZrDxNV0ar/RCzaawya
         vMuNMEgY0PHuwl85BZwuG5Zv+DSM9y+Glfs8l6Z29Zbg33OsLM7BGaHGS89u/F+L0MSQ
         yqrNtG90vldEgNDZhInJx7H90zm9b458TWZYREJ7JZ6GLi/xRuOQz5gM+juRQ3VXfu/J
         aYiG3qE0cOMlgaWhuc378nodK1pfCciBdfB3rX4wt3fTM8Z5ZYm1WNpQ/BTKl05rvRDv
         TQag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=chEOkTpjz1ULBp8zXVqjAVMClcZHurxbaLCEbYQtGXE=;
        b=ME7XIFoNQNP0dp2BhTYdwy3TtLUu3ejiXyRrx9ipqZ4Qh5Ml8BfkXcsva7KOxZRsJT
         jjbkQKEggFToS9TvJSI7cNkpB3Y2CG32OOIlycr6FWZI6+PiuoMFXZ/UCNBh7UClmkd1
         3llYk9poTC9bjF+CjvoVrkdqHeYJOONw8sW4KXJ+OvJgf9eoCulI0ZpUEVh5XATKPXZE
         VxIKtgQIWGO9yJnELG1Hsb4wL/KRnKwn75DGT/0C37KV+7bpbg/nEy83B7Intf3+sIra
         JYnOGlaXkdh8hMgP0IUkJw1p6SbymF51CrS1o6I92J6FfLYQsQxi8tWo9obrblLz/DRF
         plCQ==
X-Gm-Message-State: ALyK8tLygMd3r9I6JMqkA6TFXbYV+DOhaY4cyy8jyAQSPRm1i94SIdSBElWepHJ2+/mk6yMAVRiuvJex7v795Q==
X-Received: by 10.107.3.104 with SMTP id 101mr46144911iod.40.1466668715310;
 Thu, 23 Jun 2016 00:58:35 -0700 (PDT)
MIME-Version: 1.0
From: Lior Kaplan <kaplanlior@gmail.com>
Date: Thu, 23 Jun 2016 10:58:34 +0300
Message-ID: <CAEsznC7fwbsJ3JudAY4fkh3k_4TfHwaSkgZ9CB=xRQ_1Y5HDdg@mail.gmail.com>
To: cve-assign@mitre.org
Cc: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a113ec9f8c7ac7f0535ed6b85
Subject: [oss-security] CVE for PHP 5.5.37 issues

--001a113ec9f8c7ac7f0535ed6b85
Content-Type: text/plain; charset=UTF-8

Hi,

PHP 5.5.37 is near its release, please review these following issues for
CVE:

GD:
  . Fixed bug #72339 (Integer Overflow in _gd2GetHeader() resulting in
    heap overflow). (Pierre)

https://bugs.php.net/bug.php?id=72339
http://git.php.net/?p=php-src.git;a=commitdiff;h=7722455726bec8c53458a32851d2a87982cf0eac


GD:
  . Fixed bug #72446 (Integer Overflow in gdImagePaletteToTrueColor()
resulting
    in heap overflow). (Pierre)

https://bugs.php.net/bug.php?id=72446
http://git.php.net/?p=php-src.git;a=commitdiff;h=c395c6e5d7e8df37a21265ff76e48fe75ceb5ae6


- mbstring:
   . Fixed bug #72402 (_php_mb_regex_ereg_replace_exec - double free).
(Stas)

https://bugs.php.net/bug.php?id=72402
http://git.php.net/?p=php-src.git;a=commitdiff;h=5b597a2e5b28e2d5a52fc1be13f425f08f47cb62


- mcrypt:
   . Fixed bug #72455 (Heap Overflow due to integer overflows). (Stas)

https://bugs.php.net/bug.php?id=72455
http://git.php.net/?p=php-src.git;a=commitdiff;h=6c5211a0cef0cc2854eaa387e0eb036e012904d0


- SPL:
  . Fixed bug #72262 (int/size_t confusion in SplFileObject::fread). (Stas)

https://bugs.php.net/bug.php?id=72262
http://git.php.net/?p=php-src.git;a=commitdiff;h=7245bff300d3fa8bacbef7897ff080a6f1c23eba


- SPL:
  . Fixed bug #72433 (Use After Free Vulnerability in PHP's GC algorithm and
    unserialize). (Dmitry)

https://bugs.php.net/bug.php?id=72433
http://git.php.net/?p=php-src.git;a=commitdiff;h=3f627e580acfdaf0595ae3b115b8bec677f203ee


- WDDX:
  . Fixed bug #72340 (Double Free Courruption in wddx_deserialize). (Stas)

https://bugs.php.net/bug.php?id=72340
http://git.php.net/?p=php-src.git;a=commitdiff;h=a44c89e8af7c2410f4bfc5e097be2a5d0639a60c


- zip:
  . Fixed bug #72434 (ZipArchive class Use After Free Vulnerability in
PHP's GC
    algorithm and unserialize). (Dmitry)

https://bugs.php.net/bug.php?id=72434
http://git.php.net/?p=php-src.git;a=commitdiff;h=f6aef68089221c5ea047d4a74224ee3deead99a6

Kaplan

--001a113ec9f8c7ac7f0535ed6b85--
