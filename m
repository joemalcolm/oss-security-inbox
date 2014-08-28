X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/08/28/3
Message-ID: <87tx4xfaz9.fsf@mid.deneb.enyo.de>
Date: Thu, 28 Aug 2014 07:18:34 +0200
From: Florian Weimer <fw@...eb.enyo.de>
To: oss-security@...ts.openwall.com
Subject: CVE-2014-0485: unsafe Python pickle in s3ql
Content-Type: text/plain; charset=utf-8

Nikolaus Rath discovered a vulnerability in s3ql which can result in
remote code execution, caused by the unsafe use of Python's pickle
serialization library.

The upstream commit is here:

  <https://bitbucket.org/nikratio/s3ql/commits/091ac263809b4e8>

(This issue was reported privately to Debian, the distros list was
notified, and this is the public heads-up required by list policy.)
