X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/10/12/1
Message-ID: <2fc32b22-64ac-3761-6e7d-e07cb0799f11@apache.org>
Date: Tue, 12 Oct 2021 00:29:24 +0000
From: Eric Friedrich <friede@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2021-42009: Apache Traffic Control Arbitrary Email Content Insertion in /deliveryservices/request 
Content-Type: text/plain; charset=utf-8

Description:

An authenticated Traffic Ops user with Portal-level privileges can send a request with a specially-crafted email subject to the /deliveryservices/request Traffic Ops endpoint to send an email, from the Traffic Ops server, with an arbitrary body to an arbitrary email address.

