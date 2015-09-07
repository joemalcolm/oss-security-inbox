X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1299" "Monday" "7" "September" "2015" "15:23:50" "+0200" "Florian Weimer" "fweimer@redhat.com" "<55ED8FE6.9030805@redhat.com>" "32" "[oss-security] nss: SSL_ImplementedCiphers ABI incompatibility may lead to incorrect cipher suites" nil nil nil "9" "2015090713:23:50" "[oss-security] nss: SSL_ImplementedCiphers ABI incompatibility may lead to incorrect cipher suites" (number mark "        fweimer@redh Sep  7   32/1299  " thread-indent "\"[oss-security] nss: SSL_ImplementedCiphers ABI incompatibility may lead to incorrect cipher suites\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1960 invoked by uid 550); 7 Sep 2015 13:24:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1936 invoked from network); 7 Sep 2015 13:24:04 -0000
Message-ID: <55ED8FE6.9030805@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.1.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
Date: Mon, 7 Sep 2015 15:23:50 +0200
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] nss: SSL_ImplementedCiphers ABI incompatibility may lead to incorrect
 cipher suites
To: oss-security@lists.openwall.com,
        Assign a CVE Identifier <cve-assign@mitre.org>

<https://bugzilla.redhat.com/show_bug.cgi?id=1260698>

“
It was discovered that the global SSL_ImplementedCiphers variable
increased its size as a result of nss package updates, an ABI
incompatibility.  Due to the way ELF dynamic linking works, if the main
program was linke dagainst an older version of nss, then too little
space for the SSL_ImplementedCiphers variable is allocated, and its
contents is truncated.  As a result, applications using the
SSL_ImplementedCiphers variables may not enable the intended set of a
TLS cipher suites.
”

Internally at Red Hat, we were not sure if this qualifies for a CVE.
(If so, it would likely be specific to Red Hat Enterprise Linux, because
upstream does not make such ABI guarantees as far as I know.)

To clarify, what happens is that: I compile application A on RHEL 7.0
against the original nss version.  Then I upgrade to RHEL 7.1 (plus
security updates), and the intention is that nss will select a
different, larger set of cipher suites.  However, the
SSL_ImplementedCiphers variable has been truncated, so this selection
process does not happen in the intended manner.

The Mozilla bug

  <https://bugzilla.mozilla.org/show_bug.cgi?id=1201900>

contains some ideas how to deal with this issue.

-- 
Florian Weimer / Red Hat Product Security
