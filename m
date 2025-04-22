Received: (qmail 17687 invoked by uid 550); 24 Apr 2025 18:08:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20146 invoked from network); 22 Apr 2025 11:37:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=deepin.org;
	s=ukjg2408; t=1745321809;
	bh=fp9ZTHW8PE1hmxnpkVasMTxgCIk8T69kXnGDTuQvU3Y=;
	h=From:To:Subject:Mime-Version:Date:Message-ID;
	b=vJdy8TtJ0HObBAt5gVwzcZk6o0sToc/xpxjEEqlI0XqZb6YESaU+gbZwbV4/HWQCt
	 6N+2UVyw1IaeljqV8RKlxQSo6/YeglY/bbRhsqZ7KcojTDMDAofBAzmMlcPmpd1i0Z
	 RK3QrHoBn+kTBETzNnaoJ8dvY4izB138X2A2sGHk=
EX-QQ-RecipientCnt: 1
X-QQ-GoodBg: 2
X-QQ-SSF: 0040000000000010
X-QQ-FEAT: D4aqtcRDiqQvyXu5j14ud8hWi5rNgdTEUdBB9X4f7ME=
X-QQ-BUSINESS-ORIGIN: 2
X-QQ-Originating-IP: u/Vfo6UwP97BykA+iWxasFGZNJKUL+9onQse8xgccjw=
X-Originating-IP: 110.191.93.173
X-QQ-STYLE: 
X-QQ-mid: lv3gz6a-1t1745321806t8ea5e7b9
From: "=?utf-8?B?55Sw5LiW5p6X?=" <tianshilin@deepin.org>
To: "=?utf-8?B?b3NzLXNlY3VyaXR5?=" <oss-security@lists.openwall.com>
Mime-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_68077F4E_C1EB3340_53CD5BBF"
Content-Transfer-Encoding: 8Bit
Date: Tue, 22 Apr 2025 11:36:46 +0000
X-Priority: 3
Message-ID: <tencent_11C8C35C2CF529292F8447A8@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
X-BIZMAIL-ID: 3431028941334008271
X-QQ-SENDSIZE: 520
Feedback-ID: lv:deepin.org:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: ND42uzdxTIzr7gyw/m/YLRjBe0VY5mk4NKQJ7bZsXxP4hnanMKpZCR3L
	iWEzd/ySSReGL+rYxMfydsq9W7pB7DxOUIURIg7uN8lyy0yK4DectlNl0y85bzBbw9M4Jih
	pp8811WgJJNaWsm5MhP/NoD8c5FL+pURE4rh1RbH0EfsiKN3LSb0QYy0mIgEgtK6zTBLxZd
	uel4GuZLchSzHtZLm9GBK21vWZ1Fufm2rGQZqEFzZAkacoeJ2SctmnImoOGNy3GF7KMsAKx
	Cl0vhT2gJzT23zGnM3WxsHhbQp/gaNokOaYZzHplLcpsfzl8Ztpd7IeFPslV9txfYllJNUI
	qYxG+XAzevZ84cD4Fqd37UDkfQ2BAmx4nHarDRyfWt2qs/PlBBwV9kr/WE1vOprBbSAhlDW
	JqyTNP5qH9Rcqy2RlPc6dZYXV3xak0LutwSN2iQs6cPdwfFWj4na1nLloTzNGyYEIj89uWc
	SloNxJ0GCxs9sV93Xh+ZcSIoprcyj7TvDO4Tbq+n3qeOpoTsg+Hw7JB3AUwGsBjkjSe9SJp
	J4A695JMwdyd66lvZKfBVBvYncZ0LsUIOJAdsjJ9ojFNr7IdxYeKVfs7mGzib3KgqZC9b/C
	bEMZBDGM8IlGgC5g44GGnyGT9vGVXOZKcbP1pf8Kdu62zf1ydvRgCGbXvYkllOGcU22gp4N
	JlabE9ZFv+TUXXFLU6BN6bgMyLPvdM7zQlenkia7lQH8H8aG2GXsTrKof47lPl8jiFejjwc
	SM9l1gaFM3OhBifhqMdTQykfyLOtkAaOpkC6SjJQMRbplGR9def7HOOKY3uqdKyvu83vlYt
	PdcoeqUz60BZwvL3GUOW1r7XEXaeH8uyR91rqgOKdMiFy4FAZDeos15OaIQcOl9Cbtk7xnn
	vg4LIC6hwLblqYsP6+RXhJJcobCOdgv8/Kxr2ssfTwDgqGDfCy/YALE0yHaVRRHL/W4Qzht
	9GKHkNATZkfG8LNh0Xnf11n366RbH+97u5wo=
