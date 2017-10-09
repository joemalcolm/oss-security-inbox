X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["749" "Monday" "9" "October" "2017" "15:58:30" "+0800" "=?ISO-8859-1?Q?NOIRFATE?=" "noirfate@vip.qq.com" "<tencent_A0FE1C07287ACEC3E61C0508DD6FC7185107@qq.com>" "13" "[oss-security] ImageMagick : CVE-2017-14989 : heap use-after-free in RenderFreetype" nil nil nil "10" "2017100907:58:30" "[oss-security] ImageMagick : CVE-2017-14989 : heap use-after-free in RenderFreetype" (number mark "U       noirfate@vip Oct  9   13/749   " thread-indent "\"[oss-security] ImageMagick : CVE-2017-14989 : heap use-after-free in RenderFreetype\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24266 invoked by uid 550); 9 Oct 2017 08:39:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7753 invoked from network); 9 Oct 2017 07:58:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vip.qq.com;
	s=s201512; t=1507535914;
	bh=KMXinekBK1mS8vHbsbdx8oJ9IMUcbX4tKJ4+JX5oAdU=;
	h=From:To:Subject:Mime-Version:Content-Type:Content-Transfer-Encoding:Date:Message-ID;
	b=AWQpnP9f8J5aL1UVs9USlMV72neNATCVN/VmGwoxSzCJH0Zcf6larpCY1leU7CMLy
	 5Yq5rCsQDDNvOuE4qPHYedNN+JGQXXJXpqAbWuhuiogRA0/dvBOxUhkR3nz/FDYP+G
	 YwGyufUTy+Nr7a2tCG/xuGRKkUttu8K22lj7RVcw=
X-QQ-FEAT: JibMalLukFa8XW/dkOsTU9J38m0GkwOLI+K53l08fzjwz84ZFef+7eRA7wrL+
	vgI3LXFDNX2hnfotT12EaqynhZ+dhvC9jU0a0jHTbZQBJPcleOCHk8MEXwg5cAxCQJ3zCPu
	sWNO/9EVWydTBdk4wrOgnrwArDg2NB+M1133Y38vUdd7xDsn0kkIVgPywal+pAi2pc8CRcd
	6m4Z8hPXbrfGO7M+m5OrlWC/R/b8bWlnS6ukmxvQ57ckvykuVjw0y4eDQxQizd+8haa/5vs
	1s8eFql5mo2Nch
X-QQ-SSF: 00000000000000F000000000000000A
X-HAS-ATTACH: no
X-QQ-BUSINESS-ORIGIN: 2
X-Originating-IP: 106.120.183.218
X-QQ-STYLE: 
X-QQ-mid: webmail598t1507535910t1518144
From: "=?ISO-8859-1?B?Tk9JUkZBVEU=?=" <noirfate@vip.qq.com>
To: "=?ISO-8859-1?B?b3NzLXNlY3VyaXR5?=" <oss-security@lists.openwall.com>
Mime-Version: 1.0
Content-Type: text/plain;
	charset="ISO-8859-1"
Content-Transfer-Encoding: base64
Date: Mon, 9 Oct 2017 15:58:30 +0800
X-Priority: 3
Message-ID: <tencent_A0FE1C07287ACEC3E61C0508DD6FC7185107@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
X-QQ-SENDSIZE: 520
X-QQ-FName: 6782A127DB0D4C588E1651378F7486E4
X-QQ-LocalIP: 10.198.131.167
Subject: [oss-security] ImageMagick : CVE-2017-14989 : heap use-after-free in RenderFreetype

RGVzY3JpcHRpb246DQpUaGUgUmVuZGVyRnJlZXR5cGUgZnVuY3Rpb24gaW4g
TWFnaWNrQ29yZS9hbm5vdGF0ZS5jIGluIEltYWdlTWFnaWNrIGFsbG93cyBh
dHRhY2tlcnMgdG8gY2F1c2UgYSBkZW5pYWwgb2Ygc2VydmljZSB2aWEgYSBj
cmFmdGVkIGZvbnQgZmlsZS4NCg0KQWZmZWN0ZWQgdmVyc2lvbjoNCkltYWdl
TWFnaWNrIDcuMC43LTMgKG1heWJlIHByZXZpb3VzIHZlcnNpb25zIGFyZSBh
ZmZlY3RlZCBhcyB3ZWxsKQ0KDQpGaXhlZCB2ZXJzaW9uOg0KSW1hZ2VNYWdp
Y2sgNy4wLjctNw0KDQpDb21taXQgZml4Og0KaHR0cHM6Ly9naXRodWIuY29t
L0ltYWdlTWFnaWNrL0ltYWdlTWFnaWNrL2NvbW1pdC85Nzc0MGNjYzE3N2Vl
MjY0ZTc5MDkxZmE1NzNkOTk0ZWI2YjA1NjI4DQoNCkRldGFpbHM6DQpodHRw
czovL2dpdGh1Yi5jb20vSW1hZ2VNYWdpY2svSW1hZ2VNYWdpY2svaXNzdWVz
Lzc4MQ0KDQpDcmVkaXQ6DQpUaGlzIGJ1ZyB3YXMgZGlzY292ZXJlZCBieSBZ
aWhhbiBMaWFuIG9mIEdlYXJUZWFtIGF0IFFpaG9vMzYwDQoNCkNWRToNCkNW
RS0yMDE3LTE0OTg5
