X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/03/23/2
Message-ID: <CAH9eYVqAsWPw9ndnA7La993zjDY5tHgGeP2xRd-x5GQty6qdRQ@mail.gmail.com>
Date: Mon, 23 Mar 2020 14:16:50 -0400
From: Brian Demers <bdemers@...che.org>
To: oss-security@...ts.openwall.com
Subject: [CVE-2020-1957] Apache Shiro 1.5.2 released
Content-Type: text/plain; charset=utf-8

The Shiro team is pleased to announce the release of Apache Shiro version
1.5.2.

This security release contains 3 fixes since the 1.5.1 release and is
available for Download now [1].

    CVE-2020-1957:
    Apache Shiro before 1.5.2, when using Apache Shiro with Spring dynamic
controllers,
    a specially crafted request may cause an authentication bypass.

Release binaries (.jars) are also available through Maven Central and
source bundles through Apache distribution mirrors.

For more information on Shiro, please read the documentation [2].

-The Apache Shiro Team

[1] http://shiro.apache.org/download.html
[2] http://shiro.apache.org/documentation.html

