X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1164" "Monday" "19" "March" "2018" "17:08:14" "-0400" "Mike Dalessio" "mike.dalessio@gmail.com" "<CAGJbjKaR+G7r8DnrXmvf0hXgtSYh8VAU7cJRmt+7iqn1fzwizw@mail.gmail.com>" "55" "[oss-security] [CVE-2018-8048] Loofah XSS Vulnerability" nil nil nil "3" "2018031921:08:14" "[oss-security] [CVE-2018-8048] Loofah XSS Vulnerability" (number mark "U       mike.dalessi Mar 19   55/1164  " thread-indent "\"[oss-security] [CVE-2018-8048] Loofah XSS Vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24488 invoked by uid 550); 19 Mar 2018 21:10:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22420 invoked from network); 19 Mar 2018 21:08:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=07THWTCU8xypoOy6ZKW+mp+iJfvm6IrySvNdFdTrtzk=;
        b=lgdk/rPiYd3m1zc/mBkeGSO3umaWboFzg60NvNZ9o8/CZhPxN/CLEWpkXbsfZEJM1E
         ZZEv5p+1i30Cbfm0d6UNapEMD6x0uDENuM1XwfIwmgBPz68kUOfEUXkw0edNnmr441y8
         Akw4XfRmCfIK1YC3kywpIILDD0ivN/mqCGBQCgHfLfsUSWUsxedQLn7ZG8EGj5wxmDtX
         6PU9Rp8njTmF7TY9yUiDXZzXSZ3/QJ8VJcsYsyuskqdFF175fDjHWwS1FTxFPZzV/a6w
         N56y/I3YvM8zClNCAS0n6wkMbjarbAiGuEJrueFTjm0ZJeZjObUmSXPen8U0XsfVnEth
         SO3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=07THWTCU8xypoOy6ZKW+mp+iJfvm6IrySvNdFdTrtzk=;
        b=Q48ntYpb7laCZv9gZCvCRJS+1Zs9wOk05uDJLLfx6s2lWvKYhHPmwhuVZJpQuooe88
         7QuxvN9j2bmYsKXN7k+NOJopoiAZ0Yabbaf7DYOZj8/FZCF9wA0F9gTqBJEkRMFTWV+7
         vjHd8m9JhmvPy8C5ZWug87t/AKfwJYS03dgWk/DbhHiKIUSUumyIMZC8p12MexGGB8lt
         uWSqAq4BcHrOgUggJu4PT/KGuCvCyLYA4oeUeTDCMDZB02VPHqHL6dNddcudVQI9KEAa
         X3dVDRAu6XtwHQFvZSx8iZDqawYsAytQl79KzzCkfVxNI7chQ7hdrhwhgkWEyOxyQJcg
         dmiA==
X-Gm-Message-State: AElRT7HrWk3Wzhor5npRiwCUxi1AYpUIGtHh4fby2sNjePs1ZI24vpN6
	fERjR+52xuncxOAx7hVXq3/IAkGEYAeQBa9vTUk=
X-Google-Smtp-Source: AG47ELuRuVfSFwz/mabVeExY5AERwRaKl0cok9NgIbPB9mCTPNt9FK390CTOCspbH4JXd42hJ2OV+QLLsXFUfU2ePJo=
X-Received: by 2002:a17:902:24:: with SMTP id 33-v6mr13890038pla.341.1521493714912;
 Mon, 19 Mar 2018 14:08:34 -0700 (PDT)
MIME-Version: 1.0
From: Mike Dalessio <mike.dalessio@gmail.com>
Date: Mon, 19 Mar 2018 17:08:14 -0400
Message-ID: <CAGJbjKaR+G7r8DnrXmvf0hXgtSYh8VAU7cJRmt+7iqn1fzwizw@mail.gmail.com>
To: ruby-security-ann@googlegroups.com, rubyonrails-security@googlegroups.com, 
	oss-security@lists.openwall.com, 
	nokogiri-talk <nokogiri-talk@googlegroups.com>
Content-Type: multipart/alternative; boundary="00000000000067c9c00567ca5c1b"
Subject: [oss-security] [CVE-2018-8048] Loofah XSS Vulnerability

--00000000000067c9c00567ca5c1b
Content-Type: text/plain; charset="UTF-8"

Hello all,

A *medium* severity vulnerability has been identified and patched in
Loofah, which is a library used by `rails-html-sanitizer`. This issue has
been assigned CVE-2018-8048.

The public notice can be found here:

    https://github.com/flavorjones/loofah/issues/144

To save you a click, I've reproduced the contents of the initial
announcement here.

-----

*# CVE-2018-8048 - Loofah XSS Vulnerability*

This issue has been created for public disclosure of an XSS / code
injection vulnerability that was responsibly reported by the Shopify
Application Security Team.

*## Severity*

Medium (6.7)


*## Description*

Loofah allows non-whitelisted attributes to be present in sanitized output
when input with specially-crafted HTML fragments.


*## Affected Versions*

Loofah < 2.2.1, but only:

* when running on MRI or RBX,
* in combination with libxml2 >= 2.9.2.

Please note: JRuby users are not affected.


*## Mitigation*

Upgrade to Loofah 2.2.1.


*## History of this public disclosure*

2018-03-19: Initial vulnerability report published

--00000000000067c9c00567ca5c1b--
