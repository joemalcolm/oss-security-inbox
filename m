X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/28/1
Message-ID: <842902195.41146.1787911650110@appsuite-pro-sync-core-mw-groupware-0.appsuite-pro-sync-core-mw-hazelcast-headless.appsuite-dev.svc.cluster.local>
Date: Fri, 28 Aug 2026 13:07:30 +0300 (EEST)
From: Aki Tuomi <aki.tuomi@...ecot.fi>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>
Subject: Dovecot Security Advisory 3/2026
Content-Type: text/plain; charset=utf-8

Hi!

We're sharing our latest advisory with you and like to thank everyone who contributed in finding and solving those vulnerabilities. This advisory will also be published at https://documentation.open-xchange.com/dovecot/security/advisories/html/2026/oxdc-adv-2026-0003.html

---

Classification: TLP:GREEN

Internal reference: DOV-8476
Type: CWE-403 (Exposure of File Descriptor to Unintended Control Sphere ('File Descriptor Leak'))
Component: core
Report confidence: Confirmed
Solution status: Fixed by vendor
Affected versions: OX Dovecot Pro core >=2.3.0 <2.3.22.2, OX Dovecot Pro core >=3.0.0 <3.0.7, OX Dovecot Pro core >=3.1.0 <3.1.6, OX Dovecot CE core >=2.3.0 <2.4.5
First fixed revision: OX Dovecot Pro core 3.0.7, OX Dovecot Pro core 2.3.22.2, OX Dovecot Pro core 3.1.6, OX Dovecot CE core 2.4.5
Discovery date: 2025-11-25
Solution date: 2026-08-26
Disclosure date: 2026-08-26
CVE: CVE-2026-33263
CVSS: 4.3 (CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:N/I:N/A:L)

Details:
submission-login: Panic when mail_max_userip_connections is reached: Panic: epoll_ctl(del, 8) failed: Bad file descriptor. When mail_max_userip_connections is set (defaul
t 10) and reached, submission-login can crash with epoll() panic caused by file descriptor handling issues.

Risk:
If running in high-security mode (default for community releases), only the new submission connection gets terminated. If running in high-performance mode (default for Pr
o releases), all connections handled by the submission-login process will be terminated. The crashes can cause failure for user to send a message, or it can cause duplica
te messages to be sent. If TLS is not used (in the backend server processing the submission), duplicate deliveries cannot happen, because the crash can only happen at AUT
H stage. No publicly available exploits are known.

Solution:
Limit the number of connections handled by single submission-login process. This has a performance impact though. Update to non-vulnerable version.



---



Internal reference: DOV-8874
Type: CWE-400 (Uncontrolled Resource Consumption)
Component: core
Report confidence: Confirmed
Solution status: Fixed by vendor
Affected versions: OX Dovecot Pro core >=2.3.0 <3.0.7, OX Dovecot Pro core >=3.1.0 <3.1.6, OX Dovecot CE core >=2.3.0 <2.4.5
First fixed revision: OX Dovecot Pro core 3.0.7, OX Dovecot Pro core 3.1.6, OX Dovecot CE core 2.4.5
Discovery date: 2026-03-11
Solution date: 2026-08-26
Disclosure date: 2026-08-26
Researcher credits: ylwango613@...wehack
CVE: CVE-2026-33607
CVSS: 4.3 (CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:N/I:N/A:L)

Details:
Dovecot IMAP LIST match_sub() Exponential Backtracking — CPU Denial of Service. An attacker that has valid credentials can use IMAP LIST command to consume CPU.

Risk:
This can cause degradation or denial of service for IMAP. No publicly available exploits are known.

Solution:
Monitor system for abnormal CPU usage and kill the offending process and lock account. Alternatively install fixed version.



---



Internal reference: DOV-8884
Type: CWE-400 (Uncontrolled Resource Consumption)
Component: core
Report confidence: Confirmed
Solution status: Fixed by vendor
Affected versions: OX Dovecot Pro core >=2.3.0 <2.3.22.2, OX Dovecot Pro core >=3.0.0 <3.0.7, OX Dovecot Pro core >=3.1.0 <3.1.6, OX Dovecot CE core >=2.3.0 <2.4.5
First fixed revision: OX Dovecot Pro core 3.0.7, OX Dovecot Pro core 2.3.22.2, OX Dovecot Pro core 3.1.6, OX Dovecot CE core 2.4.5
Discovery date: 2026-03-13
Solution date: 2026-08-26
Disclosure date: 2026-08-26
CVE: CVE-2026-27852
CVSS: 7.5 (CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H)

