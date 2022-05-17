Received: (qmail 9319 invoked by uid 550); 17 May 2022 09:07:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1767 invoked from network); 17 May 2022 05:51:13 -0000
X-Gm-Message-State: AOAM533FEsxsg6JANdZxInTFrYxYtMdPhIUEq94vdj2GkfLYoXtJsTWC
	h/eyhrou3mxc3y4izRC1DP/ZPMBw2A9ZDKcHa4Y=
X-Google-Smtp-Source: ABdhPJxdeedqMVXFPI2wmnEgAyD4+jPbodKwp8f+9/Bu6ubMoDRaR5yda/b/9xH0FX0FYy29nr9hMWVKJBgJjxSGMAI=
X-Received: by 2002:a05:6512:41d:b0:474:2ac3:5a78 with SMTP id
 u29-20020a056512041d00b004742ac35a78mr15154238lfk.109.1652766660397; Mon, 16
 May 2022 22:51:00 -0700 (PDT)
MIME-Version: 1.0
From: Zhang Yonglun <zhangyonglun@apache.org>
Date: Tue, 17 May 2022 13:50:48 +0800
X-Gmail-Original-Message-ID: <CA+ZBtZ7fwTPbbEcZbd0qPQHqB4xZDg1LRhk2hZSEUBx0Qj7waA@mail.gmail.com>
Message-ID: <CA+ZBtZ7fwTPbbEcZbd0qPQHqB4xZDg1LRhk2hZSEUBx0Qj7waA@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: dev@shenyu.apache.org
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2022-26650: Apache ShenYu (incubating) Regular expression denial
 of service

Severity: moderate

Description:

In ShenYu-Bootstrap there's RegexPredicateJudge.java which uses
Pattern.matches(conditionData.getParamValue(), realData) to make
judgments, where both parameters are controllable by the user. This
can cause an attacker pass in malicious regular expressions and
characters causing a resource exhaustion.
This issue affects Apache ShenYu (incubating) 2.4.0, 2.4.1 and 2.4.2.

Mitigation:

Upgrade to Apache ShenYu (incubating) 2.4.3 or apply patch
https://github.com/apache/incubator-shenyu/pull/2975.

--

Zhang Yonglun
Apache ShenYu (Incubating)
Apache ShardingSphere
