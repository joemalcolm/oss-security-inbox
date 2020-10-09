X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/10/09/3
Message-ID: <CANMpf843uQjY+oT8k-C7U_w9yfxNq9jyYDY7Xby3a4oO8RPVSg@mail.gmail.com>
Date: Fri, 9 Oct 2020 12:52:56 -0700
From: James Dailey <jamespdailey@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2018-20243: Apache Fineract: password passed in URL, not via POST
Content-Type: text/plain; charset=utf-8

Passing the password in a URL parameter, instead of POST body, risked
exposing the credentials e.g. in log files and HTTP intermediaries like
proxies.

*Release branch*: The fix is available at
https://github.com/apache/fineract/tree/1.4.0. as of  Sept 18, 2020

The dev list was notified on Oct 8, 2020

https://lists.apache.org/thread.html/r040d46835aff3c192656b549ca82f62d87fb044ef9a9dd49408b49b4%40%3Cdev.fineract.apache.org%3E

