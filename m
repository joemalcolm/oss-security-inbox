X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["841" "Thursday" "15" "June" "2017" "17:33:48" "-0400" "Alexandre Rebert" "alex@forallsecure.com" "<CAF1AS2h9QxW2Gj67_Oo6HYgWrLR9zsv9meT2CVSaf6dqQq-VfA@mail.gmail.com>" "25" "[oss-security] CVE request: sthttpd remote heap buffer overflow" "^Date:" nil nil "6" "2017061521:33:48" "[oss-security] CVE request: sthttpd remote heap buffer overflow" (number mark "        alex@foralls Jun 15   25/841   " thread-indent "\"[oss-security] CVE request: sthttpd remote heap buffer overflow\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30033 invoked by uid 550); 15 Jun 2017 21:41:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13581 invoked from network); 15 Jun 2017 21:34:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:sender:from:date:message-id:subject:to;
        bh=7JXsfdbyBJh4oeDiFPp1HWICVGKF2qeljjjt0IZLcVM=;
        b=ryGQjNKaW4+2ku7CjJ2fmWKcYkjH6oG/7rp80sUwSOyc0tGpHjRinJRBTLskSW01tB
         ffCRMJ0kWYDUwScQg3LnvVcqyfeUPJhvS099LiDyYebIhZ5sWRYE3dbwat3QyQQ/SIBa
         /b3Ju3keAU6utkrHyH4sHQGmdhlW9BCZFSdnhoYphBuDLFDmDglpu4k37JI5hvv6Hyak
         ZxRk/aX+hGrOUihtQfzyYC3VEvO4ViNfekxGsA3XBtVEDjlMfL/O6JQbILhLowriwKHR
         SX2zdUMnZESm6n94Y8G7aY3n7b28bBsFMd0V07EwDqRL+zxXKo3WbbJ+icRk+4x78Gbt
         y/4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:reply-to:sender:from:date
         :message-id:subject:to;
        bh=7JXsfdbyBJh4oeDiFPp1HWICVGKF2qeljjjt0IZLcVM=;
        b=JpK1pzxuLQKx4JEclS/Exf9cvWgPbOjpxQ0v9goJAoUr/OSeiWsf192wKeMayw5qIx
         bxz61QfbaldgZwJz9xAAOUVYXply3WSgiaDxpOZ8DywSQ2OCFlil7Uq5+s7be3JkHEmH
         /lqUQOKt7ratjTGR/Fq3Rsz/bgz/PpXVSZOYYDrTH/ZOklspi2laCuzeNIf7taCbMf/H
         eTxaIwA0OFbA3am4pc7SRWTVbdvAdj87DrtJHoRKFHwmh67DkMvyQ4sXYndRy5fsarXS
         6ERe0romk8Qzms5/SXHmHkpMe/vTuZGZ8TaG4ehBmIxW3wz39kbVuTxgreOx64wZDEUE
         rZ1Q==
X-Gm-Message-State: AKS2vOzyYamuO4TWh+GYZtnLsftuOKuOq60Qbbk736X3Y6G3tmI82Hv6
	GJskds8SD//uFA1f2GwspUOXuKEdb4kK0U4=
X-Received: by 10.202.192.193 with SMTP id q184mr3572300oif.179.1497562449347;
 Thu, 15 Jun 2017 14:34:09 -0700 (PDT)
MIME-Version: 1.0
X-Google-Sender-Auth: 3_ItY-7b-jjWLuDWtQJncutf8FA
Message-ID: <CAF1AS2h9QxW2Gj67_Oo6HYgWrLR9zsv9meT2CVSaf6dqQq-VfA@mail.gmail.com>
Content-Type: multipart/alternative; boundary="001a113dd09ad28ee00552066d21"
Date: Thu, 15 Jun 2017 17:33:48 -0400
From: Alexandre Rebert <alex@forallsecure.com>
Reply-To: oss-security@lists.openwall.com
Sender: alexandre.rebert@gmail.com
Subject: [oss-security] CVE request: sthttpd remote heap buffer overflow
To: oss-security@lists.openwall.com

--001a113dd09ad28ee00552066d21
Content-Type: text/plain; charset="UTF-8"

Hello,

sthttpd [1], is a fork of thttpd, a small, fast, multiplexing webserver.
Our fuzzing tools recently found a heap buffer overflow in the request
parsing code that can be triggered remotely. The patch was recently fixed
[2], and the bug was introduced in [3].  It seems that it's also affecting
thttpd 2.25b present in OpenSUSE [4].

Let us know if you need more information.

Thanks
Alex from ForAllSecure

[1] https://github.com/blueness/sthttpd
[2]
https://github.com/blueness/sthttpd/commit/c0dc63a49d8605649f1d8e4a96c9b468b0bff660
[3]
https://github.com/blueness/sthttpd/commit/aa3f36c0bf2aef1ffb17f5188ccf5e8afc13d3dc
[4]
https://build.opensuse.org/package/view_file/server:http/thttpd/thttpd-2.25b-strcpy.patch?expand=1

--001a113dd09ad28ee00552066d21--
