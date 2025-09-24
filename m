Received: (qmail 9768 invoked by uid 550); 24 Sep 2025 14:45:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11369 invoked from network); 24 Sep 2025 06:31:26 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Haonan Hou <haonan@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <5f244da6-b604-55dc-c262-8ccb38503bb0@apache.org>
Content-Transfer-Encoding: 7bit
Date: Wed, 24 Sep 2025 06:31:07 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-48459: Apache IoTDB: Deserialization of untrusted Data 

Severity: moderate 

Affected versions:

- Apache IoTDB 1.0.0 before 2.0.5

Description:

Deserialization of Untrusted Data vulnerability in Apache IoTDB.

This issue affects Apache IoTDB: from 1.0.0 before 2.0.5.

Users are recommended to upgrade to version 2.0.5, which fixes the issue.

Credit:

Sanny (finder)
75Acol (finder)
stan fang (finder)
Wu Jiang (finder)

References:

https://iotdb.apache.org
https://www.cve.org/CVERecord?id=CVE-2025-48459

