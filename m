Received: (qmail 6021 invoked by uid 550); 16 Apr 2023 11:19:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9884 invoked from network); 16 Apr 2023 02:48:32 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jialin Qiao <qiaojialin@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <546b3452-d9b0-a16d-76eb-d8a87429e595@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 16 Apr 2023 02:48:14 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-30771: Apache IoTDB Workbench:
 apache/iotdb-web-workbench: forge the JWTToken to access workbench 

Severity: low

Description:

Incorrect Authorization vulnerability in Apache Software Foundation Apache =
IoTDB.This issue affects the iotdb-web-workbench component on 0.13.3. iotdb=
-web-workbench is an optional component of IoTDB, providing a web console o=
f the database.

This problem is fixed from version 0.13.4 of iotdb-web-workbench onwards.

References:

https://iotdb.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-30771

