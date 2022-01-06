X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1044" "Thursday" "6" "January" "2022" "19:57:24" "+0800" "Xiaoxiang Yu" "xxyu@apache.org" nil "22" "[oss-security] CVE-2021-36774: Apache Kylin: Mysql JDBC Connector Deserialize RCE" nil nil nil "1" nil nil (number mark "U       xxyu@apache. Jan  6   22/1044  " thread-indent "\"[oss-security] CVE-2021-36774: Apache Kylin: Mysql JDBC Connector Deserialize RCE\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-36774: Apache Kylin: Mysql JDBC Connector Deserialize RCE" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28163 invoked by uid 550); 6 Jan 2022 13:54:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1781 invoked from network); 6 Jan 2022 11:59:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
	s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=1iJAj
	a2H9tDaiAKSjo2r2pF6RtsR2Oyc+3sQDWucMtw=; b=R/R7s5MVXqib/WH2i2IMS
	EQUwVdHPgBDaE3MCuftRiAKcb1VYeM7BwMy2Ea6++dB57ZmrqZ9VPcJ4SBMpCNFn
	sjOXqTgF/QIW2EqkXvhmnoVlq/5RDbqg1XO+tNL8diU9ZOyPREFLDCVDTzf+rqQB
	QDtMtWIawOmauN+p7pZ4AI=
X-Originating-IP: [116.228.210.42]
Date: Thu, 6 Jan 2022 19:57:24 +0800 (CST)
From: "Xiaoxiang Yu" <xxyu@apache.org>
To: oss-security@lists.openwall.com
Cc: jincsheng@gmail.com
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.13 build 20210622(1d4788a8)
 Copyright (c) 2002-2022 www.mailtech.cn 126com
Sender: hit_lacus@126.com
Content-Type: multipart/alternative; 
	boundary="----=_Part_67489_1731212383.1641470244621"
MIME-Version: 1.0
Message-ID: <7667fcae.47cc.17e2f40370d.Coremail.xxyu@apache.org>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: NMqowACXGPIl2dZhl6QNAA--.13145W
X-CM-SenderInfo: pklwszpdfx2qqrswhudrp/1tbikwiA4lpEDKjX0AAEsA
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Subject: [oss-security] CVE-2021-36774: Apache Kylin: Mysql JDBC Connector Deserialize RCE

------=_Part_67489_1731212383.1641470244621
Content-Type: text/plain; charset=GBK
Content-Transfer-Encoding: base64

U2V2ZXJpdHk6IG1vZGVyYXRlCgpEZXNjcmlwdGlvbjoKCkFwYWNoZSBLeWxp
biBhbGxvd3MgdXNlcnMgdG8gcmVhZCBkYXRhIGZyb20gb3RoZXIgZGF0YWJh
c2Ugc3lzdGVtcyB1c2luZyBKREJDLiBUaGUgTXlTUUwgSkRCQyBkcml2ZXIg
c3VwcG9ydHMgY2VydGFpbiBwcm9wZXJ0aWVzLCB3aGljaCwgaWYgbGVmdCB1
bm1pdGlnYXRlZCwgY2FuIGFsbG93IGFuIGF0dGFja2VyIHRvIGV4ZWN1dGUg
YXJiaXRyYXJ5IGNvZGUgZnJvbSBhIGhhY2tlci1jb250cm9sbGVkIG1hbGlj
aW91cyBNeVNRTCBzZXJ2ZXIgd2l0aGluIEt5bGluIHNlcnZlciBwcm9jZXNz
ZXMuIApUaGlzIGlzc3VlIGFmZmVjdHMgQXBhY2hlIEt5bGluIEFwYWNoZSBL
eWxpbiAyIHZlcnNpb24gMi42LjYgYW5kIHByaW9yIHZlcnNpb25zOyBBcGFj
aGUgS3lsaW4gMyB2ZXJzaW9uIDMuMS4yIGFuZCBwcmlvciB2ZXJzaW9ucy4K
Ck1pdGlnYXRpb246CgpVc2VycyBvZiBLeWxpbiAyLnggJiBLeWxpbiAzLngg
c2hvdWxkIHVwZ3JhZGUgdG8gMy4xLjMgb3IgYXBwbHkgcGF0Y2ggaHR0cHM6
Ly9naXRodWIuY29tL2FwYWNoZS9reWxpbi9wdWxsLzE2OTQuCgpDcmVkaXQ6
CgpqaW5jaGVuIHNoZW5nIC0tCgpCZXN0IHdpc2hlcyB0byB5b3UgISAKRnJv
bSCjulhpYW94aWFuZyBZdQ==

------=_Part_67489_1731212383.1641470244621--