Details:
DoS by sending mail with bad header. An attacker that can send mail to a user can craft a message whose headers contain a very large number of email addresses or MIME par
ameters, which causes excessive memory usage when the message is later parsed.

Risk:
The message is still delivered, but reading it over IMAP can exhaust the memory limit of the process and terminate it, causing denial of service for the affected user. No
 publicly available exploits are known.

Solution:
Update to non-vulnerable version.



---



Internal reference: DOV-8941
Type: CWE-93 (Improper Neutralization of CRLF Sequences ('CRLF Injection'))
Component: core
Report confidence: Confirmed
Solution status: Fixed by vendor
Affected versions: OX Dovecot Pro core >=2.3.0 <2.3.22.2, OX Dovecot Pro core >=3.0.0 <3.0.7, OX Dovecot Pro core >=3.1.0 <3.1.6, OX Dovecot CE core >=2.3.0 <2.4.5
First fixed revision: OX Dovecot Pro core 3.0.7, OX Dovecot Pro core 2.3.22.2, OX Dovecot Pro core 3.1.6, OX Dovecot CE core 2.4.5
Discovery date: 2026-03-24
Solution date: 2026-08-26
Disclosure date: 2026-08-26
Researcher credits: thanos_haruki@...wehack
CVE: CVE-2026-33606
CVSS: 4.8 (CVSS:3.1/AV:N/AC:H/PR:L/UI:R/S:U/C:N/I:H/A:N)

Details:
dsync: Mail content can cause dsync protocol injection. Mail content stored by a user can be crafted so that it is interpreted as dsync protocol commands when an administ
rator later runs dsync with the stream protocol, for example during a migration.

Risk:
Injected commands can modify mailbox state on the destination during migration or replication, including internal mailbox attributes that a user should not be able to set
 directly. It can also cause dsync errors. No publicly available exploits are known.

Solution:
Avoid running dsync with the stream protocol on mailboxes with untrusted content. Update to non-vulnerable version.



---



Internal reference: DOV-8947
Type: CWE-655 (Insufficient Psychological Acceptability)
Component: core
Report confidence: Confirmed
Solution status: Fixed by vendor
Affected versions: OX Dovecot Pro core >=2.3.0 <2.3.22.2, OX Dovecot Pro core >=3.0.0 <3.0.7, OX Dovecot Pro core >=3.1.0 <3.1.6, OX Dovecot CE core >=2.3.0 <2.4.5
First fixed revision: OX Dovecot Pro core 3.0.7, OX Dovecot Pro core 2.3.22.2, OX Dovecot Pro core 3.1.6, OX Dovecot CE core 2.4.5
Discovery date: 2026-03-24
Solution date: 2026-08-26
Disclosure date: 2026-08-26
Researcher credits: heckintosh@...wehack
CVE: CVE-2026-33604
CVSS: 5.9 (CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:H/A:N)

Details:
SMTP Smuggling via Missing Dot-Stuffing After Bare Carriage Return. An attacker that can get Dovecot to relay a message, for example through Sieve redirect or submission 
relay, can use a crafted line ending in the message body to bypass the outbound protection that prevents message content from being interpreted as SMTP commands.

Risk:
A downstream mail server that hasn't yet fixed the SMTP smuggling vulnerability can be tricked into treating part of the message body as new SMTP commands, allowing injec
tion of spoofed email. This is the same vulnerability class as CVE-2023-51764 and CVE-2023-51766. No publicly available exploits are known.

Solution:
Where you control the receiving mail servers, ensure they reject bare carriage returns in message data. Update to non-vulnerable version.



---



Internal reference: DOV-8949
Type: CWE-400 (Uncontrolled Resource Consumption)
Component: core
Report confidence: Confirmed
Solution status: Fixed by vendor
Affected versions: OX Dovecot Pro core >=2.3.0 <2.3.22.2, OX Dovecot Pro core >=3.0.0 <3.0.7, OX Dovecot Pro core >=3.1.0 <3.1.6, OX Dovecot CE core >=2.3.0 <2.4.5
First fixed revision: OX Dovecot Pro core 3.0.7, OX Dovecot Pro core 2.3.22.2, OX Dovecot Pro core 3.1.6, OX Dovecot CE core 2.4.5
Discovery date: 2026-03-24
Solution date: 2026-08-26
Disclosure date: 2026-08-26
Researcher credits: djvirus@...wehack
CVE: CVE-2026-40014
CVSS: 6.5 (CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:H)

