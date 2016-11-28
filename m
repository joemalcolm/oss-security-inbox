X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1057" "Monday" "28" "November" "2016" "22:49:58" "+0100" "Michiel Beijen" "michiel.beijen@gmail.com" "<CABD0r11CUY3FvC0S+At_ApCKoEAGC2CLWQ_N0c1dzQ4VRgndQA@mail.gmail.com>" "29" "[oss-security] CVE-2016-1251 - use after free in DBD::mysql when using prepared statements - medium" nil nil nil "11" "2016112821:49:58" "[oss-security] CVE-2016-1251 - use after free in DBD::mysql when using prepared statements - medium" (number mark "U       michiel.beij Nov 28   29/1057  " thread-indent "\"[oss-security] CVE-2016-1251 - use after free in DBD::mysql when using prepared statements - medium\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30240 invoked by uid 550); 28 Nov 2016 21:51:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29955 invoked from network); 28 Nov 2016 21:50:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=+l/AOo/T9UqA9n32jSh7jwO9YZTWGBIXO35KrSEQAQ8=;
        b=0NGqENxhyNmGuKeJOeHD2CrYIsFftNc0RZ3SYj5Ta++vMFYALJ9RRrUAOPvIEETIVl
         xCCI2UecMLiQHhKsVbiXXez7eCDpLr2DzRf4dz2ZZinHmrJWMpNY/P74BOzmHTrtJuap
         XQ12Q2C3nSFcH7lsxz33HPGHZCsJPu6+uc1pKp9o/s0u5174vO6ZTrRoqtadP8S8qHcf
         0g4TpqrdfV3zgDAQeV/5TTSBjUxP/kWVnW+Eepl/yM/1ThJSV45rN632bUr9EmnFkvZa
         RxwUCFAegv0qjcTHjTg1Zq3w4gjp/2Enj0nMLy7LrBBRoU3AqF7hdkO9iZLTIUXZO2GR
         /udw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=+l/AOo/T9UqA9n32jSh7jwO9YZTWGBIXO35KrSEQAQ8=;
        b=U8r7ne7GnstpnVZIfn+QgwHyrcB7IB2qJTBZa2mIUYQZqYKdj2bNxuhm1vmTzmbNdL
         OUJ4ehpcUwXiXngSnRKm+WmrA26DxOdZE93huiRvJThxfvySSQk074sIcIpbmBSjCa5f
         OKYR/CsaykHYly510+ZyWYSD1TyTI4Mcq+u0I0MNQeJU7vKWN+u6UmerXwZcdCSgbvB7
         Qsn1/SNG8POnrwBMtat8pxXF30LYNp0L6U6iWDYAP3EWjkR622KcbQZ5/SBvkucOXWe8
         DH6wQF2E/aGEg4bJPU/vbKk8uo2nnOCDU7S9InnhgoSHntMCCVfsvuw/DoKUHPaFRFII
         hdew==
X-Gm-Message-State: AKaTC03CXTHr8jWw4IE/42OUXaGqvwz8EKdjpYQQ7nb2ySojis7f6dKlW/3VSgktCbxmvm8/NeQarL6MgyemNg==
X-Received: by 10.28.194.135 with SMTP id s129mr2772081wmf.55.1480369818776;
 Mon, 28 Nov 2016 13:50:18 -0800 (PST)
MIME-Version: 1.0
From: Michiel Beijen <michiel.beijen@gmail.com>
Date: Mon, 28 Nov 2016 22:49:58 +0100
Message-ID: <CABD0r11CUY3FvC0S+At_ApCKoEAGC2CLWQ_N0c1dzQ4VRgndQA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] CVE-2016-1251 - use after free in DBD::mysql when using prepared
 statements - medium

DBD::mysql is the perl DBI driver for MySQL and the primary way Perl
applications and scripts access MySQL and MariaDB databases. The
source repository is at https://github.com/perl5-dbi/DBD-mysql.

A vulnerability was discovered that can lead to a use after free when
using prepared statements. This vulnerability is present in all
releases at least back to versions 3.0 of the driver, which were
released in 2005.

The CVE identifier for this vulnerability is CVE-2016-1251.

Version 4.041, including the fix for this vulnerability, is available
on CPAN at https://metacpan.org/pod/DBD::mysql

The fix itself is available at
https://github.com/perl5-dbi/DBD-mysql/commit/3619c170461a3107a258d1fd2d00e=
d4832adb1b1

Users of DBD::mysql using prepared statements are advised to patch
their installations as soon as possible. Distributors of DBD::mysql
are requested to make this fix available to their end users.

Many thanks to Pali Roh=C3=A1r for discovering and fixing the vulnerability.

--
The DBD::mysql maintainers,

Patrick Galbraith
Michiel Beijen
