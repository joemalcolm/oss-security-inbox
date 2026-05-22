Received: (qmail 9647 invoked by uid 550); 22 May 2026 19:38:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26509 invoked from network); 22 May 2026 11:13:13 -0000
Authentication-Results: apache.org; auth=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apache.org; s=mail;
	t=1779448357; bh=bpwXxmPhyUuQPrtW+OErDXjxNXZvHRdcPjrB5K//OW8=;
	h=Reply-To:From:Date:Subject:To:From;
	b=Oc3Di1/Xsz96ICDwmiDjpI0fQOg/rRadE7LzaoojsvUvhMRaAjxQG1CaRKzTzwRt3
	 J4MR5tkd2oSAOTEC8RXGLMdE+k/xBtC0AlsgNMnYjrerhRx2jxYzgirm7uvU7zSAXg
	 vD84Sd+7bY8taq+ZrlnI+/2GqmoVDx5RZRre0d/L330S0GZzQOy7uupjL2vZJZbrHO
	 uLgL23x6Qul0j+QPBIz3YVedWis8EAK0YBkrvZmA9gwgYQrcYdqWdw/Pl6jQ3keZ4G
	 Zw1duuxe+t0jrtaYdXpnbR5tnU84L7ZRIly1tyXnPeB1imv2SnwgHb3Iic1AblzLIf
	 PcGUpjQSegHZA==
X-Gm-Message-State: AOJu0YwkbUrezUHCqCmsOzKOB6XhKSqlt6LHnl2vYB5yLDVbkL8ySX64
	+CGwEh09U3Jq5kqBUs1t43GIT4llMOVSRPLpiC6hEG/UCyVtsL3RPzQGc4lECBSWy2vlZhZWTjY
	K/OczZCMEgbSZPHGbOL00mv6YGLr9DLI=
X-Received: by 2002:a17:903:1aae:b0:2b9:5d1b:73da with SMTP id
 d9443c01a7336-2beb0741079mr36999225ad.30.1779448355703; Fri, 22 May 2026
 04:12:35 -0700 (PDT)
MIME-Version: 1.0
From: Colm O hEigeartaigh <coheigea@apache.org>
Date: Fri, 22 May 2026 12:12:22 +0100
X-Gmail-Original-Message-ID: <CAB8XdGBg+YSEHyiuBM-vyogE7JHs87F3QGvfDf0Q8RWgn9Z8gA@mail.gmail.com>
X-Gm-Features: AVHnY4IYxzAkQUjrG5Ty-aId41vjzYWlItwuFHE78iQd5U9Ly11FOmuMEnr-yIs
Message-ID: <CAB8XdGBg+YSEHyiuBM-vyogE7JHs87F3QGvfDf0Q8RWgn9Z8gA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2026-44930: Apache CXF: LDAP Injection vulnerability in XKMS LDAP Repository

Severity: important

Affected versions:

- Apache CXF (org.apache.cxf.services.xkms:cxf-services-xkms-x509-repo-ldap)
4.2.0 before 4.2.1
- Apache CXF (org.apache.cxf.services.xkms:cxf-services-xkms-x509-repo-ldap)
4.0.0 before 4.1.6
- Apache CXF (org.apache.cxf.services.xkms:cxf-services-xkms-x509-repo-ldap)
before 3.6.11

Description:

An LDAP injection vulnerability in the LDAP Certificate repository of
the XKMS server in Apache CXF may allow an attacker to retrieve
arbitrary certificates from the repository.
Users are recommended to upgrade to versions 4.2.1, 4.1.6 or 3.6.11,
which fix this issue.

References:

https://cxf.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-44930
