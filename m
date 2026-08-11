X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/11/2
Message-ID: <0101019fefdbbba1-1d91664b-706e-4b7d-a916-1e80ab4bd791-000000@us-west-2.amazonses.com>
Date: Tue, 11 Aug 2026 08:06:22 +0000
From: Thibault Guittet <jira@...hat.atlassian.net>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Subject: PSIRTSUPT-20460 [security] critical vulnerabilities patched in svxlink (RCE)
Content-Type: text/plain; charset=utf-8

—-—-—-—

Reply above this line.



Thibault Guittet commented:

Hello Mark,

Thank you for reporting the security vulnerabilities in svxlink.

We have reviewed the advisories published at [1]https://github.com/sm0svx/svxlink/security/advisories and assigned CVE identifiers to all 14 reported issues via the Fedora CNA. Bugzilla trackers have been opened for the Fedora community maintainer to update the svxlink package to 26.05.1.

svxlink is not shipped in any Red Hat Enterprise product (RHEL, OpenShift, Ansible Automation Platform, etc.). It is available only in Fedora as a community-maintained package.

Below is the mapping between CVE IDs and the upstream GitHub Security Advisories:

CVE	Advisory	Title
	----------	-------
CVE-2026-73141	[2]GHSA-xmcv-mjpv-x46q	Audio decoders: stack VLA exhaustion
CVE-2026-73142	[3]GHSA-5xr9-fmm8-7p8x	remotetrx NetUplink: connection object leak DoS
CVE-2026-73143	[4]GHSA-38fq-mrrg-8rmr	RtlTcp: malformed greeting causes daemon exit
CVE-2026-73144	[5]GHSA-qccg-7pw6-787v	FRN module: unbounded memory growth
CVE-2026-73145	[6]GHSA-58ph-q79f-7x9x	HTTP server: unbounded request accumulation
CVE-2026-73146	[7]GHSA-r2gm-p682-3mpm	svxreflector: use-after-free via reentrant client deletion
CVE-2026-73147	[8]GHSA-pc2g-2p95-4cr5	TCL command injection in reflector client
CVE-2026-73148	[9]GHSA-6wgq-wg3w-jgvx	svxreflector: use-after-free write via dangling JSON reference
CVE-2026-73149	[10]GHSA-mh75-5pr3-qv2p	NetRx: out-of-bounds read via unvalidated MsgAudio length
CVE-2026-73150	[11]GHSA-4f8x-49pf-3x5v	Buffer overflow in APRS message construction
CVE-2026-73151	[12]GHSA-x5r8-rq62-q9cj	remotetrx: unvalidated audio length + exposed transceiver control
CVE-2026-73152	[13]GHSA-4g8q-rgxf-fmgf	EchoLink proxy: integer truncation in message length
CVE-2026-73153	[14]GHSA-624p-cp8x-6hp6	EchoLink RTCP/SDES: out-of-bounds read
CVE-2026-73154	[15]GHSA-5g48-xjmf-7p4q	StationData::setData stack overflow

We appreciate your diligence in reporting these issues.

Regards,
Red Hat Product Security
----------------------------------------------------------------------------------------
[1] https://github.com/sm0svx/svxlink/security/advisories
[2] https://github.com/sm0svx/svxlink/security/advisories/GHSA-xmcv-mjpv-x46q
[3] https://github.com/sm0svx/svxlink/security/advisories/GHSA-5xr9-fmm8-7p8x
[4] https://github.com/sm0svx/svxlink/security/advisories/GHSA-38fq-mrrg-8rmr
[5] https://github.com/sm0svx/svxlink/security/advisories/GHSA-qccg-7pw6-787v
[6] https://github.com/sm0svx/svxlink/security/advisories/GHSA-58ph-q79f-7x9x
[7] https://github.com/sm0svx/svxlink/security/advisories/GHSA-r2gm-p682-3mpm
[8] https://github.com/sm0svx/svxlink/security/advisories/GHSA-pc2g-2p95-4cr5
[9] https://github.com/sm0svx/svxlink/security/advisories/GHSA-6wgq-wg3w-jgvx
[10] https://github.com/sm0svx/svxlink/security/advisories/GHSA-mh75-5pr3-qv2p
[11] https://github.com/sm0svx/svxlink/security/advisories/GHSA-4f8x-49pf-3x5v
[12] https://github.com/sm0svx/svxlink/security/advisories/GHSA-x5r8-rq62-q9cj
[13] https://github.com/sm0svx/svxlink/security/advisories/GHSA-4g8q-rgxf-fmgf
[14] https://github.com/sm0svx/svxlink/security/advisories/GHSA-624p-cp8x-6hp6
[15] https://github.com/sm0svx/svxlink/security/advisories/GHSA-5g48-xjmf-7p4q



View request: https://redhat.atlassian.net/servicedesk/customer/portal/68/PSIRTSUPT-20460?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0Z3QiOiJhbm9ueW1vdXMtbGluayIsInFzaCI6IjU3YmM3YTY1MmIxNTAwMTBiMDAxYWE5YTg0OWU0M2ViODBhMWYyNzE5ZGRkODg2NjRjZDI5ZTc4NTEwYTVjZDIiLCJpc3MiOiJzZXJ2aWNlZGVzay1qd3QtdG9rZW4taXNzdWVyIiwiY29udGV4dCI6eyJ1c2VyIjoiMTc3MTcyIiwiaXNzdWUiOiJQU0lSVFNVUFQtMjA0NjAifSwiZXhwIjoxNzg4ODU0NzgxLCJpYXQiOjE3ODY0MzU1ODF9.PBZsqwL4r0VNJ_8KuwVAfRNL5v6hk3x9QpT5m_rrsT8&sda_source=notification-email

Turn off this request's notifications: https://redhat.atlassian.net/servicedesk/customer/portal/68/PSIRTSUPT-20460/unsubscribe?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0Z3QiOiJhbm9ueW1vdXMtbGluayIsInFzaCI6ImRmNWJlNWI3NjhjZTc5OTgyZTg3ZjA1OGM2MmUyNTU3MTk2NTU5OTZjZmU2ODFhN2MzMzM1ZTFkZWMwNzNjMDIiLCJpc3MiOiJzZXJ2aWNlZGVzay1qd3QtdG9rZW4taXNzdWVyIiwiY29udGV4dCI6eyJ1c2VyIjoicW06N2FiOTU3YjEtYzJjNi00ODU0LTgzNjktZmVhYTZiOWMzNDQyOjBlNDcxODYyLTUyYTEtNGUzMS05ZWJlLWRjYjU4ZmYwMzFhNCIsImlzc3VlIjoiUFNJUlRTVVBULTIwNDYwIn0sImV4cCI6MTc4ODg1NDc4MSwiaWF0IjoxNzg2NDM1NTgxfQ.HAqFkQtT-5pIh_JtcQkl8fwwYHNB2kVDCvBnX7urmF8

This is shared with Mark Rose, svxlink-maintainers@...oraproject.org, security@...ntu.com, oss-security@...ts.openwall.com, hamradio@...ebsd.org, tomjbe@...too.org, security@...e.de, and 5 other people

------------------------------
Powered by Jira Service Management
https://www.atlassian.com/software/jira/service-desk/powered-by?utm_medium=jira-in-product&utm_source=jira_service_desk_email_footer&utm_content=redhat

