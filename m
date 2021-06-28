X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1045" "Monday" "28" "June" "2021" "09:58:23" "+0300" "Aki Tuomi" "aki.tuomi@dovecot.fi" nil "32" "[oss-security] CVE-2021-29157: Dovecot oauth2 JWT local validation path traversal" nil nil nil "6" nil nil (number mark "U       aki.tuomi@do Jun 28   32/1045  " thread-indent "\"[oss-security] CVE-2021-29157: Dovecot oauth2 JWT local validation path traversal\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-29157: Dovecot oauth2 JWT local validation path traversal" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19634 invoked by uid 550); 28 Jun 2021 09:58:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23795 invoked from network); 28 Jun 2021 06:58:35 -0000
Date: Mon, 28 Jun 2021 09:58:23 +0300 (EEST)
From: Aki Tuomi <aki.tuomi@dovecot.fi>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Message-ID: <915539867.13379.1624863503635@appsuite-dev.open-xchange.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Priority: 3
Importance: Normal
X-Mailer: Open-Xchange Mailer v7.10.6-Rev0
X-Originating-Client: open-xchange-appsuite
Subject: [oss-security] CVE-2021-29157: Dovecot oauth2 JWT local validation path traversal

Open-Xchange Security Advisory 2021-06-28

Affected product: Dovecot IMAP Server
Vendor: OX Software GmbH

Internal reference: DOP-2159 
Vulnerability type: Path Traversal (CWE-24)
Vulnerable version: 2.3.11
Vulnerable component: oauth2
Report confidence: Confirmed
Solution status: Fixed in 2.3.15
Researcher credits: Kirin of Tencent Security Xuanwu Lab.
Vendor notification: 2021-03-22
CVE reference: CVE-2021-29157
CVSS: 6.7 (CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:H/I:H/A:N)

Vulnerability Details:
If attacker can gain access to local filesystem, it is possible to trick Dovecot to use attacker specified key to validate tokens.

Steps to reproduce:

Configure Dovecot to perform OAUTH2 authentication with local JWT validation using posix fs driver.

Place base64 encoded HS256 shared key in a location that is readable by dovecot, and use ../../../../../location/to/path as key azp. 

You can now forge tokens and authenticate as any valid user.

Risk:
Attacker can gain access using forged credentials.

Solution:
Upgrade to fixed version.
