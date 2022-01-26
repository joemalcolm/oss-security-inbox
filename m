X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["648" "Wednesday" "26" "January" "2022" "14:21:09" "+0800" "Zhang Yonglun" "zhangyonglun@apache.org" nil "23" "[oss-security] CVE-2021-45029: Apache ShenYu (incubating) Groovy Code Injection and SpEL Injection" nil nil nil "1" nil nil (number mark "U       zhangyonglun Jan 26   23/648   " thread-indent "\"[oss-security] CVE-2021-45029: Apache ShenYu (incubating) Groovy Code Injection and SpEL Injection\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-45029: Apache ShenYu (incubating) Groovy Code Injection and SpEL Injection" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26043 invoked by uid 550); 26 Jan 2022 11:14:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9811 invoked from network); 26 Jan 2022 06:21:47 -0000
X-Gm-Message-State: AOAM531Pi6iH/ROXMBdXtnhC2JlwGkryyHEsF+jfusOKnZ3CEbwnZ+vp
	OydoqKM32+mQKhhPFmOGFseQz8BCNwz3T+08Z7o=
X-Google-Smtp-Source: ABdhPJx1Wxh3zsUIfEoNknV2UC7JuIFqXQ5phbSJ54CVGQX61csqOttmpCxTkccJVSkEmfaBcA03JswZ8xVCDVTX5Iw=
X-Received: by 2002:a05:6102:9d0:: with SMTP id g16mr7991377vsi.40.1643178080239;
 Tue, 25 Jan 2022 22:21:20 -0800 (PST)
MIME-Version: 1.0
From: Zhang Yonglun <zhangyonglun@apache.org>
Date: Wed, 26 Jan 2022 14:21:09 +0800
X-Gmail-Original-Message-ID: <CA+ZBtZ5fDbBRkgkOC9DsH5jMBNKEf0HLcQQyE4L7PeaWSO-PQQ@mail.gmail.com>
Message-ID: <CA+ZBtZ5fDbBRkgkOC9DsH5jMBNKEf0HLcQQyE4L7PeaWSO-PQQ@mail.gmail.com>
To: oss-security@lists.openwall.com, dev@shenyu.apache.org
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2021-45029: Apache ShenYu (incubating) Groovy Code Injection and
 SpEL Injection

Severity: moderate

Description:

Groovy Code Injection & SpEL Injection which lead to Remote Code Execution.
Apache ShenYu (incubating)  provides some plugins, and we can define
our own Selectors And Rules in which we can set some condition match
including "match = regEx like contain SpEL Groovy".
There are no filters to avoid Remote Code Execution before
parseExpression and Eval.me.
This issue affects Apache ShenYu (incubating)  2.4.0 and 2.4.1.

Mitigation:

Upgrade to Apache ShenYu (incubating) 2.4.2 or apply patch
https://github.com/apache/incubator-shenyu/pull/2576.


--

Zhang Yonglun
Apache ShenYu (Incubating)
Apache ShardingSphere
