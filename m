Received: (qmail 9363 invoked by uid 550); 1 May 2026 15:11:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20373 invoked from network); 1 May 2026 08:22:30 -0000
Authentication-Results: apache.org; auth=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apache.org; s=mail;
	t=1777623738; bh=aYUIbkWNKykmndSySQxJzlb60yBJdZGdcb4pf+h3Eb8=;
	h=Reply-To:From:Date:Subject:To:From;
	b=Zo3P1QZQYM+l74X2rEZ8rbeaSu9GBGoUkRfio+MvvJoqNON2YItnwf45qtJbLxjAG
	 EMq8aLA4sYZgSpXmANj7XGvuMOWSALVaD7zOq5DXaMN421kK0hvnkeVu5fdIoARmo6
	 3XrGGWJU4O3JAdo/BBcmiMDDnS80nCoTzED7s+IMbZWKBV6Zv4sNx3geV+4FfDN/L8
	 rN/Y8sKHUIMmL+LkNh+WEwQZ/JtTCwnpOmC41AoEwssEh5dI0j904H2tM7rIwLui1F
	 f4C11HNwZhIA+4VQDQRG7TFK0vn5S4nq0Ct9amqDuKte72sk4VkYwdK2SaRepcP/xX
	 7Ox6TYMXxwWDw==
X-Gm-Message-State: AOJu0Yzs1plQ66kphqpvb6E6MRTU5vwwl5+5tprKgvdJzgDmTojE1BjL
	4n/i5l0l1wcxdU+qKPThTdCUOWSl9KJeAC1KG3prF4keBbh/GUrplu3F1Z6F99kphsMX50QWJNC
	VNG+FqPf1yZVvb8MQZgLiJLcCwuXzoJ8=
X-Received: by 2002:a17:90b:51c2:b0:35e:3aec:718b with SMTP id
 98e67ed59e1d1-364ef507f6amr2211831a91.15.1777623737176; Fri, 01 May 2026
 01:22:17 -0700 (PDT)
MIME-Version: 1.0
From: Colm O hEigeartaigh <coheigea@apache.org>
Date: Fri, 1 May 2026 09:22:03 +0100
X-Gmail-Original-Message-ID: <CAB8XdGBXhqXV9t9Edoe09x5yzvvFbpzRSYaUV7oWFkEwx0cFXw@mail.gmail.com>
X-Gm-Features: AVHnY4Ibkngwm1Cj8w-La-w0NyRETcsSNa448nDn5XvWjGC4zMGGG4p0tO1uu6U
Message-ID: <CAB8XdGBXhqXV9t9Edoe09x5yzvvFbpzRSYaUV7oWFkEwx0cFXw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2026-42404: Apache Neethi: Unrestricted HTTP Redirect Following
 in Policy References

Severity: Medium

Affected versions:

- Apache Neethi before 3.2.2

Description:

Apache Neethi does not impose any restrictions on URIs when manually
fetching remote policy references through the PolicyReference API.
When an application explicitly calls the API to retrieve a policy from
a remote URI, an outbound request is made for arbitrary protocols and
internal IP adddresses. From 3.2.2, only http or https URIs are
allowed, and link-local/multicast/any-local addresses are forbidden.

Users are recommended to upgrade to version 3.2.2, which fixes this issue.

References:

https://ws.apache.org/neethi/security.html
https://www.cve.org/CVERecord?id=CVE-2026-42404
