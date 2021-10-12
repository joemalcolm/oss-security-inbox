X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1002" "Tuesday" "12" "October" "2021" "10:56:13" "+0200" "Jan Lehnardt" "jan@apache.org" nil "27" "[oss-security] CVE-2021-38295 Apache CouchDB <= 3.1.1 privilege escalation " nil nil nil "10" nil nil (number mark "U       jan@apache.o Oct 12   27/1002  " thread-indent "\"[oss-security] CVE-2021-38295 Apache CouchDB <= 3.1.1 privilege escalation \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-38295 Apache CouchDB <= 3.1.1 privilege escalation " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24489 invoked by uid 550); 12 Oct 2021 11:03:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9627 invoked from network); 12 Oct 2021 08:56:27 -0000
From: Jan Lehnardt <jan@apache.org>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.21\))
Message-Id: <A2600194-3759-4165-A437-9BCAE3F97429@apache.org>
Date: Tue, 12 Oct 2021 10:56:13 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3445.104.21)
Subject: [oss-security] CVE-2021-38295 Apache CouchDB <= 3.1.1 privilege escalation 

Description
===========

A malicious user with permission to create documents in a
database is able to attach a HTML attachment to a document.
If a CouchDB admin opens that attachment in a browser, e.g.
via the CouchDB admin interface Fauxton, any JavaScript code
embedded in that HTML attachment will be executed within the
security context of that admin. A similar route is available
with thealready deprecated `_show` and `_list` functionality.

This *privilege escalation* vulnerability allows an attacker
to add or remove data in any database or make configuration
changes.

Mitigation
==========

CouchDB 3.2.0  and onwards adds `Content-Security-Policy`
headers for all attachment, `_show` and `_list` requests.
This breaks certain niche use-cases and there are
configuration options to restore the previous behaviour for
those who need it.

CouchDB 3.1.2 defaults to the previous behaviour, but adds
configuration options to turn `Content-Security-Policy` headers
on for all affected requests.
