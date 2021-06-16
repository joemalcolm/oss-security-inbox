X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/06/16/1
Message-ID: <CAKpcJVYTkZzBaWmt_fLqLw4BNmXuXGzCSvLe9YOB-4sew8w_sQ@mail.gmail.com>
Date: Tue, 15 Jun 2021 22:50:07 -0400
From: Robert Middleton <rmiddleton@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2020-9493: Apache Chainsaw: Java deserialization in Chainsaw
Content-Type: text/plain; charset=utf-8

Reply-to: general@...ging.apache.org

Description:

A deserialization flaw was found in Apache Chainsaw versions prior to
2.1.0 which could lead to malicious code execution.

Mitigation:

Don't configure Chainsaw to read serialized log events.  Use a
different receiver, such as XMLSocketReceiver

Credit:

This issue was reported by @kingkk
