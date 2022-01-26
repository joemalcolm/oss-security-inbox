X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["497" "Wednesday" "26" "January" "2022" "14:46:17" "+0800" "Zhang Yonglun" "zhangyonglun@apache.org" nil "21" "[oss-security] CVE-2022-23223: Apache ShenYu (incubating) Password leakage" nil nil nil "1" nil nil (number mark "U       zhangyonglun Jan 26   21/497   " thread-indent "\"[oss-security] CVE-2022-23223: Apache ShenYu (incubating) Password leakage\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2022-23223: Apache ShenYu (incubating) Password leakage" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 4041 invoked by uid 550); 26 Jan 2022 11:15:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22321 invoked from network); 26 Jan 2022 06:46:42 -0000
X-Gm-Message-State: AOAM5301ADb5qU1gfcgkNQ1t82eImdbtIkzteUYn5v1OGKR6qLCNdOK9
	s+Jh0BILZ74BKWIyTzq2KOZ2isx0+9RJMQ71On0=
X-Google-Smtp-Source: ABdhPJyV5xYfaPrv45aL42YDGdZbSzZGMByedZHsjBvLVu2vK34Lbn1nFbEaNbRK6GN/U9LUCqk75vU8qNTHRDZeir4=
X-Received: by 2002:a67:edc5:: with SMTP id e5mr9692807vsp.6.1643179588540;
 Tue, 25 Jan 2022 22:46:28 -0800 (PST)
MIME-Version: 1.0
From: Zhang Yonglun <zhangyonglun@apache.org>
Date: Wed, 26 Jan 2022 14:46:17 +0800
X-Gmail-Original-Message-ID: <CA+ZBtZ6ENBd4PkJsuQdqG+67Z5c4Vtpp9P2HJxB03UbY3HYTaA@mail.gmail.com>
Message-ID: <CA+ZBtZ6ENBd4PkJsuQdqG+67Z5c4Vtpp9P2HJxB03UbY3HYTaA@mail.gmail.com>
To: oss-security@lists.openwall.com, dev@shenyu.apache.org
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2022-23223: Apache ShenYu (incubating) Password leakage

Severity: moderate

Description:

The HTTP response will disclose the user password.
When users send the request like the following URL
"dashboardUser?currentPage=1&pageSize=12", the response will disclose
all the passwords of the users.
This issue affects Apache ShenYu (incubating) 2.4.0 and 2.4.1.

Mitigation:

Upgrade to Apache ShenYu (incubating) 2.4.2 or apply patch
https://github.com/apache/incubator-shenyu/pull/2357.


--

Zhang Yonglun
Apache ShenYu (Incubating)
Apache ShardingSphere
