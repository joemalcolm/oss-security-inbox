Received: (qmail 7853 invoked by uid 550); 2 Oct 2024 13:40:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7818 invoked from network); 2 Oct 2024 13:40:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=beckweb.net
	; s=he112721; h=To:Date:Message-Id:Subject:Mime-Version:
	Content-Transfer-Encoding:Content-Type:From:From:Sender:Reply-To:Subject:Date
	:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=KtkHhs0QKclbHLZrbSM9s2kn18b04Z+U+F1JtiT1QYI=; t=1727876407; x=1728308407;
	 b=IuqLtKdJqM1BZ2OyAnkYslmD+LafYtHRnTBikDZeRPLefXzXV9dUasrCeHgb4/sdcae46nRuA8
	HaU4Md0huj5mdUv1pcmWjh9TDf3F9fN8TQVDr6q22ttjquahReHBF9iNnAKKlNh72ARRIdmAaRP39
	MZKq72ATpYG05GBQN+peJEIlBJ+ohYG37vEhD82JH8//79+Tv/tioopDTRCxW7lEzyaKPbJ4JQeJq
	iopwWdesBZt298zfoSDMrxJg1UF2baHifkbYp288DptSdvQgNLet7S4kRB0NXdKVk+eCMMbBX/eNO
	mleS/AIznJZBcGpy8IBGyVeiEWsXDPyVgkNbA==;
From: Daniel Beck <ml@beckweb.net>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3776.700.51.11.1\))
Message-Id: <CFB3E269-B6B5-4497-A131-75FF0887E890@beckweb.net>
Date: Wed, 2 Oct 2024 15:39:46 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3776.700.51.11.1)
X-bounce-key: webpack.hosteurope.de;ml@beckweb.net;1727876407;8c6a3173;
X-HE-SMSGID: 1svza8-0000V8-Fz
Subject: [oss-security] Multiple vulnerabilities in Jenkins and Jenkins plugins

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* Jenkins 2.479
* Jenkins LTS 2.462.3
* Credentials Plugin 1381.v2c3a_12074da_b_
* OpenId Connect Authentication Plugin 4.355.v3a_fb_fca_b_96d4


Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2024-10-02/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-3451 / CVE-2024-47803
Jenkins provides the `secretTextarea` form field for multi-line secrets.

Jenkins 2.478 and earlier, LTS 2.462.2 and earlier does not redact
multi-line secret values in error messages generated for form submissions
involving the `secretTextarea` form field.

This can result in exposure of multi-line secrets through those error
messages, e.g., in the system log.


SECURITY-3448 / CVE-2024-47804
Jenkins provides APIs for fine-grained control of item creation:

* Authorization strategies can prohibit the creation of items of a given
  type in a given item group.
* Item types can prohibit creation of new instances in a given item group.

If an attempt is made to create an item of a prohibited type through the
Jenkins CLI or the REST API and either of the above checks fail, Jenkins
2.478 and earlier, LTS 2.462.2 and earlier creates the item in memory, only
deleting it from disk.

This allows attackers with Item/Create permission to bypass these
restrictions, creating a temporary item. With Item/Configure permission,
they can also save the item to persist it.


SECURITY-3373 / CVE-2024-47805
Credentials Plugin 1380.va_435002fa_924 and earlier, except
1371.1373.v4eb_fa_b_7161e9, does not redact encrypted values of credentials
using the `SecretBytes` type (e.g., Certificate credentials, or Secret file
credentials from Plain Credentials Plugin) when accessing item `config.xml`
via REST API or CLI.

This allows attackers with Item/Extended Read permission to view encrypted
`SecretBytes` values in credentials.


SECURITY-3441 (1) / CVE-2024-47806
OpenId Connect Authentication Plugin 4.354.v321ce67a_1de8 and earlier does
not check the `aud` (Audience) claim of an ID Token during its
authentication flow, a value to verify the token is issued for the correct
client.

This vulnerability may allow attackers to subvert the authentication flow,
potentially gaining administrator access to Jenkins.


SECURITY-3441 (2) / CVE-2024-47807
OpenId Connect Authentication Plugin 4.354.v321ce67a_1de8 and earlier does
not check the `iss` (Issuer) claim of an ID Token during its authentication
flow, a value that identifies the Originating Party (IdP).

This vulnerability may allow attackers to subvert the authentication flow,
potentially gaining administrator access to Jenkins.