Details:
IMAP THREAD REFERENCES O(N²) CPU DoS via Crafted References Header (index-thread-links.c). An attacker that can send mail to a user can craft a message header that makes 
the IMAP THREAD command consume CPU disproportionate to the size of the message.

Risk:
When a mail client issues a THREAD command on the affected mailbox, this can cause degradation or denial of service for IMAP. No publicly available exploits are known.

Solution:
Monitor system for abnormal CPU usage, kill the offending process and remove the offending message from the affected mailbox. Update to non-vulnerable version.



---



Internal reference: DOV-8991
Type: CWE-124 (Buffer Underwrite ('Buffer Underflow'))
Component: core
Report confidence: Confirmed
Solution status: Fixed by vendor
Affected versions: OX Dovecot Pro core >=2.3.0 <2.3.22.2, OX Dovecot Pro core >=3.0.0 <3.0.7, OX Dovecot Pro core >=3.1.0 <3.1.6, OX Dovecot CE core >=2.3.0 <2.4.5
First fixed revision: OX Dovecot Pro core 3.0.7, OX Dovecot Pro core 2.3.22.2, OX Dovecot Pro core 3.1.6, OX Dovecot CE core 2.4.5
Discovery date: 2026-04-02
Solution date: 2026-08-26
Disclosure date: 2026-08-26
Researcher credits: ilyar@...wehack
CVE: CVE-2026-40013
CVSS: 4.3 (CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:N/I:N/A:L)

Details:
pigeonhole: Stack Buffer Underflow in Pigeonhole ManageSieve CHECKSCRIPT/PUTSCRIPT. An attacker that has valid credentials can submit a Sieve script containing an extreme
 numeric literal, which causes an out-of-bounds write when the ManageSieve service compiles the script.

Risk:
This causes memory corruption and an observed crash of the ManageSieve process, resulting in denial of service for script management. This might be able to be used for re
mote code execution. No publicly available exploits are known.

Solution:
Disable the ManageSieve service if users do not need remote Sieve script management. Update to non-vulnerable version.



---



Internal reference: DOV-8994
Type: CWE-400 (Uncontrolled Resource Consumption)
Component: core
Report confidence: Confirmed
Solution status: Fixed by vendor
Affected versions: OX Dovecot Pro core >=2.3.0 <2.3.22.2, OX Dovecot Pro core >=3.0.0 <3.0.7, OX Dovecot Pro core >=3.1.0 <3.1.6, OX Dovecot CE core >=2.3.0 <2.4.5
First fixed revision: OX Dovecot Pro core 3.0.7, OX Dovecot Pro core 2.3.22.2, OX Dovecot Pro core 3.1.6, OX Dovecot CE core 2.4.5
Discovery date: 2026-04-02
Solution date: 2026-08-26
Disclosure date: 2026-08-26
Researcher credits: ilyar@...wehack
CVE: CVE-2026-33605
CVSS: 7.5 (CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H)

Details:
managesieve-login: Pre-auth crash. An unauthenticated attacker can crash the ManageSieve login process by sending a small malformed command before authenticating.

Risk:
If running in high-security mode (default for community releases), only the attacker's own connection is terminated. If running in high-performance mode (default for Pro 
releases), all connections handled by the same managesieve-login process are terminated. Repeating the attack can cause denial of service for Sieve script management. No 
publicly available exploits are known.

Solution:
Restrict network access to the ManageSieve service to trusted clients. Update to non-vulnerable version.



---



Internal reference: DOV-9039
Type: CWE-89 (Improper Neutralization of Special Elements used in an SQL Command ('SQL Injection'))
Component: core
Report confidence: Confirmed
Solution status: Fixed by vendor
Affected versions: OX Dovecot Pro core >=2.3.0 <3.1.6, OX Dovecot CE core >=2.3.0 <2.4.5
First fixed revision: OX Dovecot Pro core 3.1.6, OX Dovecot CE core 2.4.5
Discovery date: 2026-04-08
Solution date: 2026-08-26
Disclosure date: 2026-08-26
Researcher credits: tipsennn@...wehack
CVE: CVE-2026-40018
CVSS: 7.4 (CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:H/A:N)

Details:
MySQL multi-byte escaping wrong. None

Risk:
None No publicly available exploits are known.

Solution:
None



---



