Received: (qmail 22262 invoked by uid 550); 6 Jun 2025 13:28:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22175 invoked from network); 6 Jun 2025 13:28:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=beckweb.net
	; s=he112721; h=To:Date:Message-Id:Subject:Mime-Version:
	Content-Transfer-Encoding:Content-Type:From:From:Sender:Reply-To:Subject:Date
	:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=gIDhAdePtRCqNyprbAwCUW3jDtb4wlCuKBFe3lrKlao=; t=1749216483; x=1749648483; 
	b=IW2VcO13dr0S3+5JqzytSS3LwZW6uSSdU/2n6zsRpRmp5zPzsmTdSvldyivjOCgHML5fgoOm8XV
	QCQiXAF7eS8PukmpFwMftkr9E51nMDU+6Cne8ScTTy+MNNCjW+mYZsfqjm+r/bLiFReHajSCLbyhV
	i9b5clanVZgpqGLp0q/MdX87a/qnZ4c9TSpM4CKXs62+Q2UFvD93NfS8iJNJYxBf2Mm2964izIX5L
	kyjvILkwZP1v9fAJm0yCONDZdcwIRnW++eTZIfKVQvxHkbiwXp0GKrRoUbT9quYb7RLIHKUxhuYcd
	YmIpcvXbo9+yWzws4w5GaJNVRwkNuUEdAiOQ==;
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.400.131.1.6\))
Message-Id: <0364D6FB-A2DE-4EA5-9A7A-53E1BC71A544@beckweb.net>
Date: Fri, 6 Jun 2025 15:27:41 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3826.400.131.1.6)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1749216483;9b1f2ff5;
X-HE-SMSGID: 1uNX6t-003dao-2M
Subject: [oss-security] Vulnerability in Jenkins Gatling Plugin

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

We announce unresolved security issues in the following plugins:

* Gatling Plugin

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2025-06-06/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-3588 / CVE-2025-5806
Gatling Plugin 136.vb_9009b_3d33a_e serves Gatling reports in a manner that
bypasses the `Content-Security-Policy` protection introduced in Jenkins
1.641 and 1.625.3.

This results in a cross-site scripting (XSS) vulnerability exploitable by
users able to change report content.

As of publication of this advisory, there is no fix.



