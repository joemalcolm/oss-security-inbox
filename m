X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1705" "Monday" "20" "July" "2020" "04:21:51" "-0400" "Jeffrey Walton" "noloader@gmail.com" "<CAH8yC8m+ZK9AZcYZ0vrSgSTjGsi1F5=hEX9phvSSxhuMbRDEFg@mail.gmail.com>" "40" "[oss-security] Perl 5.32.0 mishandling of rpath and runpath tokens" "^Date:" nil nil "7" "2020072008:21:51" "[oss-security] Perl 5.32.0 mishandling of rpath and runpath tokens" (number mark "        noloader@gma Jul 20   40/1705  " thread-indent "\"[oss-security] Perl 5.32.0 mishandling of rpath and runpath tokens\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Perl 5.32.0 mishandling of rpath and runpath tokens" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3207 invoked by uid 550); 20 Jul 2020 08:22:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3174 invoked from network); 20 Jul 2020 08:22:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=HCoU30r6cDu8PTVDl84vzPfXe0+rP2nXKx45LGKiMk4=;
        b=U9DwS1Uk4NxE87r0R2XuEyYi3KPeBXPhbzQVyCo1EEouZnGTw+g7iqQqDbG4i6Q6ZN
         Kelv3I7ky9ob7hBfGjlkEPWGsMqPN2T5HpU2sccd9jvxKZ6c1iFE+OfoCp5MIZ1U59Ef
         A93jQjzwKkAKQcUvgAG7HiGIX+cs4F7AqhqP6Gb63mjl1YVqGDNiV0cCDrAyInu7XFhm
         JIMQGACqoxaK3zViy+RLtbd68MYmqZYccFOHuD9cwoVZB2jGVHBqPO2G/qyzWwjeCEnR
         CuHeznMvWfXqrc+yZ3o6ysfY8fCK28hneyFP3aNaES6I4rbBBCLGxgO2u5jEStUhcow4
         lqXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=HCoU30r6cDu8PTVDl84vzPfXe0+rP2nXKx45LGKiMk4=;
        b=SaLZB/QKKQuubXj1eBS+5UenxPOlclfkXmRXI5D51Aw6z8fEPvOjzl3B5Rdeiyic9B
         VADUROTeeEH7HBRmaRNAmjcOTdaZFne8Laun3z83OiWLfly39OHapskOKfXL05px/rYJ
         PtG+27azT5wb7v2VUofTqToENL5KJ6zzg0OJXqJIwx048IMp306vsgwStiuk4ntIcQvl
         pOHmq6bKVBHOfUWjcERtlq5KUoIAzWOoY56wjPIri7Q/yVJy7ofxGOh2iE9zGtH9Z2EN
         8RAZhZrf6jdMPgSbYHvCtDb6lPb6JY2CiKLpnnDNwdkhnGh834k+tXgIgo5Os+Cqciqo
         L7iQ==
X-Gm-Message-State: AOAM531+mAr4qqaVABqmqR8mlmWe4Op3jFIm6uE4B5rlQrAsoXYuadG0
	IFyRztD10zDpoQSszzeArlRkcVnXs1mqL5vsyxZBGBv/
X-Google-Smtp-Source: ABdhPJzpMY6YtEIujvBVKB3krgYNxN3X345O1vWD1BJLiDureDBeo/qHgKWFA9k8opdVMxUIWT0g14XKqhQBECI4mnI=
X-Received: by 2002:a92:8b11:: with SMTP id i17mr21764534ild.212.1595233336484;
 Mon, 20 Jul 2020 01:22:16 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAH8yC8m+ZK9AZcYZ0vrSgSTjGsi1F5=hEX9phvSSxhuMbRDEFg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Mon, 20 Jul 2020 04:21:51 -0400
From: Jeffrey Walton <noloader@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Perl 5.32.0 mishandling of rpath and runpath tokens
To: oss-security@lists.openwall.com

Hi Everyone,

Perl mishandles rpath tokens $ORIGIN, $LIB and $PLATFORM. Also see
https://man7.org/linux/man-pages/man8/ld.so.8.html.

Building on Linux or Solaris with LDFLAGS that includes a rpath or runpath:

    -Wl,-R,$ORIGIN/../lib -Wl,-R,$HOME/tmp/ok2delete/lib

results in a rpath or runpath similar to below (Solaris is shown):

    # From $HOME/perl-5.32.0 directory
    $ elfdump libperl.so | grep PATH
    [10]  RUNPATH         0xaf4d
/../lib:/export/home/jwalton/tmp/ok2delete/lib
    [11]  RPATH           0xaf4d
/../lib:/export/home/jwalton/tmp/ok2delete/lib

Now the interesting thing here is, $ORIGIN was expanded to nothing and
/../lib is just /lib. And Solaris /lib directory contains old
libraries, like zLib 1.2.8 and Bzip 1.0.6. zLib 1.2.8 and Bzip 1.0.6
have CVEs against them. So rather than use the new zLib and Bzip in
$HOME/tmp/ok2delete/lib, Perl uses the old ones with CVEs in /lib.

Perl stated they won't fix the problem. Also see
https://github.com/Perl/perl5/issues/17534.

The best workarounds I have found is to run patchelf (Linux) or
editelf (Solaris) on all programs and libraries after 'make' and
before 'make check', and after 'make check' and before 'make install'.
The procedure has to happen twice because Perl rebuilds some things
after 'make', including some shared objects built during 'make check'.

The problem with the workaround is, patchelf and editelf has limited
availability. patchelf is buggy [1,2] and editelf is only available on
Solaris 11 [3].

[1] https://bugzilla.redhat.com/show_bug.cgi?id=1497012
[2] https://bugs.launchpad.net/ubuntu/+source/patchelf/+bug/1888175
[3] https://blogs.oracle.com/solaris/avoiding-ldlibrarypath%3a-the-options-v2
