X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/04/10/1
Message-ID: <be3b46f7-0dbf-95cf-b512-1e4a4450763a@apache.org>
Date: Mon, 10 Apr 2023 06:14:37 +0000
From: Heping Wang <peacewong@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-27602: Apache Linkis publicsercice module unrestricted upload of file 
Content-Type: text/plain; charset=utf-8

Severity: important

Description:

In Apache Linkis <=1.3.1, The PublicService module uploads files without restrictions on the path to the uploaded files, and file types.


We recommend users upgrade the version of Linkis to version 1.3.2. 

For versions 

<=1.3.1, we suggest turning on the file path check switch in linkis.properties

`wds.linkis.workspace.filesystem.owner.check=true`
`wds.linkis.workspace.filesystem.path.check=true`

Credit:

Laihan (reporter)

References:

https://linkis.apache.org
https://www.cve.org/CVERecord?id=CVE-2023-27602

