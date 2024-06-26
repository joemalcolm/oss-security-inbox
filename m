Received: (qmail 1333 invoked by uid 550); 26 Jun 2024 16:52:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1300 invoked from network); 26 Jun 2024 16:52:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=beckweb.net
	; s=he112721; h=To:Date:Message-Id:Subject:Mime-Version:
	Content-Transfer-Encoding:Content-Type:From:From:Sender:Reply-To:Subject:Date
	:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=b5+o990/PtTCOfLwsyaMQzrdAEDUDtduUyfEDjSLSz4=; t=1719420774; x=1719852774;
	 b=jrTOYOiYZx630jQmTqVuMIcrq4pityqj7J0dhyp5nDjQ3ekWUUImf+wJAIUN3BwF9BImQaQtgw
	NU7JYLcDgEU/WNhY1+ItEWComd4DB/bMdhauAo19yoJ8OoxFkfm2P+jqMBPDH2ZgcJDMmjGy0ZyiF
	Q3183Ka6zU1u3RQLa862EQU9mFxHx4+UGjVNAmo/REggnkOGAjHoH9IANcB1KsA+VjwPfuFGMW69x
	Z8S+Ra9q2fjUhuVFSxpkNUq1Ar0CjaYXAY17fkHfBg/et36mRbFOXR7IBrztd5z3DUCyysa8GnO+c
	rjtgmjWiGplhA20pEWB3uSkNSne4OTyWbm3rA==;
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.300.61.1.2\))
Message-Id: <E80810A1-A473-4C59-85CA-6E1C392E92BA@beckweb.net>
Date: Wed, 26 Jun 2024 18:52:33 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3774.300.61.1.2)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1719420774;87d72ef7;
X-HE-SMSGID: 1sMVsx-0001Md-Gf
Subject: [oss-security] Multiple vulnerabilities in Jenkins plugins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* Bitbucket Branch Source Plugin 887.va_d359b_3d2d8d
* Plain Credentials Plugin 183.va_de8f1dd5a_2b_
* Structs Plugin 338.v848422169819


Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2024-06-26/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-3371 / CVE-2024-39458
When Structs Plugin 337.v1b_04ea_4df7c8 and earlier fails to configure a
build step, it logs a warning message containing diagnostic information
that may contain secrets passed as step parameters.

This can result in accidental exposure of secrets through the default
system log.


SECURITY-2495 / CVE-2024-39459
When creating secret file credentials Plain Credentials Plugin
182.v468b_97b_9dcb_8 and earlier attempts to decrypt the content of the
file to check if it constitutes a valid encrypted secret. In rare cases the
file content matches the expected format of an encrypted secret, and the
file content will be stored unencrypted (only Base64 encoded) on the
Jenkins controller file system.

These credentials can be viewed by users with access to the Jenkins
controller file system (global credentials) or with Item/Extended Read
permission (folder-scoped credentials).

NOTE: Secret file credentials stored unencrypted are unusable, as they
would be decrypted during their use. Any successfully used secret file
credentials are therefore unaffected.


SECURITY-3363 / CVE-2024-39460
Bitbucket Branch Source Plugin 886.v44cf5e4ecec5 and earlier prints the
Bitbucket OAuth access token as part of the Bitbucket URL in the build log
in some cases.



