X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["294" "Monday" "6" "February" "2017" "13:02:34" "+0100" "Andrey Konovalov" "andreyknvl@google.com" "<CAAeHK+xqSzMxjrs=DX9RVxiJrRKkWq22tLybcKMmFs4ZQZz=Ag@mail.gmail.com>" "11" "[oss-security] CVE Request: Linux: ip6_gre: invalid reads in ip6gre_err()" nil nil nil "2" "2017020612:02:34" "[oss-security] CVE Request: Linux: ip6_gre: invalid reads in ip6gre_err()" (number mark "U       andreyknvl@g Feb  6   11/294   " thread-indent "\"[oss-security] CVE Request: Linux: ip6_gre: invalid reads in ip6gre_err()\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21932 invoked by uid 550); 6 Feb 2017 12:18:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15625 invoked from network); 6 Feb 2017 12:02:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=k+9ZfU13WklWDE0vNjPYH36jOdzwSjdtZTkQqOCtZcs=;
        b=aTxEf0DEHbKgx5jt+FqP1v2MXbOAzPpTtZ3itjlAiyJy2DEK84DvzLtirHjQnjftzu
         eznmtQbK026xKF8SvGrtotmXOI0bxqK8cDZCGxOAyfbenTvse7R0o+2WP01J2fnyF3bM
         /IUwNGaZ4asvlvexhCE9qDOT3qI3ucYOjsvQwVJIm4l+XGVM2/2UW8x1vl8T3Vy7tqlk
         SVuTI5t1VZYhvr4xybPgDk7PBxegVMXh2vWvEkGxXSdhMUCBfazsFMaNNjPoo2JTDAXy
         cPDOT1awCddikSkP5UGgNUul+sYsu+cyuv63myx4hKo6hw2vybhRSY8h86umtPI/pTgB
         aIIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=k+9ZfU13WklWDE0vNjPYH36jOdzwSjdtZTkQqOCtZcs=;
        b=ObRkNNve5VS9Di4kr2x2WRM5ye255Kh+n3pGnoUSulxMhot3HEcEURsnmzLLcBhgSh
         sdgg+TS2Z2MWU7a74HRRYcqHBEDCIZ/6JinId3Lu4xX21wJw+weu09X/E3E7Es9bhpZ9
         fgsjv1FLbiDBPJyWAP0YbOsun7ht5Tkfg8wyY9gPYa5ryZuuV9bCIzYJouLjs8Fl/xTY
         3YLwB4hlRP2knegALnM7toJSELVn2//v+doJLPemfPLrIx3Y43Qcij2UIgA+q1dAYSi1
         lxySWlOE0Q1Zga7xPZ2ivPD7g9PF4isdNpw4bHf9ZDCCn3qx5NzAKGhD7w8fFN6naoq1
         kuMg==
X-Gm-Message-State: AMke39mAn8mPLgb0rs+bxKLkSSzvyr3My1ArS7Rto64vMn9BcG1uER0RqoE/VgRntNTzvZyT4oW8FWKMCn3hDTgT
X-Received: by 10.28.228.213 with SMTP id b204mr9101105wmh.59.1486382554617;
 Mon, 06 Feb 2017 04:02:34 -0800 (PST)
MIME-Version: 1.0
From: Andrey Konovalov <andreyknvl@google.com>
Date: Mon, 6 Feb 2017 13:02:34 +0100
Message-ID: <CAAeHK+xqSzMxjrs=DX9RVxiJrRKkWq22tLybcKMmFs4ZQZz=Ag@mail.gmail.com>
To: cve-assign@mitre.org, oss-security@lists.openwall.com
Cc: Dmitry Vyukov <dvyukov@google.com>, Eric Dumazet <edumazet@google.com>, 
	syzkaller <syzkaller@googlegroups.com>, Kostya Serebryany <kcc@google.com>
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] CVE Request: Linux: ip6_gre: invalid reads in ip6gre_err()

Hi,

There's a bug in the Linux kernel ipv6 implementation which allows a
remote attacker to trigger an out-of-bounds access.

Upsteam fix:
https://git.kernel.org/cgit/linux/kernel/git/davem/net.git/commit/?id=7892032cfe67f4bde6fc2ee967e45a8fbaf33756

Could you assign a CVE for this?

Thanks!