Internal reference: DOV-9041
Type: CWE-400 (Uncontrolled Resource Consumption)
Component: core
Report confidence: Confirmed
Solution status: Fixed by vendor
Affected versions: OX Dovecot CE core >=2.4.3 <2.4.5
First fixed revision: OX Dovecot CE core 2.4.5
Discovery date: 2026-04-08
Solution date: 2026-08-26
Disclosure date: 2026-08-26
Researcher credits: ilyar@...wehack
CVE: CVE-2026-40019
CVSS: 5.9 (CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:N/A:H)

Details:
v2.4.3 regression: managesieve-login pre-auth infinite loop. An unauthenticated attacker can send a truncated quoted argument to the ManageSieve login process, which make
s it spin in an infinite loop consuming CPU.

Risk:
This can cause degradation or denial of service for Sieve script management, and repeated connections can consume all available CPU on the server. No publicly available e
xploits are known.

Solution:
Monitor system for abnormal CPU usage and kill the offending process. Restrict network access to the ManageSieve service to trusted clients. Update to non-vulnerable vers
ion.



---



Internal reference: DOV-9046
Type: CWE-125 (Out-of-bounds Read)
Component: core
Report confidence: Confirmed
Solution status: Fixed by vendor
Affected versions: OX Dovecot Pro core >=2.3.0 <2.3.22.2, OX Dovecot Pro core >=3.0.0 <3.0.7, OX Dovecot Pro core >=3.1.0 <3.1.6, OX Dovecot CE core >=2.3.0 <2.4.5
First fixed revision: OX Dovecot Pro core 3.0.7, OX Dovecot Pro core 2.3.22.2, OX Dovecot Pro core 3.1.6, OX Dovecot CE core 2.4.5
Discovery date: 2026-04-08
Solution date: 2026-08-26
Disclosure date: 2026-08-26
Researcher credits: tipsennn@...wehack
CVE: CVE-2026-40015
CVSS: 4.3 (CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:N/I:N/A:L)

Details:
imap-hibernate can be crashed. An attacker that has valid credentials can open many connections to the imap-hibernate service and send invalid commands, which can intermi
ttently cause an out-of-bounds read and crash the process.

Risk:
The crash interrupts hibernated IMAP sessions handled by the affected process, which can cause degradation of service for IMAP. No publicly available exploits are known.

Solution:
Disable IMAP hibernation. Update to non-vulnerable version.



---



Internal reference: DOV-9047
Type: CWE-400 (Uncontrolled Resource Consumption)
Component: core
Report confidence: Confirmed
Solution status: Fixed by vendor
Affected versions: OX Dovecot Pro core >=2.3.0 <2.3.22.2, OX Dovecot Pro core >=3.0.0 <3.0.7, OX Dovecot Pro core >=3.1.0 <3.1.6, OX Dovecot CE core >=2.3.0 <2.4.5
First fixed revision: OX Dovecot Pro core 3.0.7, OX Dovecot Pro core 2.3.22.2, OX Dovecot Pro core 3.1.6, OX Dovecot CE core 2.4.5
Discovery date: 2026-04-08
Solution date: 2026-08-26
Disclosure date: 2026-08-26
Researcher credits: djvirus@...wehack
CVE: CVE-2026-40017
CVSS: 6.5 (CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:H)

Details:
IMAP THREAD O(M³) CPU DoS via CRC32 Hash Collision in strmap (mail-index-strmap.c / hash2.c). An attacker that can send mail to a user can craft a message header whose va
lues are chosen to collide in an internal hash table, which makes the IMAP THREAD command consume CPU disproportionate to the size of the message. This is a separate issu
e from CVE-2026-40014 and is not addressed by that fix.

Risk:
Whenever a mail client issues a THREAD command on the affected mailbox, this can cause degradation or denial of service for IMAP. No publicly available exploits are known
.

Solution:
Monitor system for abnormal CPU usage, kill the offending process and remove the offending message from the affected mailbox. Update to non-vulnerable version.



---



