X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/08/24/1
Message-ID: <b9120cdb-8cca-699e-bcc2-f4e173b1f2bc@apache.org>
Date: Tue, 24 Aug 2021 08:32:18 +0000
From: Arpad Boda <aboda@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-33191: Apache NiFi - MiNiFi C++: MiNiFi CPP arbitrary script execution is possible on the agent's host machine through the c2 protocol 
Content-Type: text/plain; charset=utf-8

Description:

>From Apache NiFi MiNiFi C++ version 0.5.0 the c2 protocol implements an "agent-update" command which was designed to patch the application binary. 
This "patching" command defaults to calling a trusted binary, but might be modified to an arbitrary value through a "c2-update"
command. Said command is then executed using the same privileges as the application binary.  This was addressed in version 0.10.0

