Received: (qmail 29869 invoked by uid 550); 1 Nov 2022 14:38:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26136 invoked from network); 1 Nov 2022 14:32:25 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jiajie Zhong <zhongjiajie@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <44167bf7-80e2-9442-625c-c153636e3ed3@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 01 Nov 2022 14:32:09 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-34662: Apache DolphinScheduler prior to 3.0.0 allows path
 traversal 

Severity: moderate

Description:

When users add resources to the resource center with a relation path will c=
ause path traversal issues and only for logged-in users. You could upgrade =
to version 3.0.0 or higher

Credit:

This issue was discovered by Jigang Dong of M1QLin Security Team

