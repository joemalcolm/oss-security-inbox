Received: (qmail 13894 invoked by uid 550); 20 Mar 2024 22:06:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21983 invoked from network); 20 Mar 2024 21:50:18 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: "Gary D. Gregory" <ggregory@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <1b03af84-6199-6b82-7c43-3b896efdfcd9@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 20 Mar 2024 21:53:38 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-29131: Apache Commons Configuration: StackOverflowError
 adding property in AbstractListDelimiterHandler.flattenIterator() 

Severity: low

Affected versions:

- Apache Commons Configuration 2.0 before 2.10.1

Description:

Out-of-bounds Write vulnerability in Apache Commons Configuration.This issu=
e affects Apache Commons Configuration: from 2.0 before 2.10.1.

Users are recommended to upgrade to version 2.10.1, which fixes the issue.

This issue is being tracked as CONFIGURATION-840=20

Credit:

Bob Marinier (finder)

References:

https://commons.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-29131
https://issues.apache.org/jira/browse/CONFIGURATION-840