Internal reference: DOV-9066
Type: CWE-200 (Exposure of Sensitive Information to an Unauthorized Actor)
Component: core
Report confidence: Confirmed
Solution status: Fixed by vendor
Affected versions: OX Dovecot Pro core >=2.3.0 <2.3.22.2, OX Dovecot Pro core >=3.0.0 <3.0.7, OX Dovecot Pro core >=3.1.0 <3.1.6, OX Dovecot CE core >=2.3.0 <2.4.5
First fixed revision: OX Dovecot Pro core 3.0.7, OX Dovecot Pro core 2.3.22.2, OX Dovecot Pro core 3.1.6, OX Dovecot CE core 2.4.5
Discovery date: 2026-04-12
Solution date: 2026-08-26
Disclosure date: 2026-08-26
Researcher credits: ilhamaf@...wehack
CVE: CVE-2026-40203
CVSS: 3.7 (CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:L/I:N/A:N)

Details:
IMAP Compression Can Reveal Whether a Small Synced Email Body Matches Sender-Chosen Text. When IMAP compression is enabled, the same compression state is reused across re
sponses in a session, so response sizes depend on both attacker-supplied mail and other mail in the same mailbox.

Risk:
An attacker that can send mail to a user and can also observe the sizes of that user's IMAP traffic can confirm whether the body of a small message matches a guessed text
. Recovery of arbitrary unknown content was not demonstrated, but the attack can disclose whether a secret-like message body matches a candidate. No publicly available ex
ploits are known.

Solution:
Disable IMAP compression. Update to non-vulnerable version.



---



Internal reference: DOV-9070
Type: CWE-416 (Use After Free)
Component: core
Report confidence: Confirmed
Solution status: Fixed by vendor
Affected versions: OX Dovecot Pro core >=2.3.0 <2.3.22.2, OX Dovecot Pro core >=3.0.0 <3.0.7, OX Dovecot Pro core >=3.1.0 <3.1.6, OX Dovecot CE core >=2.3.0 <2.4.5
First fixed revision: OX Dovecot Pro core 3.0.7, OX Dovecot Pro core 2.3.22.2, OX Dovecot Pro core 3.1.6, OX Dovecot CE core 2.4.5
Discovery date: 2026-04-14
Solution date: 2026-08-26
Disclosure date: 2026-08-26
Researcher credits: ilyar@...wehack
CVE: CVE-2026-42007
CVSS: 9.1 (CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:C/C:L/I:L/A:H)

Details:
Sieve editheader RCE. An attacker that has valid credentials can use a Sieve script with the editheader extension to trigger a use-after-free in the mail editing code, an
d to write memory contents beyond the intended buffer into the delivered mail.

Risk:
This causes memory leak and opportunity to do memory corruption during mail delivery, which can crash the delivery process and may allow execution of arbitrary code in th
e context of that process. No publicly available exploits are known.

Solution:
Disable the Sieve editheader extension. Update to non-vulnerable version.



---



Internal reference: DOV-9099
Type: CWE-284 (Improper Access Control)
Component: core
Report confidence: Confirmed
Solution status: Fixed by vendor
Affected versions: OX Dovecot Pro core >=2.3.0 <2.3.22.2, OX Dovecot Pro core >=3.0.0 <3.0.7, OX Dovecot Pro core >=3.1.0 <3.1.6, OX Dovecot CE core >=2.3.0 <2.4.5
First fixed revision: OX Dovecot Pro core 3.0.7, OX Dovecot Pro core 2.3.22.2, OX Dovecot Pro core 3.1.6, OX Dovecot CE core 2.4.5
Discovery date: 2026-04-22
Solution date: 2026-08-26
Disclosure date: 2026-08-26
Researcher credits: ilhamaf@...wehack
CVE: CVE-2026-40204
CVSS: 3.1 (CVSS:3.1/AV:N/AC:H/PR:L/UI:N/S:U/C:N/I:L/A:N)

Details:
acl: lda_mailbox_autocreate can bypass acl restrictions. None

Risk:
None No publicly available exploits are known.

Solution:
None



---



Internal reference: DOV-9106
Type: CWE-287 (Improper Authentication)
Component: core
Report confidence: Confirmed
Solution status: Fixed by vendor
Affected versions: OX Dovecot Pro core >=2.3.11.2 <2.3.22.2, OX Dovecot Pro core >=3.0.0 <3.0.7, OX Dovecot Pro core >=3.1.0 <3.1.6, OX Dovecot CE core >=2.3.11.2 <2.4.5
First fixed revision: OX Dovecot Pro core 3.0.7, OX Dovecot Pro core 2.3.22.2, OX Dovecot Pro core 3.1.6, OX Dovecot CE core 2.4.5
Discovery date: 2026-04-23
Solution date: 2026-08-26
Disclosure date: 2026-08-26
Researcher credits: Noobosaurus@...wehack
CVE: CVE-2026-40205
CVSS: 5.9 (CVSS:3.1/AV:N/AC:H/PR:L/UI:N/S:U/C:L/I:H/A:N)

