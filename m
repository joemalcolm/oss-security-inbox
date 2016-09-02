X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1393" "Friday" "2" "September" "2016" "11:42:31" "+0300" "Lior Kaplan" "kaplanlior@gmail.com" "<CAEsznC6_Aeq_2HZNQdF=Z-daGkiR8GmHozqy+ZZfDLicHqZqww@mail.gmail.com>" "61" "[oss-security] CVE assignment for PHP 5.6.25 and 7.0.10" nil nil nil "9" "2016090208:42:31" "[oss-security] CVE assignment for PHP 5.6.25 and 7.0.10" (number mark "U       kaplanlior@g Sep  2   61/1393  " thread-indent "\"[oss-security] CVE assignment for PHP 5.6.25 and 7.0.10\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19572 invoked by uid 550); 2 Sep 2016 08:42:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19545 invoked from network); 2 Sep 2016 08:42:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=KmBTpAlktiSCbmK7KJ7x4dipah/v0he0CC+lc5vghpc=;
        b=Z/D14pdF4yiF5NbjaV8fQyxIpwuXI+fxuwrCxgNhkNajNeV4jjTJsp4hmOKKgsR7A3
         pCjx1Gr8v6XF27oT6hgMa0TKoOganNB/jiVc/yMi52ogg+w6XayeF7qAYE7/DMu1eZv9
         tLyHToZiqC+YgTfQucwIvPsPEWk+jVV+hRq0Oml/stwi3eR8tELIy93lBbmaAZ5uLmE0
         8vxp9eOp2/fKlTVyf1tS8yer5aPqBRUYr/mtt6XyrEfECfvorw6KdwZPjZ0m+dDP3Zr4
         LLu3FLRDYf1E8JqW0BeB9lpzdzfna8tRycMuDuMhAmyvrEzKAA+tTjQMIlASCmXWhsUE
         LNGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=KmBTpAlktiSCbmK7KJ7x4dipah/v0he0CC+lc5vghpc=;
        b=m8BKOF33CQgJz++Q6GVS53H5dJoyIufMh9ZPNKUpJ/nK9sK1ThsFHh4snyksC2SQpd
         bauPsWcNf9vKWiF5f/lgVZ+7Hw1ZPkgfGApu3vCXfQtvWjj+FNQEyp/mWvzLwJfJXJuX
         wmkns5e4XLX3DOtV//m2ggtuQVw7wuNxUyt92nNKt00KCXuxMWKPM5+Wu/zBh4BzNKb3
         yK3SOnqv23nF3MzA2eAhFyXItzoQ6va6vOoHLmbJkA134rJCMFlSD5SRdYKhUtMDlWOJ
         DVI6MUod/CS8RWb+mtz27Bq+pslUOTx4+Vk9dSWo9furLlnafZzwisnTlP17oESTasxu
         xY4w==
X-Gm-Message-State: AE9vXwP7kEK6PguE5pmKapKTSmA+eUB3lUK0DHpuidF6CPmi0S8y+50+7tmQVkUH8rMrad7n6G+np0Y9Afr1Kw==
X-Received: by 10.31.102.6 with SMTP id a6mr12302663vkc.85.1472805752450; Fri,
 02 Sep 2016 01:42:32 -0700 (PDT)
MIME-Version: 1.0
From: Lior Kaplan <kaplanlior@gmail.com>
Date: Fri, 2 Sep 2016 11:42:31 +0300
Message-ID: <CAEsznC6_Aeq_2HZNQdF=Z-daGkiR8GmHozqy+ZZfDLicHqZqww@mail.gmail.com>
To: cve-assign@mitre.org
Cc: oss-security@lists.openwall.com, "security@php.net" <security@php.net>
Content-Type: multipart/alternative; boundary=94eb2c092d68b2b308053b824f32
Subject: [oss-security] CVE assignment for PHP 5.6.25 and 7.0.10

--94eb2c092d68b2b308053b824f32
Content-Type: text/plain; charset=UTF-8

Hello Mitre team,

Please consider CVE assignment for the following issues in PHP.

Shared between PHP 5.6.25 and 7.0.10:

Core:

Bug #72663 <https://bugs.php.net/bug.php?id=72663> Create an Unexpected
Object and Don't Invoke __wakeup() in Deserialization
Bug #72681 <https://bugs.php.net/bug.php?id=72681> PHP Session Data
Injection Vulnerability

GD:

Bug #72697 <https://bugs.php.net/bug.php?id=72697> select_colors write
out-of-bounds
Bug #72730 <https://bugs.php.net/bug.php?id=72730> imagegammacorrect allows
arbitrary write access


EXIF:

Bug #72627 <https://bugs.php.net/bug.php?id=72627> Memory Leakage In
exif_process_IFD_in_TIFF



WDDX:

Bug #72749 <https://bugs.php.net/bug.php?id=72749> wddx_deserialize allows
illegal memory access
Bug #72750 <https://bugs.php.net/bug.php?id=72750> wddx_deserialize null
dereference
Bug #72790 <https://bugs.php.net/bug.php?id=72790> wddx_deserialize null
dereference with invalid xml
Bug #72799 <https://bugs.php.net/bug.php?id=72799> wddx_deserialize null
dereference in php_wddx_pop_element


PHP 7.0.10 only:

Core:

Bug #72742 <https://bugs.php.net/bug.php?id=72742> memory allocator fails
to realloc small block to large one


cURL:

Bug #72674 <https://bugs.php.net/bug.php?id=72674> Heap overflow in
curl_escape

Thanks,

Kaplan

--94eb2c092d68b2b308053b824f32--
