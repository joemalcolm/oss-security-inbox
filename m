X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/07/18/1
Message-ID: <bc7463ea-bb83-722a-7bfe-9b8881f9ee19@apache.org>
Date: Mon, 18 Jul 2022 11:22:23 +0000
From: Zhenxu Ke <kezhenxu94@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-36127: Apache SkyWalking NodeJS Agent: Service unavailability impact in NodeJS agent(version <= 0.5.0) 
Content-Type: text/plain; charset=utf-8

Description:

The vulnerability will cause NodeJS services that has this agent installed to be unavailable if the OAP is unhealthy and NodeJS agent can't establish the connection.

