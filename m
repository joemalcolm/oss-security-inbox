X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/21/21
Message-ID: <74d44ec7-b52a-e504-b265-5bffa12dff2f@apache.org>
Date: Wed, 21 Oct 2026 11:10:36 +0000
From: Haonan Hou <haonan@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-59229: Apache IoTDB: Legacy Pipe Privilege Escalation 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache IoTDB 2.0.0 before 2.0.11

Description:

The Legacy Pipe receiver protocol (handshake / sendPipeData) uses a
hardcoded SUPER_USER (root) identity when executing data loading and
deletion operations. A user with only SYSTEM-level privileges (such as
USE_PIPE or MAINTAIN) who does NOT have WRITE_DATA or DELETE_DATA
permissions on target databases can send specially crafted PipeData
messages through the Legacy Pipe API, resulting in data loading/deletion
operations executed as root — effectively bypassing IoTDB's permission
model entirely.



This issue affects Apache IoTDB: from 2.0.0 before 2.0.11.



Users are recommended to upgrade to version 2.0.11, which fixes the issue.

Credit:

laodu (finder)

References:

https://iotdb.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-59229

