X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/05/17/3
Message-ID: <CA+ZBtZ7fwTPbbEcZbd0qPQHqB4xZDg1LRhk2hZSEUBx0Qj7waA@mail.gmail.com>
Date: Tue, 17 May 2022 13:50:48 +0800
From: Zhang Yonglun <zhangyonglun@...che.org>
To: oss-security@...ts.openwall.com
Cc: dev@...nyu.apache.org
Subject: CVE-2022-26650: Apache ShenYu (incubating) Regular expression denial of service
Content-Type: text/plain; charset=utf-8

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
