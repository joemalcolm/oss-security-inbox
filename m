X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/02/01/3
Message-ID: <CAH9eYVpH-8Trnfzi_9PznBjBt8KNJf4ySGPtAqT308Afzm2wpQ@mail.gmail.com>
Date: Mon, 1 Feb 2021 11:07:59 -0500
From: Brian Demers <bdemers@...che.org>
To: oss-security@...ts.openwall.com
Subject: [CVE-2020-17523] Apache Shiro authentication bypass
Content-Type: text/plain; charset=utf-8

The Shiro team is pleased to announce the release of Apache Shiro version
1.7.1.

This security release contains 1 fix since the 1.7.0 release and is
available for Download now [1].

Bug
    [SHIRO-797] - Shiro 1.7.0 is lower than using springboot version
2.0.7 dependency error

CVE-2020-17523:
    Apache Shiro before 1.7.1, when using Apache Shiro with Spring, a
specially crafted HTTP request may cause an authentication bypass.

The Apache Shiro team thanks differ from the Zorelworld iLab team for
reporting this issue!

Release binaries (.jars) are also available through Maven Central and
source bundles through Apache distribution mirrors.

For more information on Shiro, please read the documentation [2].

-The Apache Shiro Team

[1] http://shiro.apache.org/download.html
[2] http://shiro.apache.org/documentation.html

