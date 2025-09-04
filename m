Received: (qmail 1127 invoked by uid 550); 4 Sep 2025 15:57:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3839 invoked from network); 4 Sep 2025 15:53:46 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Huajie Wang <benjobs@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <81ab5595-dc7b-a80e-2c2b-ca0ba90cffc9@apache.org>
Content-Transfer-Encoding: 7bit
Date: Thu, 04 Sep 2025 15:53:34 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-30001: Apache StreamPark: Authenticated users can trigger
 remote command execution 

Severity: low 

Affected versions:

- Apache StreamPark 2.1.4 before 2.1.6

Description:

Incorrect Execution-Assigned Permissions vulnerability in Apache StreamPark.

This issue affects Apache StreamPark: from 2.1.4 before 2.1.6.

Users are recommended to upgrade to version 2.1.6, which fixes the issue.

Credit:

Liufeng Yi (ylf@yiliufeng.net) (reporter)

References:

https://streampark.apache.org
https://www.cve.org/CVERecord?id=CVE-2025-30001

