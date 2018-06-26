X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["747" "Tuesday" "26" "June" "2018" "22:33:32" "+0300" "James Sirota" "jsirota@apache.org" "<1093581530041612@web14o.yandex.ru>" "12" "[oss-security] CVE-2018-1273 fixed in Metron 0.5.0" nil nil nil "6" "2018062619:33:32" "[oss-security] CVE-2018-1273 fixed in Metron 0.5.0" (number mark "U       jsirota@apac Jun 26   12/747   " thread-indent "\"[oss-security] CVE-2018-1273 fixed in Metron 0.5.0\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30400 invoked by uid 550); 26 Jun 2018 19:37:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26583 invoked from network); 26 Jun 2018 19:33:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.com; s=mail; t=1530041612;
	bh=CFwxfRosYJs5/NILBV7zz36LUmf3WIKS2OEbQrLgCtk=;
	h=From:To:Subject:Date:Message-Id;
	b=PcO4iUJPO6sKsHdf7Ra/oTLhpimpyGlCn3PJBWwsBEK7tXqKp67yg4WoV+W/aeb2+
	 XBQHg0j5r4oLYHy/rhNoy5iF7ERu/hduvLkdmvIQJ1/wwwqwDj0kX30Fb6s+92PCS9
	 ZaLSxp4cNs7j7XJVQjHA2sD7igPtrHPGRVWrFmP8=
Authentication-Results: mxback7j.mail.yandex.net; dkim=pass header.i=@yandex.com
From: James Sirota <jsirota@apache.org>
Envelope-From: james-sirota@yandex.com
To: oss-security@lists.openwall.com,
	security@metron.apache.org,
	james sirota <jsirota@hortonworks.com>,
	dev <dev@metron.apache.org>
MIME-Version: 1.0
X-Mailer: Yamail [ http://yandex.ru ] 5.0
Date: Tue, 26 Jun 2018 22:33:32 +0300
Message-Id: <1093581530041612@web14o.yandex.ru>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=utf-8
Subject: [oss-security] CVE-2018-1273 fixed in Metron 0.5.0


The following CVE was fixed in Metron 0.5.0:

[CVEID]: CVE-2018-1273
[PRODUCT]:Spring Data Commons
[VERSION]: versions prior to 1.13 to 1.13.10, 2.0 to 2.0.5, and older
[PROBLEMTYPE]:remote code execution attack
[REFERENCES]: https://pivotal.io/security/cve-2018-1273
[DESCRIPTION]:

Spring Data Commons, versions prior to 1.13 to 1.13.10, 2.0 to 2.0.5, and older unsupported versions, contain a property binder vulnerability caused by improper neutralization of special elements. An unauthenticated remote malicious user (or attacker) can supply specially crafted request parameters against Spring Data REST backed HTTP resources or using Spring Data’s projection-based request payload binding hat can lead to a remote code execution attack.

