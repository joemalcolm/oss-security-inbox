Received: (qmail 18029 invoked by uid 550); 6 Jul 2022 13:55:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17491 invoked from network); 6 Jul 2022 13:54:59 -0000
Date: Wed, 6 Jul 2022 16:54:47 +0300 (EEST)
From: Aki Tuomi <aki.tuomi@dovecot.fi>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Message-ID: <185548807.26514.1657115687920@appsuite-dev.open-xchange.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Priority: 3
Importance: Normal
X-Mailer: Open-Xchange Mailer v7.10.6-Rev15
X-Originating-Client: open-xchange-appsuite
Subject: [oss-security] CVE-2022-30550: Privilege escalation possible in dovecot when
 similar master and non-master passdbs are used

Affected product: Dovecot IMAP Server 
Internal reference: DOV-5320
Vulnerability type: Improper Access Control (CWE-284) 
Vulnerable version: 2.2
Vulnerable component: submission 
Report confidence: Confirmed 
Solution status: Fixed in main
Researcher credits: Julian Brook (julezman)
Vendor notification: 2022-05-06 
CVE reference: CVE-2022-30550
CVSS: 6.8 (CVSS:3.1/AV:N/AC:H/PR:L/UI:N/S:U/C:H/I:H/A:N) 

Vulnerability Details: 
When two passdb configuration entries exist in Dovecot configuration, which have the same driver and args settings, the incorrect username_filter and mechanism settings can be applied to passdb definitions. These incorrectly applied settings can lead to an unintended security configuration and can permit privilege escalation with certain configurations involving master user authentication.

Dovecot documentation does not advise against the use of passdb definitions which have the same driver and args settings. One such configuration would be where an administrator wishes to use the same pam configuration or passwd file for both normal and master users but use the username_filter setting to restrict which of the users is able to be a master user.

Risk: 
If same passwd file or PAM is used for both normal and master users, it is possible for attacker to become master user.

Workaround:
Always authenticate master users from different source than regular users, e.g. using a separate passwd file. Alternatively, you can use global ACLs to ensure that only legimate master users have priviledged access.

Fix:
This has been fixed in main branch. See https://github.com/dovecot/core/compare/7bad6a24%5E..a1022072.patch
