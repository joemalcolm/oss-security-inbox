X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["883" "Sunday" "10" "May" "2020" "13:21:33" "-0500" "Matt Sicker" "mattsicker@apache.org" "<CACmp6kpAsk8fefZNCLNFSinfSC9Xyyr_wVkc01omALUMJhbE+A@mail.gmail.com>" "21" "[oss-security] [CVE-2018-1285] XXE vulnerability in Apache log4net" nil nil nil "5" "2020051018:21:33" "[oss-security] [CVE-2018-1285] XXE vulnerability in Apache log4net" (number mark "U       mattsicker@a May 10   21/883   " thread-indent "\"[oss-security] [CVE-2018-1285] XXE vulnerability in Apache log4net\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2018-1285] XXE vulnerability in Apache log4net" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29912 invoked by uid 550); 10 May 2020 19:32:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28007 invoked from network); 10 May 2020 18:21:57 -0000
X-Gm-Message-State: AGi0PuYjada7Sv/Al4TfD+3QMgYC9Y1OpvOkXGD43GkqfgpYqc8qW0jY
	LjqADnWnCAbnE9p11XwGL1Xkf/RDAStczix958Q=
X-Google-Smtp-Source: APiQypIkxTUT7G3ysOAyHn9vaec8gBvs9jOFQoXP3OCA6533dkeWAfTJDDeMQE7GSHpW+8IQccizKS0teYpFC6B1usA=
X-Received: by 2002:a6b:bc85:: with SMTP id m127mr11613435iof.89.1589134904241;
 Sun, 10 May 2020 11:21:44 -0700 (PDT)
MIME-Version: 1.0
From: Matt Sicker <mattsicker@apache.org>
Date: Sun, 10 May 2020 13:21:33 -0500
X-Gmail-Original-Message-ID: <CACmp6kpAsk8fefZNCLNFSinfSC9Xyyr_wVkc01omALUMJhbE+A@mail.gmail.com>
Message-ID: <CACmp6kpAsk8fefZNCLNFSinfSC9Xyyr_wVkc01omALUMJhbE+A@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [CVE-2018-1285] XXE vulnerability in Apache log4net

Summary: Apache log4net does not disable XML external entities when
parsing log4net configuration files. This could allow for XXE-based
attacks in applications that accept arbitrary configuration files from
users. [1]

Affected: log4net up to 2.0.8

Mitigation: as there are no further releases of log4net beyond 2.0.8,
and the Logging Services PMC has voted [2] to mark the project
dormant, users should not allow arbitrary configuration files to be
specified from untrusted sources. While this is arguably a
vulnerability, misuse of any framework allowing untrusted input to
configure things is always a bad idea.

[1]: https://issues.apache.org/jira/browse/LOG4NET-575
[2]: https://lists.apache.org/thread.html/r6691036b0f85419e8bc97f6f522b8c353dd250b0a329164167b021a6%40%3Cdev.logging.apache.org%3E

-- 
Matt Sicker
Secretary, Apache Software Foundation
VP Logging Services, ASF