Details:
OAuth2 passdb scope enforcement bypass via OR semantics in remote validation path. An attacker that holds an OAuth2 token granting only part of the required scopes can au
thenticate, because when more than one scope is required in the configuration, the remote token validation paths accept a token that carries only one of them, while the l
ocal token validation path correctly requires all of them.

Risk:
The configured authorization policy is not enforced, so a token that was granted only part of the required permissions is accepted where it should have been rejected. No 
publicly available exploits are known.

Solution:
Use local token validation where tokens can be validated locally. Update to non-vulnerable version.



---



Internal reference: DOV-9109
Type: CWE-287 (Improper Authentication)
Component: core
Report confidence: Confirmed
Solution status: Fixed by vendor
Affected versions: OX Dovecot Pro core >=2.3.4 <2.3.22.2, OX Dovecot Pro core >=3.0.0 <3.0.7, OX Dovecot Pro core >=3.1.0 <3.1.6, OX Dovecot CE core >=2.3.4 <2.4.5
First fixed revision: OX Dovecot Pro core 3.0.7, OX Dovecot Pro core 2.3.22.2, OX Dovecot Pro core 3.1.6, OX Dovecot CE core 2.4.5
Discovery date: 2026-04-23
Solution date: 2026-08-26
Disclosure date: 2026-08-26
CVE: CVE-2026-42008
CVSS: 4.3 (CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U/C:N/I:L/A:N)

Details:
XCLIENT FORWARD= bare token not namespaced, allows nopassword injection via trusted proxy. Forwarding information received from a host listed as a trusted proxy is not ke
pt separate from Dovecot's own authentication fields, so a value sent by that host can be injected as an internal authentication field.

Risk:
Any host permitted to act as a trusted proxy can authenticate as any user without knowing that user's password. This affects deployments whose password database honours a
 field that permits authentication without a password. Deployments that do not configure trusted proxies are not affected. No publicly available exploits are known.

Solution:
Restrict the list of trusted proxy networks to hosts that are fully under your control. Update to non-vulnerable version.



---



Internal reference: DOV-9142
Type: CWE-400 (Uncontrolled Resource Consumption)
Component: core
Report confidence: Confirmed
Solution status: Fixed by vendor
Affected versions: OX Dovecot Pro core >=2.3.0 <2.3.22.2, OX Dovecot Pro core >=3.0.0 <3.0.7, OX Dovecot Pro core >=3.1.0 <3.1.6, OX Dovecot CE core >=2.3.0 <2.4.5
First fixed revision: OX Dovecot Pro core 3.0.7, OX Dovecot Pro core 2.3.22.2, OX Dovecot Pro core 3.1.6, OX Dovecot CE core 2.4.5
Discovery date: 2026-04-27
Solution date: 2026-08-26
Disclosure date: 2026-08-26
Researcher credits: ilhamaf@...wehack
CVE: CVE-2026-42395
CVSS: 4.3 (CVSS:3.1/AV:A/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:L)

Details:
Single NUL-Byte XCLIENT FORWARD Payload Crashes. A host listed as a trusted proxy can send forwarding information containing a NUL byte, which crashes the login process o
n the following login attempt.

Risk:
The login process is terminated, which can cause degradation or denial of service for logins. Deployments that do not configure trusted proxies are not affected. No publi
cly available exploits are known.

Solution:
Restrict the list of trusted proxy networks to hosts that are fully under your control. Update to non-vulnerable version.



---



Internal reference: DOV-9148
Type: CWE-200 (Exposure of Sensitive Information to an Unauthorized Actor)
Component: core
Report confidence: Confirmed
Solution status: Fixed by vendor
Affected versions: OX Dovecot Pro core >=2.3.0 <2.3.22.2, OX Dovecot Pro core >=3.0.0 <3.0.7, OX Dovecot Pro core >=3.1.0 <3.1.6, OX Dovecot CE core >=2.3.0 <2.4.5
First fixed revision: OX Dovecot Pro core 3.0.7, OX Dovecot Pro core 2.3.22.2, OX Dovecot Pro core 3.1.6, OX Dovecot CE core 2.4.5
Discovery date: 2026-04-27
Solution date: 2026-08-26
Disclosure date: 2026-08-26
Researcher credits: D4RKCYPH3R@...wehack
CVE: CVE-2026-42393
CVSS: 3.1 (CVSS:3.1/AV:A/AC:H/PR:N/UI:N/S:U/C:L/I:N/A:N)

