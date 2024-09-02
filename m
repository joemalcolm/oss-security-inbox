Received: (qmail 25990 invoked by uid 550); 2 Sep 2024 12:53:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9271 invoked from network); 2 Sep 2024 01:55:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1725242092; bh=Dn82qdzfTORypUsj+aQkatrpgjqPeMR2KpZPHPopRSI=;
	h=From:To:Subject:Date;
	b=VJA9TSGnMcJL/bHBhN4wjjQzUeb99nXVQn1Z04nh8U2MQRxU18Bq2r9vtdrAblUDq
	 oot0wsDcE0/qx4gWFNE5EB/5AzPeECwBIqc1dKINs36SpdF56AfLCWY49MWR1p2IFL
	 90IjDSSUxNK3MIRVhkw5y5xVWlY9qbwIzwhns0ZQ=
X-QQ-XMRINFO: MPJ6Tf5t3I/ycC2BItcBVIA=
X-QQ-XMAILINFO: OE1h366RMh4b7Cfoo9l4AM7gEFinxNQfhXFVzyXSBgopTIMPDs6JDqhtjsA20z
	 c5CkcqqlronaS0cd8MqlQZZ38YjRUMUkOWniXq0mMsWoPdZDwVSnhgXCMMLGklcOQ387QekZm+XE+
	 YKuERaRMkXPXMXlZLX0I+nftKMMhGNO1kvzCjXrY5PHfDmuAqPckgS9Bh8Qgk6kJppfg57ZzDTSpT
	 gQ7hC2LTR1UMMWVfGn6TVZFhtjd6reUjKus6JRGyHMHuFsMXTnE2YRzJfOopugaw3/uxV0+GDx6/j
	 75TWR/IS8GiJrRVmuDR7yaMHsfWv5cufKJ8BXRdDzUOmFNTW9FBZl3MFR30+6zEudTZd+Dj0tsRQ2
	 JibBfgv76eAyfw0Yx2zqvKXNifbM0LwoMLZ+qmVToDd+b1p5LkLVKbAxmg5WUxOAymbw6zwOlw+x7
	 fQncVE9XKdzaMxKA4O1M8t13z0wICzEcoac854EyMYS6rRjbGpJ5/xSrGb1wnYlXXlcyYunMMwtyA
	 adq0MuHs7JaP9cRtYICbSZOOh79b5YCQ+mVwhyADoV484+VRNHAQyNpHZ8ONTV8uLNVDt02NQfrb2
	 mLsUfzOaPDa/FDWCvm9XdtNUft95siBRq58dPZWNUuaJ3AdCqT+qj1ba1PgjAItqwBsOOl/TmJpK/
	 8P76CMQ309bTVxJrxbh759NlGxjPW4yZ3xOCPr/mNf/5r57x919A+qIZSPh63j37R/DyiF9fpiCtO
	 fr5FE49y3alBeYk5Ds93VVVwcJUzNtVEJM8UF7NtJFkf/L8qXxZJrDOOZGTWk51pqqBwy5G7560eu
	 KDz+V3hRaljzVcD3wk6nR8dXRroU255lXb1Npv12c2aQgWJuWo6rynWi6rxVb4SvMbLKQ9b2jx7AT
	 eMhE5FdTOMYaAp3ha0OYUkeZbWLUZRN
From: "=?utf-8?B?MjYzOTE2MTk2Nw==?=" <2639161967@qq.com>
To: "=?utf-8?B?b3NzLXNlY3VyaXR5?=" <oss-security@lists.openwall.com>
Mime-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_66D51AEC_3BEB2750_1E828564"
Content-Transfer-Encoding: 8Bit
Date: Mon, 2 Sep 2024 09:54:52 +0800
X-Priority: 3
Message-ID: <tencent_BB0764F9635412BA90A36B3B19EDEEF09905@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
X-QQ-mid: xmseza31-0t1725242092tw7yzwdpb
Subject: [oss-security] Linux kernel: memory leak in arch/powerpc/platforms/powernv/opal-irqchip.c: opal_event_init()
X-Spam: Yes

------=_NextPart_66D51AEC_3BEB2750_1E828564
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: base64

aW4gdGhlIG5ld2VzdCBsaW51eCByZWxlYXNlIHZlcnNpb24sIGluJm5ic3A7L2FyY2gvcG93ZXJw
Yy9wbGF0Zm9ybXMvcG93ZXJudi9vcGFsLWlycWNoaXAuYyZuYnNwO2ZpbGUgLCB0aGUmbmJzcDsN
Cm9wYWxfZXZlbnRfaW5pdCBmdW5jdGlvbiwgdGhlIHZhcmlhYmxlICJuYW1lImRlZmluZWQgaW4g
bGluZSAyNzAsIGFuZCBpcyBhbGxvY2VkIG1lbW9yeSBpbiBsaW5lIDI3NCBvciAyNzYsIGJ1dCBu
b3QgZnJlZSwgY2F1c2UgbWFueSB0aW1lcyBtZW1vcnkgbGVhaywgYW5kIG1vc3Qgb2xkIHJlbGVh
c2UgdmVyc2lvbnMgaGF2ZSB0aGUgcHJvYmxlbS4=

------=_NextPart_66D51AEC_3BEB2750_1E828564--

