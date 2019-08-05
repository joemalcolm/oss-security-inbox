X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["332" "Monday" "5" "August" "2019" "13:36:54" "+0200" "Florian Weimer" "fweimer@redhat.com" "<87v9vb973d.fsf@oldenburg2.str.redhat.com>" "10" "[oss-security] Current CVE policy on missing-hardening bugs" nil nil nil "8" "2019080511:36:54" "[oss-security] Current CVE policy on missing-hardening bugs" (number mark "U       fweimer@redh Aug  5   10/332   " thread-indent "\"[oss-security] Current CVE policy on missing-hardening bugs\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Current CVE policy on missing-hardening bugs" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5202 invoked by uid 550); 5 Aug 2019 11:37:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5176 invoked from network); 5 Aug 2019 11:37:08 -0000
From: Florian Weimer <fweimer@redhat.com>
To: oss-security@lists.openwall.com
Date: Mon, 05 Aug 2019 13:36:54 +0200
Message-ID: <87v9vb973d.fsf@oldenburg2.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.2 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.48]); Mon, 05 Aug 2019 11:36:56 +0000 (UTC)
Subject: [oss-security] Current CVE policy on missing-hardening bugs

What's the current policy on assinging CVE IDs for bugs that are merely
missed hardening opportunities?  One example is lack of full ASLR due to
address space limits (47 or fewer bits instead of the theoretical limit
of 64 bits).

Are they eligible for CVE assignment?  Should we DISPUTE them if we
encounter them?

Thanks,
Florian