X-QQ-XMRINFO: NS+P29fieYNw95Bth2bWPxk=
X-QQ-RECHKSPAM: 0
Subject: [oss-security] CVE-2025-3512: Qt Base QTextMarkdownImporter Front Matter Buffer Overflow
X-Spam: Yes

------=_NextPart_68077F4E_C1EB3340_53CD5BBF
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: base64

QSBoZWFwIGJ1ZmZlciBvdmVyZmxvdyB2dWxuZXJhYmlsaXR5IGV4aXN0cyBpbiBgUVRleHRNYXJr
ZG93bkltcG9ydGVyYC4KV2hlbiBwYXJzaW5nIHRoZSBmcm9udCBtYXR0ZXIgb2YgYSBNYXJrZG93
biBmaWxlLCB0aGUgY29kZSBhc3N1bWVzIHRoYXQKbW9yZSBjaGFyYWN0ZXJzIChlLmcuLCBhIG5l
d2xpbmUpIHdpbGwgYmUgcHJlc2VudCBpbiB0aGUgaW5wdXQgYWZ0ZXIKZmluZGluZyB0aGUgY2xv
c2luZyBtYXJrZXIgYC0tLWAuIEhvd2V2ZXIsIGlmIHRoZSBpbnB1dCBzdHJlYW0gZW5kcyB3aXRo
CnRoZSBgLS0tLWAgZGVsaW1pdGVyIGFuZCBsYWNrcyBhIHRyYWlsaW5nIG5ld2xpbmUsIGNhbGxp
bmcKYFFTdHJpbmdWaWV3OjpzbGljZWQoKWAgd2lsbCBhdHRlbXB0IHRvIGFjY2VzcyBjaGFyYWN0
ZXJzIGJleW9uZCB0aGUgZW5kCm9mIHRoZSBzdHJpbmcsIGNhdXNpbmcgdGhlIHByb2dyYW0gdG8g
Y3Jhc2guCgpDYXVzZXMgb2YgdGhlIHZ1bG5lcmFiaWxpdHk6CgoxLiBJbnN1ZmZpY2llbnQgYm91
bmRhcnkgY2hlY2tzOiBUaGUgY2FzZSB3aGVyZSB0aGUgZGVsaW1pdGVyIGFwcGVhcnMgYXQKdGhl
IGVuZCBvZiB0aGUgaW5wdXQgd2FzIG5vdCBoYW5kbGVkIGNvcnJlY3RseS4KMi4gT3Zlcmx5IHBl
cm1pc3NpdmUgbWFya2VyIHJlcXVpcmVtZW50czogQWxsb3dpbmcgdW5leHBlY3RlZCB3aGl0ZXNw
YWNlCm9yIG90aGVyIGZvcm1hdHRpbmcgZXJyb3JzIGxlZCB0byBpc3N1ZXMgaW4gdGhlIHBhcnNp
bmcgbG9naWMuCgogICBBZmZlY3RlZCB2ZXJzaW9uczogNi44LjAgdG8gNi44LjMKICAgVW5hZmZl
Y3RlZCB2ZXJzaW9uczogVmVyc2lvbnMgcHJpb3IgdG8gNi42LjAKCiAgIEZpeCBwYXRjaDogaHR0
cHM6Ly9jb2RlcmV2aWV3LnF0LXByb2plY3Qub3JnL2MvcXQvcXRiYXNlLysvNjM1NTQ2Cg==

------=_NextPart_68077F4E_C1EB3340_53CD5BBF--

