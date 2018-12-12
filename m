X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["779" "Wednesday" "12" "December" "2018" "01:27:13" "+0100" "Jann Horn" "jannh@google.com" "<CAG48ez37UKxsRzpkxa8HbrWGAXWQ7H9OYjGzkaZgEmzY+QOF2Q@mail.gmail.com>" "16" "[oss-security] Linux kernel: userfaultfd bypasses tmpfs file permissions (CVE-2018-18397; since 4.11; fixed in 4.14.87 and 4.19.7)" "^Date:" nil nil "12" "2018121200:27:13" "[oss-security] Linux kernel: userfaultfd bypasses tmpfs file permissions (CVE-2018-18397; since 4.11; fixed in 4.14.87 and 4.19.7)" (number mark "        jannh@google Dec 12   16/779   " thread-indent "\"[oss-security] Linux kernel: userfaultfd bypasses tmpfs file permissions (CVE-2018-18397; since 4.11; fixed in 4.14.87 and 4.19.7)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 4060 invoked by uid 550); 12 Dec 2018 08:26:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24150 invoked from network); 12 Dec 2018 00:27:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=oVFA/79OEM9UNFOHJocgFbjpxND1oHqlP+NdU82ZSlg=;
        b=WtunBB9Ya3c8WKcZgajz49q8QmtJhpE53pB9cTw7aFPC7Vbc9833JmAjBukMhdNHRG
         8TqUcaEDdRu1cNOFdpMS99CRD21+tkPezm00MeWYljYUSvomW+vG3neZVw8op80IyO1k
         kjGYaexcfAC3QviTIwI5o9diQe1jFcl2X9OtIJaI/HNgEmoBjla+RPDOt/2s3rftylh6
         IB+j6+WyBAHrRSI6BjUK8BhumcTTNbtOnMDqxsbk1ne3JFTrYwXvL6YiKhfjsxppDrn2
         +0MJMkz094Bl1dsL+8Qfjs8ktGskeonjmwu9hP01U1iiuZyfzRChQFb9yobv28/n0eVh
         NBRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=oVFA/79OEM9UNFOHJocgFbjpxND1oHqlP+NdU82ZSlg=;
        b=nfbVlaF5JrGSL8tcBlkCur/FoND+b88xJvzZ9SzoBJkADj954AWQjfbcHuKO9o5CDn
         D8/dgO4lprwW3CXXaheFnDVwKYv9zITMaRTUGt1HrKSN1eXCMbn1abvTcacr5j5wIApY
         /zx+/S1LfJlSBBc5+Khu2eFts3NYG3CNv5kEIf+IXUOkyY/V3dEa8wv9pjDWXdlBb4Ps
         C34n8Cqyupi9Cg4AY3+yboFLyoFJr2RFmtxKId4k0pg0Gre5ovhWPKgbYUg2VPiiI1bY
         m/pWaZe0RtQbrKzYDfCLcQJgg7DHe/bXIbRjLOcGKKeUYHmhCsc2QnoSP+P4hutr1PDy
         h6nw==
X-Gm-Message-State: AA+aEWbH1WmDOhb88q/Ql6ZA5wFNyVS+3cthXiWtTuBHbFUDScdfnG7n
	VYH1ZzbiiL9NbJdP80McdaHQwbOefIJ0zUk6wXky+vo5p+YzUg==
X-Google-Smtp-Source: AFSGD/WWe3ZzJJ3+YJeWp2sJhEaI2bWSFpm4I3VMOQI814Uu6SMt5F4okAtReVRygWv2P9zx//pDxEUILjpCPF9ECcM=
X-Received: by 2002:a9d:aa9:: with SMTP id 38mr13703049otq.255.1544574459933;
 Tue, 11 Dec 2018 16:27:39 -0800 (PST)
MIME-Version: 1.0
Message-ID: <CAG48ez37UKxsRzpkxa8HbrWGAXWQ7H9OYjGzkaZgEmzY+QOF2Q@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Wed, 12 Dec 2018 01:27:13 +0100
From: Jann Horn <jannh@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Linux kernel: userfaultfd bypasses tmpfs file permissions
 (CVE-2018-18397; since 4.11; fixed in 4.14.87 and 4.19.7)
To: oss-security@lists.openwall.com

NOTE: I have requested a CVE identifier, and I'm sending this message,
to make tracking of the fix easier; however, to avoid missing security
fixes without CVE identifiers, you should *NOT* be cherry-picking a
specific patch in response to a notification about a kernel security
bug.

In Linux kernel versions since 4.11, userfaultfd can be used to write
arbitrary data into holes in sparse tmpfs files to which an attacker
has read-only access.

This is CVE-2018-18397.

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=29ec90660d68bbdd69507c1c8b4e33aa299278b1
https://cdn.kernel.org/pub/linux/kernel/v4.x/ChangeLog-4.14.87
https://cdn.kernel.org/pub/linux/kernel/v4.x/ChangeLog-4.19.7
https://bugs.chromium.org/p/project-zero/issues/detail?id=1700
