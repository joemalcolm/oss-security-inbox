Received: (qmail 1653 invoked by uid 550); 8 Apr 2026 02:19:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23615 invoked from network); 8 Apr 2026 02:19:13 -0000
Date: Wed, 8 Apr 2026 04:19:08 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20260408021908.GA8285@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
User-Agent: Mutt/1.4.2.3i
Subject: [oss-security] Fwd: [siren] Severity: High =?utf-8?B?4oCT?=
	=?utf-8?Q?_Potential_Maliciou?=
	=?utf-8?Q?s?= Campaign Underway Targeting Open Source Developers via Slack

Also seen at https://lists.openssf-vuln.org/g/siren/message/7

----- Forwarded message from "Christopher Robinson via lists.openssf-vuln.org" <christopher.robinson=linuxfoundation.org@lists.openssf-vuln.org> -----

Subject: [siren] Severity: High – Potential Malicious Campaign Underway Targeting Open Source Developers via Slack
To: siren@lists.openssf-vuln.org
From: "Christopher Robinson via lists.openssf-vuln.org" <christopher.robinson=linuxfoundation.org@lists.openssf-vuln.org>
Date: Tue, 07 Apr 2026 18:10:04 -0700
Mailing-List: list siren@lists.openssf-vuln.org; contact siren+owner@lists.openssf-vuln.org
Reply-To: siren@lists.openssf-vuln.org,christopher.robinson@linuxfoundation.org

Date: April 7, 2026
Severity: High – Potential Malicious Campaign Underway Targeting Open Source Developers via Slack


# Overview #
The community has received reports of an active social engineering campaign targeting open source developers via Slack (including ToDoGroup and related communities).  In the reported incident, an attacker impersonated a well-known Linux Foundation community leader and attempted to lure the victim into following a malicious link:


>> https://sites.google.com/view/workspace-business/join <<


The link mimics a legitimate Google Workspace flow but redirects users to a fraudulent authentication process. Victims are prompted to enter credentials and then instructed to install a “Google certificate,” which is in fact malicious.  This activity represents a multi-stage attack involving impersonation, phishing, certificate spoofing, and malware delivery.


# Observed Attack Behavior #
- Impersonation: Attacker poses as a trusted community leader in Slack
- Phishing Link: Uses a lookalike domain (sites.google.com/...) instead of legitimate Google Workspace domains
- Credential Harvesting: Requests email and verification code
- Certificate Spoofing: Prompts user to install a fake root certificate impersonating Google


# Malware Delivery #
- macOS: Script downloads and executes a binary (gapi) from a remote IP (2.26.97.61)
- Windows: Prompts installation of a malicious certificate via browser trust dialog


Installing the certificate enables interception of encrypted traffic and credential theft. Executing the binary may result in full system compromise.


# What You Should Do #
Please take the following precautions immediately:
1. Verify Identities
- Do not trust messages based solely on name or profile.
- Confirm unusual requests through a separate, known communication channel.


2. Avoid Suspicious Links
- Do not click links that look similar to, but are not, official domains.
- When in doubt, navigate manually to known trusted sites.


3. Never Install Certificates from Links
- Legitimate services do not require users to manually install root certificates.
- Treat any such request as malicious unless explicitly verified by your organization.


4. Do Not Run Untrusted Software
- Do not execute scripts, installers, or binaries received via Slack or unknown websites.
- Avoid commands that download and execute code (e.g., curl | bash).


5. Treat Unexpected Security Prompts as Suspicious
- Messages about “expired certificates” or urgent updates should be independently verified


# If You May Have Been Affected #
If you interacted with the link, installed a certificate, or executed any files:
- Disconnect from the network immediately
- Remove any newly installed certificates
- Run endpoint security scans
- Rotate all credentials (GitHub, SSH keys, cloud access, etc.)
- Revoke active sessions and tokens
- Report the incident to your security team or organization


# Community Recommendations #
- Enable multi-factor authentication (MFA) on all developer and collaboration accounts
- Be cautious of unsolicited outreach, even from familiar names
- Establish team practices for verifying sensitive requests
- Share this advisory with your teams and contributors


# Key Takeaway #
This campaign highlights a growing trend: attackers are targeting developer workflows and trust relationships, not just software vulnerabilities. Staying vigilant and verifying before acting are critical to protecting both individual environments and the broader open source ecosystem.


If you have observed similar activity or have additional indicators to share, please report them to your security team or appropriate community channels.


Stay safe,


Christopher "CRob" Robinson
OpenSSF | The Linux Foundation
Chief Technology Officer |  Chief Security Architect


–
TLP:CLEAR

----- End forwarded message -----
