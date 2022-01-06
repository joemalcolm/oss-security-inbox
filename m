X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["948" "Thursday" "6" "January" "2022" "19:58:14" "+0800" "Xiaoxiang Yu" "xxyu@apache.org" nil "20" "[oss-security] CVE-2021-31522: Apache Kylin unsafe class loading" nil nil nil "1" nil nil (number mark "U       xxyu@apache. Jan  6   20/948   " thread-indent "\"[oss-security] CVE-2021-31522: Apache Kylin unsafe class loading\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-31522: Apache Kylin unsafe class loading" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27679 invoked by uid 550); 6 Jan 2022 13:54:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1635 invoked from network); 6 Jan 2022 11:59:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
	s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=L+mEA
	XUG0LXp3nhe6PM/7EDSLgNtQ8ZRTwukphxdoIM=; b=dR3dbtQ+fO39mGSMDanTN
	cIYqN22O8U1yQoUjuDoLvJLEpvTFDp9Id2jwS/myuNCpcxIxw5DeeHulkXYuXIOl
	ESRIRQs6nAHww0oEmEPt/K2aLCFksrGdKexttaZMM0Uax/4xdqFpCxIjnWUnU0oz
	Yh1T3g8isPNTW8+E3RyDSg=
X-Originating-IP: [116.228.210.42]
Date: Thu, 6 Jan 2022 19:58:14 +0800 (CST)
From: "Xiaoxiang Yu" <xxyu@apache.org>
To: oss-security@lists.openwall.com
Cc: forhaby0@gmail.com
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.13 build 20210622(1d4788a8)
 Copyright (c) 2002-2022 www.mailtech.cn 126com
Sender: hit_lacus@126.com
Content-Type: multipart/alternative; 
	boundary="----=_Part_67505_378872646.1641470294515"
MIME-Version: 1.0
Message-ID: <47de7a15.47d0.17e2f40f9f3.Coremail.xxyu@apache.org>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: NMqowACH+fJW2dZhn6QNAA--.17694W
X-CM-SenderInfo: pklwszpdfx2qqrswhudrp/1tbikwiA4lpEDKjX0AAFsB
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Subject: [oss-security] CVE-2021-31522: Apache Kylin unsafe class loading

------=_Part_67505_378872646.1641470294515
Content-Type: text/plain; charset=GBK
Content-Transfer-Encoding: base64

U2V2ZXJpdHk6IG1vZGVyYXRlCgpEZXNjcmlwdGlvbjoKCkt5bGluIGNhbiBy
ZWNlaXZlIHVzZXIgaW5wdXQgYW5kIGxvYWQgYW55IGNsYXNzIHRocm91Z2gg
Q2xhc3MuZm9yTmFtZSguLi4pLgpUaGlzIGlzc3VlIGFmZmVjdHMgQXBhY2hl
IEt5bGluIEFwYWNoZSBLeWxpbiAyIHZlcnNpb24gMi42LjYgYW5kIHByaW9y
IHZlcnNpb25zOyBBcGFjaGUgS3lsaW4gMyB2ZXJzaW9uIDMuMS4yIGFuZCBw
cmlvciB2ZXJzaW9uczsgQXBhY2hlIEt5bGluIDQgdmVyc2lvbiA0LjAuMCBh
bmQgcHJpb3IgdmVyc2lvbnMuCgpNaXRpZ2F0aW9uOgoKVXNlcnMgb2YgS3ls
aW4gMi54ICYgS3lsaW4gMy54IHNob3VsZCB1cGdyYWRlIHRvIDMuMS4zIG9y
IGFwcGx5IHBhdGNoIGh0dHBzOi8vZ2l0aHViLmNvbS9hcGFjaGUva3lsaW4v
cHVsbC8xNjk1LgpVc2VycyBvZiBLeWxpbiA0Lnggc2hvdWxkIHVwZ3JhZGUg
dG8gNC4wLjEgb3IgYXBwbHkgcGF0Y2ggaHR0cHM6Ly9naXRodWIuY29tL2Fw
YWNoZS9reWxpbi9wdWxsLzE3NjMuCgpDcmVkaXQ6CgpibyB5dS0tCgpCZXN0
IHdpc2hlcyB0byB5b3UgISAKRnJvbSCjulhpYW94aWFuZyBZdQ==

------=_Part_67505_378872646.1641470294515--

