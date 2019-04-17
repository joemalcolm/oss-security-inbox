X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/04/17/3
Message-ID: <CAC7nai00CbzPWbcd2pF-E6hi8pKBrUF5+oanEd++ME1FtsJaoQ@mail.gmail.com>
Date: Wed, 17 Apr 2019 14:21:35 -0400
From: Havoc Pennington <hp@...elift.com>
To: oss-security@...ts.openwall.com
Subject: urllib3: adds system certificates to ssl_context
Content-Type: text/plain; charset=utf-8

A vulnerability has been discovered in the urllib3 Python library.

When verifying HTTPS connections when an SSLContext is passed to
urllib3, system CA certificates will be loaded into the SSLContext
by default in addition to any manually-specified CA certificates.
This causes TLS handshakes that should fail given only the
manually specified certs to succeed based on system CA certs.

This affects urllib3 1.24.1 and below. The fix has been released
in version 1.24.2.

The vulnerability was reported by Christian Heimes.

A CVE ID has been requested, will follow up with it when we have it.

Best
Havoc / on behalf of Tidelift security team & urllib3 team
