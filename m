Received: (qmail 23869 invoked by uid 550); 19 Mar 2025 13:08:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23833 invoked from network); 19 Mar 2025 13:08:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=beckweb.net
	; s=he112721; h=To:Date:Message-Id:Subject:Mime-Version:
	Content-Transfer-Encoding:Content-Type:From:From:Sender:Reply-To:Subject:Date
	:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=EL1MXh1JR6LXWMlqb58veGi6zIBRJoShULzk8mn4axE=; t=1742389718; x=1742821718; 
	b=wABs7rTlfzN+k6pdmLpXbqzEGCzD6BEgkXWO9gGkXuupVgFLw5PPEPTr4fraj9wh7XVom0xeG7K
	w987nrWcD7qXj92uFImYx5oe6RH77Dwxitl6uy2z5UI5MFaQwjvlnP8NVbHqnTRn9a3std3erDoZB
	qGT6gSomxrbIIYQAKd35KeVpWQEwWvQVjEzoRYMCx3M+1a8Gv01mccCq91XbtFNISxnVsmnUcg5J0
	E3S4BeSEflShP3bF3gveFomEOBAugiKUXC7GetwaTqhoWku/Ry3G8IWO2DKxz1Kc+XrOidszI3JBf
	M9Y9RfeS8yVA+Sacdk099tm6bEXkgWp+1YSw==;
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.400.131.1.6\))
Message-Id: <A6EAA39C-0730-480F-AB65-23AECBEDF9E8@beckweb.net>
Date: Wed, 19 Mar 2025 14:08:16 +0100
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3826.400.131.1.6)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1742389718;85c8c0f9;
X-HE-SMSGID: 1tut9m-00E33l-2s
Subject: [oss-security] Multiple vulnerabilities in Jenkins plugins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* EDDSA API Plugin 0.3.0.1-16.vcb_4a_98a_3531c
* Zoho QEngine Plugin 1.0.31.v4a_b_1db_6d6a_f2

Additionally, we announce unresolved security issues in the following
plugins:

* AnchorChain Plugin

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2025-03-19/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-3404 / CVE-2020-36843
EDDSA API Plugin makes the EdDSA-Java library (`ed25519-java`) available to
other plugins.

EDDSA API Plugin 0.3.0-13.v7cb_69ed68f00 and earlier bundles version 0.3.0
of EdDSA-Java, which exhibits signature malleability and does not satisfy
the SUF-CMA (Strong Existential Unforgeability under Chosen Message
Attacks) property. This allows attackers to create new valid signatures
different from previous signatures for a known message.


SECURITY-3529 / CVE-2025-30196
AnchorChain Plugin 1.0 does not limit URL schemes for links it creates
based on workspace content, allowing the `javascript:` scheme.

This results in a stored cross-site scripting (XSS) vulnerability
exploitable by attackers able to control the input file for the Anchor
Chain post-build step.

As of publication of this advisory, there is no fix.


SECURITY-3511 / CVE-2025-30197
Zoho QEngine Plugin stores the QEngine API Key in job `config.xml` files on
the Jenkins controller as part of its configuration.

While this key is stored encrypted on disk, in Zoho QEngine Plugin
1.0.29.vfa_cc23396502 and earlier the job configuration form does not mask
the QEngine API Key form field, increasing the potential for attackers to
observe and capture it.



