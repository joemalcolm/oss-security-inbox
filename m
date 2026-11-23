X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/23/28
Message-ID: <c1135041-c1c6-5750-764f-b208c340e99c@apache.org>
Date: Mon, 23 Nov 2026 21:28:34 +0000
From: Ian Maxon <imaxon@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-96354: Apache Texera: Missing authorization when adding public projects 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Texera 1.1.0-incubating before 1.3.0-incubating

Description:

Missing Authorization vulnerability in the public project REST API of Apache Texera (incubating).



The public project API did not check that a project had been made public before granting the caller read access to it. Any authenticated user with an approved account (the REGULAR or ADMIN role; new accounts need administrator approval by default) could give themselves lasting read access to other users' private projects and to the private workflows in them, including their version and execution history. Only deployments in which users have created projects are affected; the project feature is hidden in the web UI by default.



This issue affects Apache Texera: from 1.1.0-incubating before 1.3.0-incubating.



Users are recommended to upgrade to version 1.3.0-incubating, which fixes the issue by removing the deprecated project feature and its data.



If you cannot upgrade immediately, configure the reverse proxy in front of Texera to reject every request whose path starts with /api/project, /api/public/project or /api/access/project, and every request whose path contains ';', which the Texera server ignores when routing. Respond with 403 or 404, not 401: from 1.2.0-incubating the web UI treats a 401 as an expired session, and the workflow pages request the project list when they load. Unless an administrator has enabled the project feature, this does not affect other functionality; those project-list requests are simply rejected. Make sure the Texera server is reachable only through that proxy.



Blocking and upgrading do not undo access obtained earlier. Before upgrading, review the project_user_access table, which remains empty unless someone has used the feature: treat any READ grant on a project that is not listed in public_project, and that the project's owner did not give, as suspect. The upgrade deletes this table. Removing a grant does not remove copies the user may already have made of the workflows.

Credit:

n0mi1k (finder)

References:

https://texera.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-96354

