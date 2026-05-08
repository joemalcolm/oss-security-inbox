Received: (qmail 30377 invoked by uid 550); 9 May 2026 04:22:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22049 invoked from network); 8 May 2026 12:04:06 -0000
Authentication-Results: apache.org; auth=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apache.org; s=mail;
	t=1778241834; bh=fwpe5kVeuhgELtMx6ZjY4XVLj4XnmMbmOuKolOaSpMA=;
	h=Date:From:To:Reply-To:Subject:From;
	b=c3s97Z6K+CcRRIQMFTccbRKnzovTqy4LGlvDLoh4dMxHAlOfCOuBkdc3y/cEWHlCz
	 +TuaSVPl8Rank/D+YU/UtQvGtuLn6cyGU09luw/x0XlAlN6mVA0raTiztlh+AwRnVN
	 NMjtjtG8z0tX8HPU/71p7YXVZUKihV/sTYaWeABHliq2mheSSSmnj8arGIFytvU05V
	 QXB/51ZsJCyaB+WiaABPtbCWRs7yUTrz7AQpke5m189RHCePGT+3g5yg0WybLBdl+E
	 0vNzraybMnz9pt00zhfVKtHiN55aNwx/acA75CUI48MxHkK4kOGJFrYiF2+wO7K+qh
	 QQJ6wnDkgDWsA==
Message-ID: <54227cb1-d0c7-41c8-9da9-59e874f8488a@apache.org>
Date: Fri, 8 May 2026 14:03:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: "Piotr P. Karwasz" <pkarwasz@apache.org>
Content-Language: en-US
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2025-66170: Apache CloudStack: Any user can list backups that
 they should not have access to

Severity: low

Affected versions:

- Apache CloudStack 4.21.0.0 through 4.22.0.0

Description:

The CloudStack Backup plugin has an improper authorization logic in
versions 4.21.0.0 and 4.22.0.0. Anyone with authenticated user-account
access in CloudStack 4.21.0.0+ environments, where this plugin is
enabled and has access to specific APIs can list backups from any
account in the environment. This vulnerability does not allow them to
see the contents of the backup.

Users are recommended to upgrade to version 4.22.0.1, which fixes the issue.

Credit:

Gabriel Ortiga Fernandes <gabriel.ortiga@hotmail.com> (reporter)
Fabricio Duarte <fabricio.duarte.jr@gmail.com> (reporter)
Gabriel Pordeus Santos <gabrielpordeus@gmail.com> (reporter)

References:

https://lists.apache.org/thread/n8mt5b7wkpysstb8w7rr9f02kc5cq2xm
https://cloudstack.apache.org/
https://www.cve.org/CVERecord?id=CVE-2025-66170

