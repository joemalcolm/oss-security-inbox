X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1346" "Sunday" "24" "July" "2016" "11:06:25" "+0300" "Lior Kaplan" "kaplanlior@gmail.com" "<CAEsznC7xLCYBp0NBWzQzzBMiYz-shG7NEVvNeLTb2U_xMSpBVQ@mail.gmail.com>" "46" "[oss-security] Fwd: CVE for PHP 5.5.38 issues" nil nil nil "7" "2016072408:06:25" "[oss-security] Fwd: CVE for PHP 5.5.38 issues" (number mark "U       kaplanlior@g Jul 24   46/1346  " thread-indent "\"[oss-security] Fwd: CVE for PHP 5.5.38 issues\"\n") "<CAEsznC6-RyAhkT5P26hYi00pO8=kG-n_iQqC8vcSCuS9P3=yvg@mail.gmail.com>" ("<CAEsznC6-RyAhkT5P26hYi00pO8=kG-n_iQqC8vcSCuS9P3=yvg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13415 invoked by uid 550); 24 Jul 2016 08:06:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13364 invoked from network); 24 Jul 2016 08:06:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=5XJbPp1AIOUNWBhTBEXtGiI1bF19q+215iSy1lz3d8Y=;
        b=SAeZCC06jYd17oyll4D4LB4mBd1Krqz6471t87sDKfeqewDHQSLN61h9qduPCsSWvW
         X7mhkab/UJZZVXEQh/0JRkwXGfIDBmmYTO33/WCxHCIB+jqlGVoq1YHmPdis8N6VwoDB
         eO7JhoRcWy1WpsG9HLLx4HPSdvURtV80+54drsvNA8KAb3quDqW09CaramiGNXEANNnc
         5n7eC+SJdYZ73jJymXP6Kx8xms5ZCu5SLzHmGPDcC6WOkO2dLWcIaQg2s4tpEeEQPvaU
         nQps+5xJBj88WB+vcvy6yxpvN8XSp88mYeHzf3NUGVUZqGurMmHkrALMiYArs4+ffaHb
         i8Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=5XJbPp1AIOUNWBhTBEXtGiI1bF19q+215iSy1lz3d8Y=;
        b=BjykIE6QIteFQGepZfVbQbfvomuKHk11my10E3GpZvQ0pL7FRTImCEoxz9nvdTnCWH
         u/4/fY0UCKoQYV97uuGeaFgnqSqUVdX81XYk+gS0f4kfz6+FqSS4taXZl1lwFfPUvrDJ
         Ltg70DiYB+i2zyVQh4GEll5IcL9Vdi5McQ1Fz8DC8wQcpN3objtk4dsq6/Lo5XuER6PU
         JtIyGsef7aT8/0LEs+j8SigS9ffxBjxjdv0j/vTZ+N0KKBVb3yfrX4qBhoOeDn9Zu6Oo
         DItKcuF15PgxwhVnnaQwvjTZtdl8K+bJMhNFehKFjoJQAqWU40/c2B9B+N15ddELC4XB
         BdNg==
X-Gm-Message-State: AEkoouvmakrmfBl6kJykRDeU502B8VubIWjauccYClCB+5zC+Rm+PFz1aZmaJFtJxZ4HBOJ6+HOUmJTLFm9YYQ==
X-Received: by 10.36.93.9 with SMTP id w9mr14854205ita.2.1469347586174; Sun,
 24 Jul 2016 01:06:26 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAEsznC6-RyAhkT5P26hYi00pO8=kG-n_iQqC8vcSCuS9P3=yvg@mail.gmail.com>
References: <CAEsznC6-RyAhkT5P26hYi00pO8=kG-n_iQqC8vcSCuS9P3=yvg@mail.gmail.com>
From: Lior Kaplan <kaplanlior@gmail.com>
Date: Sun, 24 Jul 2016 11:06:25 +0300
Message-ID: <CAEsznC7xLCYBp0NBWzQzzBMiYz-shG7NEVvNeLTb2U_xMSpBVQ@mail.gmail.com>
To: cve-assign@mitre.org
Cc: "security@php.net" <security@php.net>, oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a1143ddc8ed19d805385d242d
Subject: [oss-security] Fwd: CVE for PHP 5.5.38 issues

--001a1143ddc8ed19d805385d242d
Content-Type: text/plain; charset=UTF-8

Hi,

PHP 5.5.38 was released over the weekend, with a few security fixes, see
list bellow (I removed issues already have CVE assigned to them).

Source code is at
http://git.php.net/?p=php-src.git;a=shortlog;h=refs/tags/php-5.5.38

- Core:
   . Fixed bug #70480 (php_url_parse_ex() buffer overflow read). (Stas)
   . Fixed bug #72513 (Stack-based buffer overflow vulnerability in
     virtual_file_ex). (loianhtuan at gmail dot com)
   . Fixed bug #72562 (Use After Free in unserialize() with Unexpected Session
     Deserialization). (taoguangchen at icloud dot com)

- EXIF:
   . Fixed bug #72603 (Out of bound read in exif_process_IFD_in_MAKERNOTE).
     (Stas)
   . Fixed bug #72618 (NULL Pointer Dereference in exif_process_user_comment).
     (Stas)

- Intl:
   . Fixed bug #72533 (locale_accept_from_http out-of-bounds access). (Stas)


- SNMP:
   . Fixed bug #72479 (Use After Free Vulnerability in SNMP with GC and
     unserialize()). (taoguangchen at icloud dot com)

- Xmlrpc:
   . Fixed bug #72606 (heap-buffer-overflow (write) simplestring_addn
simplestring.c).
     (Stas)

- Zip:
   . Fixed bug #72520 (Stack-based buffer overflow vulnerability in
     php_stream_zip_opener). (loianhtuan at gmail dot com)

Thanks,

Kaplan

--001a1143ddc8ed19d805385d242d--
