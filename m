Received: (qmail 3524 invoked by uid 550); 13 Apr 2026 14:31:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17655 invoked from network); 13 Apr 2026 14:27:54 -0000
Authentication-Results: apache.org; auth=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apache.org; s=mail;
	t=1776090364; bh=LDBJhuaXHmtLuO6F/d1v54z7M1YQo0mQif9AisXeA70=;
	h=From:Date:Subject:To:From;
	b=5toHlHrHYDhwtMVdaGbDwLnSfS3e3V23bi2IHdJ7swJHHMfec2rDNpCWryEJVfrRy
	 hGCGzQP5+kZErjk2Qsf5IiNU9JPSdBSXOWo1NUMCgvY6fZurNGC/K6GNG5XHLdeZ9a
	 07XmYYrFhzF5yYIYiPC2jyj2U59hxb7UyNgf2iXyskELs3ZW9yc4GIv8/T8K0Y6E7r
	 jatb8/BB0po3GLR8nq41RENR8dmy6BUsRvaAc4/0KmczHkKEz3loLnXHXhgkgPYk6I
	 1SyVBs90xpyNSmLVpW6Rju1XMxH+r/FFygei31/hdxl2Lo/kSgbZeLmIu+pVLWRn7q
	 gDA+fyWFqCFyQ==
X-Gm-Message-State: AOJu0Yy51ev8fK8t4lC/wEtnjv5LhommQ8lpqcqRZlksLmOkZ92SrP3Z
	eoZATcj62z4+sJlY2cL0mJEIHMTUofiET8+GIwnvahzdrFxQZCQMsrjQK0APnrxXppBgv2nHY8/
	bIzmlA3IlmR2EK7in+bIugRdjzQlgLWU=
X-Received: by 2002:ac8:5d8d:0:b0:50b:4051:2cab with SMTP id
 d75a77b69052e-50dd5c1d36amr214794621cf.58.1776090363916; Mon, 13 Apr 2026
 07:26:03 -0700 (PDT)
MIME-Version: 1.0
From: David Handermann <exceptionfactory@apache.org>
Date: Mon, 13 Apr 2026 09:25:52 -0500
X-Gmail-Original-Message-ID: <CAEqiR7SDjvexnZ13sYUaMFYMcqk+hgLzOmTJ4MwEyrD=Z9tqcA@mail.gmail.com>
X-Gm-Features: AQROBzAIh3-dug8E2i1oM6bnhejaB5WB7SPRtE18QxNuqRpTRRqhuPzAZliv0cU
Message-ID: <CAEqiR7SDjvexnZ13sYUaMFYMcqk+hgLzOmTJ4MwEyrD=Z9tqcA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2026-39816: Apache NiFi: Missing Execute Code Required Permission
 on TinkerpopClientService

Severity: High

Affected versions:

- Apache NiFi (org.apache.nifi:nifi-other-graph-services-nar) 2.0.0-M1
through 2.8.0

Description:

The optional extension component TinkerpopClientService is missing the
Restricted annotation with the Execute Code Required Permission in
Apache NiFi 2.0.0-M1 through 2.8.0. The TinkerpopClientService
supports configuration of ByteCode Submission for the Script
Submission Type, enabling Groovy Script execution in the service prior
to submitting the query. The missing Restricted annotation allows
users without the Execute Code Permission to configure the Service in
installations that use fine-grained authorization and have the
optional TinkerpopClientService installed. Apache NiFi installations
that do not have the nifi-other-graph-services-nar installed are not
subject to this vulnerability. Upgrading to Apache NiFi 2.9.0 is the
recommended mitigation.

This issue is being tracked as NIFI-15800

Credit:

John Walker from ZeroPath (finder)

References:

https://nifi.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-39816
https://issues.apache.org/jira/browse/NIFI-15800

Timeline:

2026-04-03: reported
2026-04-06: patched
