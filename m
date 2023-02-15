Received: (qmail 31829 invoked by uid 550); 15 Feb 2023 14:30:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5841 invoked from network); 15 Feb 2023 03:19:54 -0000
Authentication-Results: apache.org; auth=none
X-Gm-Message-State: AO0yUKUj9ZzH7YtTsLGn20X9SJACbC2EQnDKltyIkJTejMSlwMFRKGPW
	HpYM+DZZ4bmN/0/EW1kPI8lh6XPvr5GfD4oFI/k=
X-Google-Smtp-Source: AK7set+6wvJg5k21TXgfgBZ4dcUHuipkabpj7JZkGK9bdagmQFmsWjGhB+QVb+Ro8RfSnc4MmjwuAxGEC472F5d6oo8=
X-Received: by 2002:a17:906:110a:b0:8ae:1078:722f with SMTP id
 h10-20020a170906110a00b008ae1078722fmr331511eja.9.1676431173674; Tue, 14 Feb
 2023 19:19:33 -0800 (PST)
MIME-Version: 1.0
From: Zhang Yonglun <zhangyonglun@apache.org>
Date: Wed, 15 Feb 2023 11:19:22 +0800
X-Gmail-Original-Message-ID: <CA+ZBtZ6UjvTNKgO6K6Auqxfoue+WzS41BGzN=i6KGuiVurvS+g@mail.gmail.com>
Message-ID: <CA+ZBtZ6UjvTNKgO6K6Auqxfoue+WzS41BGzN=i6KGuiVurvS+g@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: dev@shenyu.apache.org
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2022-42735: Apache ShenYu Admin ultra vires

Severity: low

Description:

Improper Privilege Management vulnerability in Apache Software
Foundation Apache ShenYu.

ShenYu Admin allows low-privilege low-level administrators create
users with higher privileges than their own.

This issue affects Apache ShenYu: 2.5.0.

Work Arounds:

Upgrade to Apache ShenYu 2.5.1 or apply patch
https://github.com/apache/shenyu/pull/3958.

Credit:

xxhzz (finder)

References:

https://shenyu.apache.org
https://www.cve.org/CVERecord?id=CVE-2022-42735

--

Zhang Yonglun
Apache ShenYu & ShardingSphere
