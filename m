Received: (qmail 17587 invoked by uid 550); 28 Feb 2024 15:03:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7667 invoked from network); 28 Feb 2024 14:50:22 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jacques Le Roux <jleroux@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <ca27f754-796d-2c1e-6606-fbfc4212d61b@apache.org>
Content-Transfer-Encoding: 7bit
Date: Wed, 28 Feb 2024 14:52:25 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-23946: Apache OFBiz: Path traversal or file inclusion 

Severity: critical

Affected versions:

- Apache OFBiz before 18.12.12

Description:

Possible path traversal in Apache OFBiz allowing file inclusion.
Users are recommended to upgrade to version 18.12.12, that fixes the issue.

Credit:

Arun Shaji from trendmicro.com (finder)

References:

https://ofbiz.apache.org/download.html
https://ofbiz.apache.org/security.html
https://ofbiz.apache.org/release-notes-18.12.12.html
https://issues.apache.org/jira/browse/OFBIZ-12884
https://ofbiz.apache.org/
https://www.cve.org/CVERecord?id=CVE-2024-23946

