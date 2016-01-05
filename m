X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["451" "Tuesday" "5" "January" "2016" "00:30:36" "+0000" "Filippo Valsorda" "ml@filippo.io" "<1451953836.236177.482914922.46C7D6CD@webmail.messagingengine.com>" "14" "[oss-security] CVE Request: python-rsa signature forgery" nil nil nil "1" "2016010500:30:36" "[oss-security] CVE Request: python-rsa signature forgery" (number mark "U       ml@filippo.i Jan  5   14/451   " thread-indent "\"[oss-security] CVE Request: python-rsa signature forgery\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3988 invoked by uid 550); 5 Jan 2016 00:53:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25839 invoked from network); 5 Jan 2016 00:30:50 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=filippo.io; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to:x-sasl-enc:x-sasl-enc; s=mesmtp; bh=B1Z
	1k3z36tbvc39kW7BiCcb382E=; b=S8Kdg9KJ2ii62AaOdCNTlaUkrTQnIQpF5Hr
	boYgkUHIaBB+FPlIt/B+0owOkMcf1OkyRyvIqTsIeTpLV0zPSwds2HrtmATX1nsv
	0Ewt2eKFM2RWl3QMO8zC+gfsK3un7QGeIU0/Mgf3GpWVM1pr5Bght+1DwMDPGfxy
	qWSsqFWU=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=content-transfer-encoding:content-type
	:date:from:message-id:mime-version:subject:to:x-sasl-enc
	:x-sasl-enc; s=smtpout; bh=B1Z1k3z36tbvc39kW7BiCcb382E=; b=cu6Vb
	iJwkv5G31l+gxzq+KrKUv5ZxNXq9gfoCPmnSvFWIam5a3vj5n/JR8n5amSgnpKGD
	CfPfuiagdbUEexpZ54murLRedZp9Cs0LJ+MyGinJw/uf8gf9WYmO42p7fZAt/5IC
	KOw+kkhSH5EOuGF/UmRmjXxMBjeg8SB3mzEDLg=
Message-Id: <1451953836.236177.482914922.46C7D6CD@webmail.messagingengine.com>
X-Sasl-Enc: 09to1UhhrnI2NoNWxXjiM/0kTNCvj+E99TT+ayoROM2E 1451953836
From: Filippo Valsorda <ml@filippo.io>
To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain
X-Mailer: MessagingEngine.com Webmail Interface - ajax-42cc5299
Date: Tue, 05 Jan 2016 00:30:36 +0000
Subject: [oss-security] CVE Request: python-rsa signature forgery

Hello,

please assign a CVE to this signature forgery vulnerability in
python-rsa. It allows an attacker to fake signatures for arbitrary
messages for any key with low exponent "e" (like the common 3).

Writeup:
https://blog.filippo.io/bleichenbacher-06-signature-forgery-in-python-rsa/
Fix:
https://bitbucket.org/sybren/python-rsa/pull-requests/14/security-fix-bb06-attack-in-verify-by/diff
Project: https://pypi.python.org/pypi/rsa

Thanks,
Filippo
