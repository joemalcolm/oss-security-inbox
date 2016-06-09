X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/06/09/5
Message-ID: <20160609150629.GC7655@suse.de>
Date: Thu, 9 Jun 2016 17:06:29 +0200
From: Marcus Meissner <meissner@...e.de>
To: OSS Security List <oss-security@...ts.openwall.com>, cve-assign@...re.org
Subject: CVE Request: haproxy remote denial of service via reqdeny
Content-Type: text/plain; charset=utf-8

Hi,

This is a remote denial of service against haproxy (uncontrollable crash).

http://git.haproxy.org/?p=haproxy-1.6.git;a=commit;h=60f01f8c89e4fb2723d5a9f2046286e699567e0b

The problem was apparently introduced in haproxy 1.6.0, and is fixed in git (which will become 1.6.6).

Ciao, Marcus
