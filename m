X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1048" "Monday" "12" "December" "2016" "12:13:45" "+0200" "Lior Kaplan" "kaplanlior@gmail.com" "<CAEsznC6nVBDmX8wZqqfh1ttXS-OnO9J=uzYa74kY3vVC4dtNhw@mail.gmail.com>" "35" "[oss-security] CVE assignment for PHP 5.6.28, 5.6.29, 7.0.13, 7.0.14 and 7.1.0" nil nil nil "12" "2016121210:13:45" "[oss-security] CVE assignment for PHP 5.6.28, 5.6.29, 7.0.13, 7.0.14 and 7.1.0" (number mark "U       kaplanlior@g Dec 12   35/1048  " thread-indent "\"[oss-security] CVE assignment for PHP 5.6.28, 5.6.29, 7.0.13, 7.0.14 and 7.1.0\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19628 invoked by uid 550); 12 Dec 2016 10:13:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19598 invoked from network); 12 Dec 2016 10:13:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=u6MlpJhLDAtRxt55yX1Z9INsaCIzVgT/gxtdB1Yrv6s=;
        b=pdTs/8ZXTCoQilbomdwv5j7Vpl9hmI+h0jYW11R9waMToMYdud6SOhM3oKvbPNo764
         RgseV1yOatb41FA9WFQPatGUTLKZuojAso9kZAPaqkfaiokrbGz4Ih6YY3yQJH5uUimH
         o4aa4L4vg8nKO9o4mNoG4q0BopIoUAjbejyG8VsllOhha2MpqvuDUKoMQFsVXlOYyak+
         E9dRgGYjXVGcBr+0WIIFs2CIg+1RzZPg+Nryf5QhiF80v942UINQKR/xXHUMDUEntcuR
         WI56baVpJkwj35gFLXvCIN5cJ0ydUhNPjVS/VfBq7OqYYz4VKllL+3Fuzlgi/Q5zR/fS
         wVCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=u6MlpJhLDAtRxt55yX1Z9INsaCIzVgT/gxtdB1Yrv6s=;
        b=NVlN77/9R7UcRuZL1vko+Vi14wQKQ+0wsZ80hZBfumhUjgIyGspEBEumd9d/d9ziKm
         41ViHp+KavTsGb2nC3UWVEuEJ29EQ9MTEojlWfOHfLRfEtgRt56CfsO+xAclLmTUrKt6
         ciPnaU0zhi2uOG7ho7rkjhdoG6hzLPvkYtNf60CDzjsFtwHsA6SaW9JBzbOmGRMxcQ6g
         w6n6rvsdzfpeVVK2rs7Tfs8sV50EGbtDRwUBZZqw1hCg9uv/UhEbNwTzVptlZT6SxjEd
         uIkgeTl0pFse41Ytf/mIfft0M7OdYJH93gno7++9L+kRA69GCMR2g4UFLybTC7YGkqJm
         dgOQ==
X-Gm-Message-State: AKaTC03pjvoBxg8TLLazohmgwAxWkMaFHirjUhLA2MNG/ALaSFqg1nTbkMPArN7su5jfjFPSDBsvPowRWOgAlg==
X-Received: by 10.159.53.107 with SMTP id o98mr58616776uao.149.1481537626150;
 Mon, 12 Dec 2016 02:13:46 -0800 (PST)
MIME-Version: 1.0
From: Lior Kaplan <kaplanlior@gmail.com>
Date: Mon, 12 Dec 2016 12:13:45 +0200
Message-ID: <CAEsznC6nVBDmX8wZqqfh1ttXS-OnO9J=uzYa74kY3vVC4dtNhw@mail.gmail.com>
To: cve-assign@mitre.org
Cc: "security@php.net" <security@php.net>, oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=94eb2c03f4faed9ef00543735b4b
Subject: [oss-security] CVE assignment for PHP 5.6.28, 5.6.29, 7.0.13, 7.0.14 and 7.1.0

--94eb2c03f4faed9ef00543735b4b
Content-Type: text/plain; charset=UTF-8

Hi,

Please assign a CVE for the following issues:

Fixed in PHP 5.6.28, 7.0.13 and 7.1.0:
Bug #72696    imagefilltoborder stackoverflow on truecolor images
https://bugs.php.net/bug.php?id=72696
https://github.com/php/php-src/commit/863d37ea66d5c960db08d6f4a2cbd2518f0f80d1


Fixed in PHP 5.6.28, 7.0.13 and 7.1.0:
Bug #73331    NULL Pointer Dereference in WDDX Packet Deserialization with
PDORow
https://bugs.php.net/bug.php?id=73331
https://github.com/php/php-src/commit/6045de69c7dedcba3eadf7c4bba424b19c81d00d


Fixed in PHP 5.6.29 and 7.0.14:
Bug #73631    Invalid read when wddx decodes empty boolean element
https://bugs.php.net/bug.php?id=73631
https://github.com/php/php-src/commit/66fd44209d5ffcb9b3d1bc1b9fd8e35b485040c0


Fixed in PHP 7.0.14 and 7.1.0:
Bug #72978    Use After Free in PHP7 unserialize()
https://bugs.php.net/bug.php?id=72978
https://github.com/php/php-src/commit/b2af4e8868726a040234de113436c6e4f6372d17


Kaplan

--94eb2c03f4faed9ef00543735b4b--
