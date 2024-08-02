Received: (qmail 5965 invoked by uid 550); 2 Aug 2024 06:39:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5945 invoked from network); 2 Aug 2024 06:39:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hboeck.de; s=key1;
	t=1722580746; bh=T6Ya1+MPRt4YDg3CBaSJMDUIcofBia0DEUW3gcOPXok=;
	h=Date:From:To:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type:Content-Transfer-Encoding;
	b=PgqrZ7yjmXy+Y3HLhm5TxKqLxwKSgaQx/QZ0U49TvangY2n8JIFa66BApjPcnZpNb
	 I6kMFqQ84/g7FInH4wDwUliMl9Qec3q1rCoSH49CJW3qvQZo5K6RQRBi1/4xMn2Ev6
	 mnVXvm+xc5Fr+9jAALD2cMWvBSECBdPwfHA1WQiYMYfOoytrGy2fGu6FyljhNdXqLN
	 HYLGlHkKIb0pHp1CL5dkK9clVHBQuosgXsATEWAdWjYZWORd1Kcq7LiLsdbqwE6EV1
	 QAyZqBaSavyy+imf/+/2h4O9voqNAbia5T0AL1IQIC2FxgHevj695N3TceRYR9JSUI
	 smVBAgxwKUXNw==
Original-Subject: Re: [oss-security] CPython CVE-2024-6923: Email header injection
 due to unquoted newlines
Author: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Date: Fri, 2 Aug 2024 08:39:04 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20240802083904.7b05d8fa@computer>
In-Reply-To: <f787c960-d069-43c5-b106-fb72bda132cd@oracle.com>
References: 
 <CAADqWPRxo1cNtsjvmYjgZgUdkzjQSb6XBekKweDiXvknvs5SUQ@mail.gmail.com>
	<f787c960-d069-43c5-b106-fb72bda132cd@oracle.com>
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.42; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] CPython CVE-2024-6923: Email header injection
 due to unquoted newlines

Hi,

For what it's worth, I found a somewhat similar issue in PHP not so
long ago.

PHP has two interfaces to pass additional mail headers, one just passing
a multiline string (which unavoidably creates injection risks), and
another one with an array. The latter can avoid newline injections, but
it only did so for "\r\n", not for "\n". (Whether that'll be accepted
depends I believe on the mail server, but most will *ceterum censeo
Hanno moaning about the misguided robustness principle*...)

I hadn't really seen this as a security vulnerability, more a hardening
issue, so I reported it as a suggestion to PHP, and they improved their
filtering. It was fixed/improved:
https://github.com/php/php-src/issues/13402

--=20
Hanno B=C3=B6ck - Independent security researcher
https://itsec.hboeck.de/
