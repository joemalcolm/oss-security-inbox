Received: (qmail 3289 invoked by uid 550); 17 May 2026 18:30:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9833 invoked from network); 17 May 2026 17:55:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cpansec.org; s=gm1;
	t=1779040528;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=U38R5qRQCZRvsqxG/KvUQJbdGuu1GYMouv/tXL6Pzzw=;
	b=Q4PitIKVQlCtDucGP8mRvGo87kikvOD5Nbw4KvTJmSulzKkKLXqnYUMbtu88NEyvC7911J
	WTXJZnK6DXgOcTQPl0M0wONvUK1idtjvvdgVVXkLY79LdELrS/MJCYG/N1WWvViP+PrxiF
	DxslnSzc4avooiemi6VtpDPyFq2QXsgBpUfIdVU8Oa3dlRDgTJGItMpb+QXGm70Ue/+Wpm
	p8XXROpJ4ZXv3ZcZerlYjYl9zcVKl1fprakwnSMqQgyGAip/5uZ3aVjEgAgzV7DrS14JJk
	xaCfCC9lb4vE4cjYq03CfBmC08EWOokwHqEu6mITi3yybVXqjGPirO4k1me4dA==
Message-ID: <9fe97594-392c-49dd-83c9-2c5dfc629b5a@cpansec.org>
Date: Sun, 17 May 2026 18:55:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Robert Rothenberg <rrwo@cpansec.org>
Content-Language: en-GB, en-ZA
To: cve-announce@security.metacpan.org, oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-GND-Sasl: rrwo@cpansec.org
X-GND-Cause: dmFkZTF0SSkf2Ic2Y9lkKBDkEd11nNUfzecryrBjtYeIe+4GhhZqeOZomnL/LyS2y1ji1RqbtrKe4FVFwnD0ndREoq7jKFp41ZfKA7rjPrB3bAGzWsWWv3GBYLeRuDPWJ22BCJWiOsBRL/jh0QgAPVj3bFiAHhCfvjXV3x+oKnEgA4IwcctRLnvf8Ta01a5ZDeNLJ7ruDnj4ghpf1LICQbQHQySIz0Sclqxm1dBj+zSO/qyoE5Y8QppbeuCWKN1Gtc0mBKHl4VwqiH6ykdDYf1ZxBE9vmYYINZYcO83Afu71JeHK0FC7TKm0hopYBwWSduFU4VJQitsM3N42wamQjxyXx5YuGZqtIO0pgVIViJYuLNGNkSUny0WzMz/vWKsvqRFrNQXdR70uKwdBv0NaiUatnYd6feJd7/w6Id5ZP7+7K38p4mz1YvWIrpUNkp2+mFn0XYF7mQxCW1dqA9W1/0ocHS87297WfBjsLdt9MjaO8wUC8E0L5/wAPHQtTkkQR9QctKGbKQdz3lC9vu99oy3PUyHTKZKZewDW0vHwI8smPs1t0bB0meIMFBb79BuiwBnll99sjnjHai7vVd7Yq8Jm8IyJ/SrzUd6u86ePwIeVhYMVary8mpbssB03pJGwpZwGJrWxIV4sU8+TBNL1hq5x6BfeKJMNIyIaRtoCx48t6fcXng
X-GND-State: clean
X-GND-Score: 0
Subject: [oss-security] CVE-2026-46720: Net::Statsd::Tiny versions before 0.3.8 for Perl
 allowed metric injections

========================================================================
CVE-2026-46720                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-46720
   Distribution:  Net-Statsd-Tiny
       Versions:  before 0.3.8

       MetaCPAN:  https://metacpan.org/dist/Net-Statsd-Tiny
       VCS Repo:  https://github.com/robrwo/Net-Statsd-Tiny


Net::Statsd::Tiny versions before 0.3.8 for Perl allowed metric
injections

Description
-----------
Net::Statsd::Tiny versions before 0.3.8 for Perl allowed metric
injections.

The metric names and set values were not checked for newlines, colons
or pipes. Metrics generated from untrusted sources could inject
additional statsd metrics.

Problem types
-------------
- CWE-93 Improper Neutralization of CRLF Sequences

Workarounds
-----------
Apply the patch.

Alternatively, validate that all metrics and setr values sent to the
client based on untrusted data do not contain metric injections

This is the same issue CVE-2026-46719 that affected Net::Statsd::Lite.


Solutions
---------
Upgrade to Net::Statsd::Time version 0.3.8 or later.


References
----------
https://metacpan.org/release/RRWO/Net-Statsd-Tiny-v0.3.8/changes
https://github.com/robrwo/Net-Statsd-Tiny/commit/06f814f52fbcc0b2afddf7a2d6f8137fd3cede13.patch
https://www.cve.org/CVERecord?id=CVE-2026-46719

Timeline
--------
- 2026-05-14: Issue reported to CPANSec
- 2026-05-15: Author notified
- 2026-05-17: Fix released