Details:
doveadm_password or api key length can still be leaked with timing comparisons. The comparison used for the doveadm password and API key is not fully timing safe and can 
reveal the length of the configured secret.

Risk:
An attacker with access to the same network as the doveadm service, able to make repeated requests and measure response timing accurately, can learn the length of the sec
ret, which reduces the effort needed to guess it. The secret value itself is not disclosed. No publicly available exploits are known.

Solution:
Restrict network access to the doveadm service to trusted clients. Update to non-vulnerable version.



---



Internal reference: DOV-9223
Type: CWE-1050 (Excessive Platform Resource Consumption within a Loop)
Component: core
Report confidence: Confirmed
Solution status: Fixed by vendor
Affected versions: OX Dovecot Pro core >=2.3.15 <2.3.22.2, OX Dovecot Pro core >=3.0.0 <3.0.7, OX Dovecot Pro core >=3.1.0 <3.1.6, OX Dovecot CE core >=2.3.15 <2.4.5
First fixed revision: OX Dovecot Pro core 3.0.7, OX Dovecot Pro core 2.3.22.2, OX Dovecot Pro core 3.1.6, OX Dovecot CE core 2.4.5
Discovery date: 2026-05-05
Solution date: 2026-08-26
Disclosure date: 2026-08-26
CVE: CVE-2026-52681
CVSS: 3.1 (CVSS:3.1/AV:N/AC:H/PR:L/UI:N/S:U/C:N/I:N/A:L)

Details:
Sieve resource usage tracking lost when active script changes. Sieve CPU resource usage is tracked in the compiled script, so an attacker that has valid credentials can r
eset the accounting by repeatedly changing the active script. Compiled script files are also not removed when a script is deleted or renamed.

Risk:
The configured Sieve CPU limit can be bypassed, allowing sustained CPU consumption, and the leftover files increase disk consumption. Both can cause degradation of servic
e for mail delivery. No publicly available exploits are known.

Solution:
Monitor system for abnormal CPU usage and disk consumption. Update to non-vulnerable version.



---



Internal reference: DOV-9230
Type: CWE-200 (Exposure of Sensitive Information to an Unauthorized Actor)
Component: core
Report confidence: Confirmed
Solution status: Fixed by vendor
Affected versions: OX Dovecot Pro core >=2.3.0 <3.1.6, OX Dovecot CE core >=2.3.0 <2.4.5
First fixed revision: OX Dovecot Pro core 3.1.6, OX Dovecot CE core 2.4.5
Discovery date: 2026-05-06
Solution date: 2026-08-26
Disclosure date: 2026-08-26
Researcher credits: djvirus@...wehack
CVE: CVE-2026-42392
CVSS: 4.3 (CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:L/I:N/A:N)

Details:
imap-urlauth leaks memory into user-visible error messages. An attacker that has valid credentials can send an invalid IMAP URLFETCH command, which causes uninitialized m
emory to be included in the error response returned to the client.

Risk:
Process memory contents can be disclosed to the client, which may include sensitive data. No publicly available exploits are known.

Solution:
Disable the IMAP URLAUTH functionality. Update to non-vulnerable version.



---



Internal reference: DOV-9309
Type: CWE-287 (Improper Authentication)
Component: core
Report confidence: Confirmed
Solution status: Fixed by vendor
Affected versions: OX Dovecot Pro core >=2.3.13 <2.3.22.2, OX Dovecot Pro core >=3.0.0 <3.0.7, OX Dovecot Pro core >=3.1.0 <3.1.6, OX Dovecot CE core >=2.3.13 <2.4.5
First fixed revision: OX Dovecot Pro core 3.0.7, OX Dovecot Pro core 2.3.22.2, OX Dovecot Pro core 3.1.6, OX Dovecot CE core 2.4.5
Discovery date: 2026-05-28
Solution date: 2026-08-26
Disclosure date: 2026-08-26
CVE: CVE-2026-73208
CVSS: 7.4 (CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:H/A:N)

Details:
auth: db-oauth2: aud claim used as fallback for missing scope claim. An attacker that holds a token intended for a different purpose can authenticate, because when an OAu
th2 token response does not contain a scope claim, the audience claim is used in its place and checked against the configured required scopes. These are different concept
s, and the audience claim does not describe what a token is allowed to do.

