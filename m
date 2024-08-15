Received: (qmail 32221 invoked by uid 550); 15 Aug 2024 10:16:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13345 invoked from network); 15 Aug 2024 07:13:54 -0000
Date: Thu, 15 Aug 2024 10:13:45 +0300 (EEST)
From: Aki Tuomi <aki.tuomi@dovecot.fi>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Message-ID: <1828138112.288.1723706025422@appsuite-dev.open-xchange.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Priority: 3
Importance: Normal
X-Mailer: Open-Xchange Mailer v8.28.29
X-Originating-Client: open-xchange-appsuite
Subject: [oss-security] Dovecot CVE-2024-23185: Very large headers can cause resource
 exhaustion when parsing message

Affected product: Dovecot IMAP Server
Internal reference: DOV-6601
Vulnerability type: CWE-770 (Allocation of Resources Without Limits or Throttling)
Vulnerable version: 2.2, 2.3
Vulnerable component: lib-mail
Report confidence: Confirmed
Solution status: Fixed in 2.3.21.1
Researcher credits: Vendor internal discovery
Vendor notification: 2024-01-31
CVE reference: CVE-2024-23185
CVSS: 7.5 (CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H)

Vulnerability Details:
Very large headers can cause resource exhaustion when parsing message. The message-parser normally reads reasonably sized chunks of the message. However, when it feeds them to message-header-parser, it starts building up "full_value" buffer out of the smaller chunks. The full_value buffer has no size limit, so large headers can cause large memory usage. It doesn't matter whether it's a single long header line, or a single header split into multiple lines. This bug exists in all Dovecot versions.

Incoming mails typically have some size limits set by MTA, so even largest possible header size may still fit into Dovecot's vsz_limit. So attackers probably can't DoS a victim user this way. A user could APPEND larger mails though, allowing them to DoS themselves (although maybe cause some memory issues for the backend in general).

Workaround:
One can implement restrictions on headers on MTA component preceding Dovecot.

Fix:
Install non-vulnerable version of Dovecot. Patch can be found at https://github.com/dovecot/core/compare/f020e13%5E...ce88c33.patch
