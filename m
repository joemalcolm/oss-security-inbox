Received: (qmail 19626 invoked by uid 550); 17 Apr 2024 16:35:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19587 invoked from network); 17 Apr 2024 16:35:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=beckweb.net
	; s=he112721; h=To:Date:Message-Id:Subject:Mime-Version:
	Content-Transfer-Encoding:Content-Type:From:From:Sender:Reply-To:Subject:Date
	:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=mcds4JfBvpe1ucoyUpOdCQ7RKKUB5cqonOO9Lamd8JQ=; t=1713371743; x=1713803743;
	 b=IhnWiTUfT14ttp638MwLYQ6IProe5u2L8/XcJhRgFoxUvwz10kB6Y6RmgFtCKCIQrDSgSaXODc
	E0MU0lQTVpZf3Qge54TrbafnxLnFfOv5DqVXkkTYyEndZXmfuOrqHQIltL4mC6SK/qOeaI5/9NCV2
	By3cPe9d1eDRacWSQG2iKu51+JtHHKbhh6MEkX3mhAPiH9ZS+ytyo4L7oLWnCv6/pzHyb2tFLuq30
	qQo4q7v26nnaiOA2E/IXlMDPPGS7GlbSF+bW72hcwU/xJQKA6mfHRYtWBRibGoNLswd/qkqaaywOK
	eiqVfRpUT7sXBR6Ze9SIzmrockrsS4ZGdkYPg==;
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.300.61.1.2\))
Message-Id: <30959175-87A8-4BE7-B7A8-15B8FFEB48AB@beckweb.net>
Date: Wed, 17 Apr 2024 18:35:21 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3774.300.61.1.2)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1713371743;1f354701;
X-HE-SMSGID: 1rx8Fv-0006JC-NZ
Subject: [oss-security] Terrapin vulnerability in Jenkins CLI client

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* Jenkins 2.452
* Jenkins LTS 2.440.3

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2024-04-17/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-3386 / CVE-2023-48795
The CLI client (`jenkins-cli.jar`) in Jenkins 2.451 and earlier, LTS
2.440.2 and earlier bundles versions of the Apache MINA SSHD library that
are susceptible to CVE-2023-48795 (Terrapin attack). This vulnerability
allows a machine-in-the-middle attacker to reduce the security of an SSH
connection.

NOTE: This only affects the Jenkins CLI client when using the `-ssh`
connection mode, which is not the default.


