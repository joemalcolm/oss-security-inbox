X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["649" "Tuesday" "31" "January" "2017" "13:17:43" "+0800" "chunibalon" "chunibalon@gmail.com" "<CAN6_dU-=Z2bXnXSnkjTx6F6-So6gju2QnWWMoAdS-yENVWLY+g@mail.gmail.com>" "19" "[oss-security] CVE request: Out-of-Bound read and write issues in put1bitbwtile()(tiff-4.0.7/libtiff/tif-getimage.c:1352) and putgreytile()(tiff-4.0.7/libtiff/tif-getimage.c:1288)" nil nil nil "1" "2017013105:17:43" "[oss-security] CVE request: Out-of-Bound read and write issues in put1bitbwtile()(tiff-4.0.7/libtiff/tif-getimage.c:1352) and putgreytile()(tiff-4.0.7/libtiff/tif-getimage.c:1288)" (number mark "U       chunibalon@g Jan 31   19/649   " thread-indent "\"[oss-security] CVE request: Out-of-Bound read and write issues in put1bitbwtile()(tiff-4.0.7/libtiff/tif-getimage.c:1352) and putgreytile()(tiff-4.0.7/libtiff/tif-getimage.c:1288)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26242 invoked by uid 550); 31 Jan 2017 07:17:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7714 invoked from network); 31 Jan 2017 05:17:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=H11wO0PrccUu/pTFpmz1lXAOQVHMjoGpM3Jb8RrPsdw=;
        b=jbknGxRnuGXD5hmaiH0uhdwwwrzRQiI7mmwyWRl2nEUETHrDLoqYjYt96PUYe8DElY
         MBO6E66WG6nVk2oFm1+u1A7wNFHs445/OL4S3GHSuN5fU+WD8TyFUUHjasaxtwL28jRg
         FjsshdUGlaR7/i9d38Afm8Xkeic4HTnF0gIcSX7QKO7zzzI3/dFyAu1VI2kmM5GwO811
         ayNjuN3JYBUckFi6Tgr3Lmu0lT7wRHhmeQ+lKpVyCY2zjfxsR6OCvhDdSjaF9LsNly3v
         GK3N9bVEXH7I8Z5Sk+w2KRvpfUW8/S4xlxHPvJ4rcalxqEqiZqDcecQ9zpDRA/WYfUS/
         j3Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=H11wO0PrccUu/pTFpmz1lXAOQVHMjoGpM3Jb8RrPsdw=;
        b=T93Wj8uNr48KpUwTYxMzA+LYY7eKKeVKiRTCGJVa5Cqe2chhz2TIi0zZh1QZr1eYc9
         +UFFhNcU56XTIV9U1uIQCZDiqS+lMNYY9W72yWRQJA5eACf+Y71ibPPYIDM71MrYS0pO
         6VKtC4NHzOzPJW3Wfa7jlg9nV/ypJ7vjnO2j3ZGT3Lfq9dtLg/OhXJbqSNA6YU4vGA/5
         AuiuT/dM/JKqOu6XivjyuVplRbHQLq3/NyFAzgFa3vOnSmTV0NE2fUWpoHvzODgfddMm
         goLhKLNo2pnojhlDcTMS1n7e+0jYkGhX2SZjJPhUDZksYM0IIMVXdp6LQMNyEKjRHwl0
         0Deg==
X-Gm-Message-State: AIkVDXIWaMiTBejChhOys/LNSetxrcmZsT7llN5qeV2F+35qU/hLneVaSSaM0ZFwf8UTIrI9gB6eA+v+JRrGgQ==
X-Received: by 10.107.160.140 with SMTP id j134mr25071543ioe.180.1485839863935;
 Mon, 30 Jan 2017 21:17:43 -0800 (PST)
MIME-Version: 1.0
From: chunibalon <chunibalon@gmail.com>
Date: Tue, 31 Jan 2017 13:17:43 +0800
Message-ID: <CAN6_dU-=Z2bXnXSnkjTx6F6-So6gju2QnWWMoAdS-yENVWLY+g@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Content-Type: multipart/alternative; boundary=001a11407f6e487bbb05475d0d55
Subject: [oss-security] CVE request: Out-of-Bound read and write issues in
 put1bitbwtile()(tiff-4.0.7/libtiff/tif-getimage.c:1352) and putgreytile()(tiff-4.0.7/libtiff/tif-getimage.c:1288)

--001a11407f6e487bbb05475d0d55
Content-Type: text/plain; charset=UTF-8

Hi:

        These issues were discovered via libtiff 4.0.7, however after
upstream analysis they were found that they are in netpbm(10.47.63)
       The url of bug tracker:
        http://bugzilla.maptools.org/show_bug.cgi?id=2654
        http://bugzilla.maptools.org/show_bug.cgi?id=2655
        Then I mailed the maintainer of netpbm and he promised fix them in
the next Netpbm Super Stable release (the release series I tested) at the
end of March.
       Could you please assign CVE id's for these?

Best Regards,
chunibalon of VARAS@IIE

--001a11407f6e487bbb05475d0d55--
