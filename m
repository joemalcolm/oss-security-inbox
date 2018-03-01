X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["295" "Thursday" "1" "March" "2018" "08:52:26" "+0200" "Aki Tuomi" "aki.tuomi@open-xchange.com" "<410408356.339.1519887146548@appsuite-dev.open-xchange.com>" "7" "[oss-security] Dovecot Security Advisory: CVE-2017-15130 TLS SNI config lookups are inefficient and can be used for DoS" nil nil nil "3" "2018030106:52:26" "[oss-security] Dovecot Security Advisory: CVE-2017-15130 TLS SNI config lookups are inefficient and can be used for DoS" (number mark "U       aki.tuomi@op Mar  1    7/295   " thread-indent "\"[oss-security] Dovecot Security Advisory: CVE-2017-15130 TLS SNI config lookups are inefficient and can be used for DoS\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26001 invoked by uid 550); 1 Mar 2018 09:42:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16261 invoked from network); 1 Mar 2018 06:53:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=open-xchange.com;
	s=201705; t=1519887226;
	bh=Q7meb1YyAdDZ6XyQPzSMpw67F+2U9cVgVUUHWMLz80U=;
	h=Date:From:To:Subject:From;
	b=bYcH7RE576W0cH2V3HmH3MSJQJo9R33wlvmmA1WJtXvrw/MCCfWHN6rzbajA5rTQe
	 ajWAhmpiZ2XXjuuqoE/H5cc1lXSQb5Sh8D8WRpoyKFlt1IMr38p1kBqj2nOg0NCDlI
	 KdnWSUQ/G9Qj6MS/vWHnVZfVX9izLG4T+SsCc2IO/nJYmV8GN3CiEsNR7Pi9uA26pn
	 VNNiL/iDKeQURbWPmHTHhZZaRZVbvUvl0FpcOpE3hFqJlmhPCVrwEiX3QIzepDJR+3
	 /+lQDGMh9eSuZIG3FEBL6QkebL3YkBaxF1PkeQ1p4Lh2mQsMigVk3TqYia8h+ZmF16
	 c5hELWajHKOaw==
Date: Thu, 1 Mar 2018 08:52:26 +0200 (EET)
From: Aki Tuomi <aki.tuomi@open-xchange.com>
To: oss-security@lists.openwall.com
Message-ID: <410408356.339.1519887146548@appsuite-dev.open-xchange.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.10.0-Rev3
X-Originating-Client: open-xchange-appsuite
Subject: [oss-security] Dovecot Security Advisory: CVE-2017-15130 TLS SNI config lookups
 are inefficient and can be used for DoS

Vulnerable versions: 2.2.0 - 2.2.33, 2.3.0
Fixed versions: 2.2.34, 2.3.0.1
Score: 3.7, AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:N/A:L

If dovecot has been configured with local name or local net
configuration blocks, SNI lookups can be used to trash memory with
useless config by using random servernames.
