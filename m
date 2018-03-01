X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["612" "Thursday" "1" "March" "2018" "08:51:52" "+0200" "Aki Tuomi" "aki.tuomi@open-xchange.com" "<753925945.338.1519887112610@appsuite-dev.open-xchange.com>" "14" "[oss-security] Dovecot Security Advisory: CVE-2017-14461 rfc822_parse_domain Information Leak Vulnerability" nil nil nil "3" "2018030106:51:52" "[oss-security] Dovecot Security Advisory: CVE-2017-14461 rfc822_parse_domain Information Leak Vulnerability" (number mark "U       aki.tuomi@op Mar  1   14/612   " thread-indent "\"[oss-security] Dovecot Security Advisory: CVE-2017-14461 rfc822_parse_domain Information Leak Vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24240 invoked by uid 550); 1 Mar 2018 09:42:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16039 invoked from network); 1 Mar 2018 06:53:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=open-xchange.com;
	s=201705; t=1519887192;
	bh=6f3vHK/HtQMslVaOs4LG/dJweh0gp+0UI5Mqavuxk+w=;
	h=Date:From:To:Subject:From;
	b=1tRZGeSfUXUjJQhMO1Bj9KZ0bXBFTKMYG7Asd4+Cc55NjtVFb7NboKLup6m5RIjSN
	 wCHx/ukluzwH5a1aDmb++BWN4RjbQ9oTgeclTtrZjIEBRZGUjnzxHBd5eHPzX8FF2v
	 WbdrvLtIxZv+IpDYpK5pGMTyfhlQ6WT5wOEKqoPBQH489INPS4UV3HgECxa3gW/i+8
	 sew22OlxpQGPFg5cp2Clza6xG4m/sJYZ2wYgWtSoyJMlP9sTfra2egA17O37G9iQ2m
	 8LgOTLH7ONlFFr8uC5/4O61Z7wcyKPD/7LJPQE9QLWM0IM4dHukrcPYqUlKF3VluR9
	 LZxNQvtfrbxFg==
Date: Thu, 1 Mar 2018 08:51:52 +0200 (EET)
From: Aki Tuomi <aki.tuomi@open-xchange.com>
To: oss-security@lists.openwall.com
Message-ID: <753925945.338.1519887112610@appsuite-dev.open-xchange.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.10.0-Rev3
X-Originating-Client: open-xchange-appsuite
Subject: [oss-security] Dovecot Security Advisory: CVE-2017-14461 rfc822_parse_domain
 Information Leak Vulnerability

Vulnerable versions: 2.0 - 2.2.33, 2.3.0
Fixed versions: 2.2.34, 2.3.0.1
Score: 7.5, AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H

This vulnerability comes in two flavors. A malicious party can send a
specially crafted email to a vulnerable system, causing it to crash
dovecot. In some systems, the mail can be stored into the mail system, 
causing crash every time it is being opened.

If the mail is stored into the mail system, it can be used to also leak
heap memory from IMAP process by requesting bodystructure of the mail.

This bug was separately reported by Cisco TALOS and thru HackerOne
program by 'flxflndy'.
