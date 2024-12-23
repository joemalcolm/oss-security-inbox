Received: (qmail 22089 invoked by uid 550); 23 Dec 2024 15:58:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 29975 invoked from network); 23 Dec 2024 15:02:40 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Eric Friedrich <friede@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <e3440ff4-7ec6-0d54-ec56-ce900631bbf4@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 23 Dec 2024 15:02:31 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-45387: Apache Traffic Control: SQL Injection in Traffic
 Ops endpoint PUT deliveryservice_request_comments 

Affected versions:

- Apache Traffic Control 8.0.0 through 8.0.1
- Apache Traffic Control 7.0.0 before 8.0.0 unaffected

Description:

An SQL injection vulnerability in Traffic Ops in Apache Traffic Control <=
=3D 8.0.1, >=3D 8.0.0 allows a privileged user with role "admin", "federati=
on", "operations", "portal", or "steering" to execute arbitrary SQL against=
 the database by sending a specially-crafted PUT request.

Users are recommended to upgrade to version Apache Traffic Control 8.0.2 if=
 you run an affected version of Traffic Ops.

Credit:

Yuan Luo from Tencent YunDing Security Lab (reporter)

References:

https://trafficcontrol.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-45387

