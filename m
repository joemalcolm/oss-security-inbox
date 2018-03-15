X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["892" "Thursday" "15" "March" "2018" "13:55:59" "+0000" "Thomas Kluyver" "thomas@kluyver.me.uk" "<1521122159.1270614.1304206128.19D1CFEA@webmail.messagingengine.com>" "36" "[oss-security] CVE request: maliciously crafted notebook files in Jupyter" "^Cc:" nil nil "3" "2018031513:55:59" "[oss-security] CVE request: maliciously crafted notebook files in Jupyter" (number mark "        thomas@kluyv Mar 15   36/892   " thread-indent "\"[oss-security] CVE request: maliciously crafted notebook files in Jupyter\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11264 invoked by uid 550); 15 Mar 2018 14:26:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13921 invoked from network); 15 Mar 2018 13:56:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kluyver.me.uk;
	 h=cc:content-transfer-encoding:content-type:date:from
	:message-id:mime-version:subject:to:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm2; bh=JPvpAS/RwD8JeWFcPoxCVAQKjG/E5oA7M43l53DwX
	dA=; b=xxUz3mkzifJgriqbdTszAW2qL4ebtjOR5pSviPdk+Kt1xNoHHjcH4l8wl
	V7uHBLPjV59gtg4bmMpCMcEY4ShtasC3msPR//WWm2YJiDD3kjv11v20Srw2g428
	qfizgmkIHEIhcZYeurbqhzr7BMjuOWe04HT0s/llbl+I5Z6QHckv7MyoxN2cgXCu
	lMU2cPE/PxAnXeHxhHIN6NAsgxyxUUgBUBqlMrySX1/Mgi9ohexnmfhtWEASyfEt
	IUEL92UTtRu3Dbhoy6b6hEZZPuGJGBbJU9iDjbbbSHIk5U8QltpW/Ufx6NWgoAkz
	d6uJGjUOH8p5Pjdpi+xwSdolf7GrA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:date:from:message-id:mime-version:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm2; bh=JPvpAS/RwD8JeWFcPoxCVAQKjG/E5
	oA7M43l53DwXdA=; b=J5+5NQ18Faz4jSnQ6KjS1QlWwllcOlla8OTK0a/naojMm
	+zZIryIx8E6h+7kPoKARGB9bfh5jt2TXZF1eNbf3QXyChx2eHNjTCo6eZJke5b4Y
	h534qrlntTp0g8ub2fkEZDOeeNAeMdzDbs9k3xcbByYimsYLK0O1AT78us6Zu0WN
	B3evRPm5Xl/crgEPuonTvw2FrNWYRSpi+TUjMR9fPUvtrzadt/qKORwde9Yn97ov
	2rzUz3UecZRO26+J4qn9sexY7a8hsZwPjSv/YTOATrmBYxC3k5g/4Eq9ERW9XweK
	wgog2RVs6+84dKhrbHhyB7qOJ5q3Vhr2a5Qh8fu0g==
X-ME-Sender: <xms:b3uqWnhpjK_V4l1S4Q6oKpMDAODYZi7u_TK1CWSLkeAWpuhG9JDC0A>
Message-Id: <1521122159.1270614.1304206128.19D1CFEA@webmail.messagingengine.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Mailer: MessagingEngine.com Webmail Interface - ajax-b3834dbb
Cc: security <security@ipython.org>, MinRK <benjaminrk@gmail.com>,
 jkamens@quantopian.com, ssanderson@quantopian.com
Date: Thu, 15 Mar 2018 13:55:59 +0000
From: Thomas Kluyver <thomas@kluyver.me.uk>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: maliciously crafted notebook files in Jupyter
To: oss-security@lists.openwall.com

Email address of requester: security@ipython.org, thomas@kluyver.me.uk, ben=
jaminrk@gmail.com, jkamens@quantopian.com, ssanderson@quantopian.com

Software name: Jupyter Notebook (formerly IPython Notebook)
Type of vulnerability: Maliciously forged file
Attack outcome: Possible remote execution

Vulnerability: A maliciously forged notebook file can bypass sanitization t=
o execute Javascript in the notebook context. Specifically, invalid HTML is=
 'fixed' by jQuery after sanitization, making it dangerous.

Affected versions:

- notebook =E2=89=A4 5.4.0

URI with issues:

- GET /notebook/**

Patches:  not yet finalised

Mitigations:

Upgrade to Jupyter notebook 5.4.1 or 5.5 once available.
If using pip,

    pip install --upgrade notebook

For conda:

    conda update conda
    conda update notebook

Vulnerability reported by vkgonka@mail.ru , via Jonathan Kamens at Quantopi=
an

