X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1548" "Thursday" "15" "September" "2016" "14:44:40" "+0300" "Lior Kaplan" "kaplanlior@gmail.com" "<CAEsznC48dANrm2DNVq3jh-PMiYu-72DE7ybFJo3z0RMsiKmi2A@mail.gmail.com>" "48" "[oss-security] CVE assignment for PHP 5.6.26 and 7.0.11" nil nil nil "9" "2016091511:44:40" "[oss-security] CVE assignment for PHP 5.6.26 and 7.0.11" (number mark "U       kaplanlior@g Sep 15   48/1548  " thread-indent "\"[oss-security] CVE assignment for PHP 5.6.26 and 7.0.11\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15526 invoked by uid 550); 15 Sep 2016 11:44:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15489 invoked from network); 15 Sep 2016 11:44:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=Mq0B14MEDQjRwcbEsEwqewUwvVlaWeUcYmdRk07tiIo=;
        b=clOWnfTvqRTpexRg0tNVa3/lnc1OxLunBg/UObfnEkgZI4H3r+ahXCLoGnieHKQYmn
         xZuvTmuQ5oNd74OM+sWvI5qN18kyq+NoQBZjBwboKluEPuPaevdSOSn5SnXQexnUid3h
         dBgqK4P1pwV0vgFK0/hejs3zT0LxKbwdZzldfk4RWj0nZTiuSTR+WWYugYHg0yylYupS
         z20f9gK6gLvrE7yrycZL/kOIXxOARFxkkBKRhYv0lhtQVRIx3aDlDWc29pP4ZHJXxck8
         uN5Z4dVBEltjjWc3cH7dtEP+wmsB/g9nB56FlYGcqoaVX8aFjzVUwU9MS3iUFWJKE00P
         592g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=Mq0B14MEDQjRwcbEsEwqewUwvVlaWeUcYmdRk07tiIo=;
        b=B/bJTwKu8qQ0pg8vIt+jnfrpcmdPQpB+7pzn2xWV6jU13AT7ltqT0++AyL/hyOh50Y
         mpm4xFT6NO1NfxGOczatqn3fshs91iqGO45Y4SkwmCON4pItJRWw3qt+Jq9mii0lE1fA
         Y+LakjgPDXOTxpxN4GC7q01rXsGDDwIR+0BaYUjMpFzLLbRc/ZbTQGrc6OXtHU6ppqYJ
         FXKwrHbMCvE3dRYiRBO/kRXQhJLe8SDQ9E1Pvdf6H2Srz5xBaJKXBHzc3ppQEUHTI/LA
         N5w/cYiNHzG6f752uWYBdrYZTv3mMqcc4IDcvbR6aRfbnBRktXra3ZEzcxZ7Qm+iq6HV
         cCig==
X-Gm-Message-State: AE9vXwN8w68nEcSBj/FJYa3SAWgAqdYbFdAxC8cCLeL4nie1c4lrrTe40BcYBxzDJlVol79wFTqNSy0zqYmHKQ==
X-Received: by 10.31.137.84 with SMTP id l81mr2224561vkd.49.1473939880982;
 Thu, 15 Sep 2016 04:44:40 -0700 (PDT)
MIME-Version: 1.0
From: Lior Kaplan <kaplanlior@gmail.com>
Date: Thu, 15 Sep 2016 14:44:40 +0300
Message-ID: <CAEsznC48dANrm2DNVq3jh-PMiYu-72DE7ybFJo3z0RMsiKmi2A@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: "security@php.net" <security@php.net>
Content-Type: multipart/alternative; boundary=001a1145187e06bfb9053c8a5f4a
Subject: [oss-security] CVE assignment for PHP 5.6.26 and 7.0.11

--001a1145187e06bfb9053c8a5f4a
Content-Type: text/plain; charset=UTF-8

Hi,

Both PHP versions have been tagged.

Please assign CVEs to the following issues:

PHP 5.6.26 only:

bug #73052 (Memory Corruption in During Deserialized-object Destruction).
https://bugs.php.net/bug.php?id=73052
http://git.php.net/?p=php-src.git;a=commit;h=6a7cc8ff85827fa9ac715b3a83c2d9147f33cd43


PHP 5.6.26 and 7.0.11:

bug #72293 (Heap overflow in mysqlnd related to BIT fields).
https://bugs.php.net/bug.php?id=72293
http://git.php.net/?p=php-src.git;a=commit;h=28f80baf3c53e267c9ce46a2a0fadbb981585132

bug #72860 (wddx_deserialize use-after-free).
https://bugs.php.net/bug.php?id=72860
http://git.php.net/?p=php-src.git;a=commit;h=b88393f08a558eec14964a55d3c680fe67407712

bug #72928 (Out of bound when verify signature of zip phar in
phar_parse_zipfile).
https://bugs.php.net/bug.php?id=72928
http://git.php.net/?p=php-src.git;a=commit;h=0bfb970f43acd1e81d11be1154805f86655f15d5

bug #73007 (add locale length check).
https://bugs.php.net/bug.php?id=73007
http://git.php.net/?p=php-src.git;a=commit;h=6d55ba265637d6adf0ba7e9c9ef11187d1ec2f5b

bug #73029 (Missing type check when unserializing SplArray).
https://bugs.php.net/bug.php?id=73029
http://git.php.net/?p=php-src.git;a=commit;h=ecb7f58a069be0dec4a6131b6351a761f808f22e

bug #73065 (Out-Of-Bounds Read in php_wddx_push_element).
https://bugs.php.net/bug.php?id=73065
http://git.php.net/?p=php-src.git;a=commit;h=c4cca4c20e75359c9a13a1f9a36cb7b4e9601d29

Thanks,

Kaplan

--001a1145187e06bfb9053c8a5f4a--
