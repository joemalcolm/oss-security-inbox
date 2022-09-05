X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/09/05/2
Message-ID: <492c9a55-ddbd-57d7-d6ad-a4a0b7e72cf4@apache.org>
Date: Mon, 05 Sep 2022 08:42:49 +0000
From: Haonan Hou <haonan@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-38370: Apache IoTDB: No authorization of DatabaseConnectController in grafana-connector.  
Content-Type: text/plain; charset=utf-8

Description:

Apache IoTDB grafana-connector version 0.13.0 contains an interface without authorization, which may expose the internal structure of database. Users should upgrade to version 0.13.1 which addresses this issue.

