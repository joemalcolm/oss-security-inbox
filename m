Received: (qmail 7341 invoked by uid 550); 9 May 2026 04:22:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 6097 invoked from network); 8 May 2026 12:17:58 -0000
Authentication-Results: apache.org; auth=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apache.org; s=mail;
	t=1778242667; bh=7am6SoNvhepJpshoY1FoUEMaH4Ughga0KIVBVeC241s=;
	h=Date:To:From:Reply-To:Subject:From;
	b=Ofihel/puiIjCQQavBhSZuRwK+ATX27nYuma0SYZFP/3J/GRrbrE2crlM1IGndB4Y
	 1TlMp8aqNMCiqpC5wcZNGWw/QiwOn4tfKqBMdAYqW/wt8lXo2RaRUmORavtj5w9uzW
	 /rBJ3qv22Yb505ecJa2GpSLTmJK0GK4Q9/xVLrBANZO59+AQYM9GTSKSiQcyBFuXkn
	 Z/BS3pu23NY1/bOqo29tSoEWqyP22w9yzb9MOEad3Ne4qNvM97uJLuXricYbkJofb/
	 SL17sSqL2FeyzRkvr6lYPgAL+KNQpSc6qIDQ+wIZayv6GNGfT8oguFQdMi8/zTHDhj
	 AxvM18ebjDzCw==
Message-ID: <de79607e-b1df-487e-a4d5-d8d23da3bda0@apache.org>
Date: Fri, 8 May 2026 14:17:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
From: "Piotr P. Karwasz" <pkarwasz@apache.org>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2025-69233: Apache CloudStack: Domain/account resources limits
 not honored

Severity: moderate

Affected versions:

- Apache CloudStack 4.0.0 through 4.20.2.0
- Apache CloudStack 4.21.0.0 through 4.22.0.0

Description:

Due to multiple time-of-check time-of-use race conditions in the
resource count check and increment logic, as well as missing
validations, users of the platform are able to exceed the allocation
limits configured for their accounts/domains. This can be used by an
attacker to degrade the infrastructure's resources and lead to denial of
service conditions.

Users are recommended to upgrade to Apache CloudStack versions 4.20.3.0
or 4.22.0.1, or later, which fixes this issue.

Credit:

Fernando Oliveira <ferolicar82@gmail.com> (reporter)
Gustavo Viana <viana.gust@gmail.com> (reporter)

References:

https://lists.apache.org/thread/n8mt5b7wkpysstb8w7rr9f02kc5cq2xm
https://cloudstack.apache.org/
https://www.cve.org/CVERecord?id=CVE-2025-69233

