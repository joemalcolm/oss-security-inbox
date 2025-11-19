Received: (qmail 26470 invoked by uid 550); 19 Nov 2025 08:54:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 16271 invoked from network); 19 Nov 2025 08:26:49 -0000
Authentication-Results: apache.org; auth=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apache.org; s=mail;
	t=1763540766; bh=s8zq1YICgJUTLT/R/uUycZ7LdXE/+KqO8O8jwV8aKmM=;
	h=Reply-To:From:Date:Subject:To:From;
	b=0/LyrKTXHQplMKRaaPtMMmIbp+ApFt0afBcf5l4kRjOCU3BrdxG9LkPWluqjc3g+y
	 h3+KmLJriSqFr8zjkFks+3zWpaiQW9FNRRIjBukcTO6Fk9vjMhYRQCLhc/e8r7O4/T
	 qaUyERQwbN/xBAYIeExNCJr7CqxhQuktmKYlcngP01LAVhypIiU2pqyJyh5xSdTIFh
	 jjZ2JXpnmBDd8Ix71+GMdE9nAgUpztuDMraIhhxOWcghD7wH5RixlYkkzLTKCxY2g9
	 IkhAkhNjlAFXrGGWzCzIomK5MCZzKMsKUfjbJeJeMtPwEkvEQPM5FOeFma4rnbRzao
	 s5TIgNKicZSMA==
X-Gm-Message-State: AOJu0Yw5Gbt92ZS4lXvzu0iJfC/IUoF3RBVPrwj0p0KnDjNUdxn9tnbB
	GLk1gZxL+75oTnh2Z+4RO07UjOZdNppI75kOnb3DYxuZV+006DYvipEFVFPNMSGE9OH6MCu4Raf
	SiwvYyCV23VFs10T/SmGtQ8RnTQyJrHM58oCXXWLlQw==
X-Google-Smtp-Source: AGHT+IGkFlaoohM640ZcXqjA1Q6i7Zg9YJhU1W3z3WNIyLM7Lr/6ZPme/4IdsicUuTLabcaBdUA/cU2LgJzpKINR8Qw=
X-Received: by 2002:a17:907:1b05:b0:b73:880a:fde8 with SMTP id
 a640c23a62f3a-b73880b01fbmr1456165466b.12.1763540765809; Wed, 19 Nov 2025
 00:26:05 -0800 (PST)
MIME-Version: 1.0
From: Dan Haywood <danhaywood@apache.org>
Date: Wed, 19 Nov 2025 08:25:54 +0000
X-Gmail-Original-Message-ID: <CALJOYLGnFQLUmqHS-L9tCuJSQsJr=0yvvYd5CgWyxyqf1Wn8yg@mail.gmail.com>
X-Gm-Features: AWmQ_bmCsrmrw984Ji-wtUS9qz17njniJqhKT1ycn8Pvl0INnTD3X89_orxF7U8
Message-ID: <CALJOYLGnFQLUmqHS-L9tCuJSQsJr=0yvvYd5CgWyxyqf1Wn8yg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000e4af280643ee5454"
Subject: [oss-security] CVE-2025-64408: Apache Causeway: Java deserialization vulnerability
 to authenticated attackers

--000000000000e4af280643ee5454
Content-Type: text/plain; charset="UTF-8"

Severity: critical

Affected versions:

- Apache Causeway (org.apache.causeway:*) 2.0.0 through 3.4.0
- Apache Causeway (org.apache.causeway:*) 4.0.0-M1

Description:

Apache Causeway faces Java deserialization vulnerabilities that allow
remote code execution (RCE) through user-controllable URL parameters.
These vulnerabilities affect all applications using Causeway's
ViewModel functionality and can be exploited by authenticated
attackers to execute arbitrary code with application privileges.

This issue affects all current versions.

Users are recommended to upgrade to version 3.5.0, which fixes the issue.

This issue is being tracked as CAUSEWAY-3939

Credit:

Slain Nico (reporter)

References:
https://causeway.apache.org/https://www.cve.org/CVERecord?id=CVE-2025-64408https://issues.apache.org/jira/browse/CAUSEWAY-3939

--000000000000e4af280643ee5454--