Risk:
A token that grants no relevant permissions can be accepted because its intended recipient value happens to match a configured scope name, granting access that should hav
e been denied. It also hides an identity provider misconfiguration where scopes are not being issued at all. No publicly available exploits are known.

Solution:
Ensure the identity provider issues a scope claim for all tokens used with Dovecot, and that configured scope names do not match audience values. Update to non-vulnerable
 version.



---



Internal reference: DOV-9401
Type: CWE-674 (Uncontrolled Recursion)
Component: core
Report confidence: Confirmed
Solution status: Fixed by vendor
Affected versions: OX Dovecot Pro core >=2.3.0 <2.3.22.2, OX Dovecot Pro core >=3.0.0 <3.0.7, OX Dovecot Pro core >=3.1.0 <3.1.6, OX Dovecot CE core >=2.3.0 <2.4.5
First fixed revision: OX Dovecot Pro core 3.0.7, OX Dovecot Pro core 2.3.22.2, OX Dovecot Pro core 3.1.6, OX Dovecot CE core 2.4.5
Discovery date: 2026-06-10
Solution date: 2026-08-26
Disclosure date: 2026-08-26
CVE: CVE-2026-73209
CVSS: 6.5 (CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:N/I:N/A:H)

Details:
imap-login crash: Self-recursion on zero-output decompress chunks. An attacker that has valid credentials can send crafted compressed data that causes the affected proces
s to exhaust its stack and crash.

Risk:
The affected process is terminated, which can cause degradation or denial of service for IMAP. No publicly available exploits are known.

Solution:
Update to non-vulnerable version.



---



Internal reference: DOV-9529
Type: CWE-400 (Uncontrolled Resource Consumption)
Component: core
Report confidence: Confirmed
Solution status: Fixed by vendor
Affected versions: OX Dovecot Pro core >=2.3.0 <2.3.22.2, OX Dovecot Pro core >=3.0.0 <3.0.7, OX Dovecot Pro core >=3.1.0 <3.1.6, OX Dovecot CE core >=2.3.0 <2.4.5
First fixed revision: OX Dovecot Pro core 3.0.7, OX Dovecot Pro core 2.3.22.2, OX Dovecot Pro core 3.1.6, OX Dovecot CE core 2.4.5
Discovery date: 2026-07-04
Solution date: 2026-08-26
Disclosure date: 2026-08-26
CVE: CVE-2026-42391
CVSS: 7.5 (CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H)

Details:
imap: Pre-login memory/CPU growth with ID command. An unauthenticated attacker can send an IMAP ID command with a very large number of parameters before logging in, which
 causes memory and CPU usage to grow disproportionately.

Risk:
The login process can be terminated by the out-of-memory handling, which also terminates all other connections handled by the same process. This can cause degradation or 
denial of service for IMAP logins. No publicly available exploits are known.

Solution:
Limit the number of connections handled by a single imap-login process. This has a performance impact though. Update to non-vulnerable version.



---



Internal reference: DOV-9530
Type: CWE-400 (Uncontrolled Resource Consumption)
Component: core
Report confidence: Confirmed
Solution status: Fixed by vendor
Affected versions: OX Dovecot Pro core >=2.3.11 <2.3.22.2, OX Dovecot Pro core >=3.0.0 <3.0.7, OX Dovecot Pro core >=3.1.0 <3.1.6, OX Dovecot CE core >=2.3.11 <2.4.5
First fixed revision: OX Dovecot Pro core 3.0.7, OX Dovecot Pro core 2.3.22.2, OX Dovecot Pro core 3.1.6, OX Dovecot CE core 2.4.5
Discovery date: 2026-07-04
Solution date: 2026-08-26
Disclosure date: 2026-08-26
CVE: CVE-2026-52687
CVSS: 6.5 (CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:N/I:N/A:H)

Details:
IMAP: COMPRESS ZSTD can cause excessive memory usage. An attacker that has valid credentials can select a compression algorithm for the IMAP connection whose decompressio
n state requires a large amount of memory, and open several such connections.

Risk:
The memory limit of the process is reached with only a few connections, terminating the process and all connections it handles, which can cause degradation or denial of s
ervice for IMAP. No publicly available exploits are known.

Solution:
Disable IMAP compression. Alternatively limit the number of connections handled by a single imap-login process, though this has a performance impact. Update to non-vulner
able version.

Download attachment "signature.asc" of type "application/pgp-signature" (216 bytes)
