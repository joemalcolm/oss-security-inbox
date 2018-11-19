X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["656" "Monday" "19" "November" "2018" "17:02:42" "+0100" "Florian Weimer" "fweimer@redhat.com" "<878t1pjbrx.fsf@oldenburg.str.redhat.com>" "16" "[oss-security] REJECT request filed for CVE-2018-11210 against tinyxml2" "^Date:" nil nil "11" "2018111916:02:42" "[oss-security] REJECT request filed for CVE-2018-11210 against tinyxml2" (number mark "        fweimer@redh Nov 19   16/656   " thread-indent "\"[oss-security] REJECT request filed for CVE-2018-11210 against tinyxml2\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24007 invoked by uid 550); 19 Nov 2018 16:03:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23984 invoked from network); 19 Nov 2018 16:03:01 -0000
Message-ID: <878t1pjbrx.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/25.3 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.43]); Mon, 19 Nov 2018 16:02:49 +0000 (UTC)
Date: Mon, 19 Nov 2018 17:02:42 +0100
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] REJECT request filed for CVE-2018-11210 against tinyxml2
To: oss-security@lists.openwall.com

I filed a REJECT request for MITRE for this CVE identifier, with this
rationale:

This is not a vulnerability. The fuzzer did not check that the
precondition is satisfied. If XMLDocument::Parse is called in the
one-argument-form (or with a (size_t)-1 argument), then it uses strlen
on the input string, which must be null-terminated. This is clearly
spelled out in the API documentation.

<https://github.com/leethomason/tinyxml2/blob/8f4a9a8cc2a93709b97d0cf51d33ddd1ec33277d/tinyxml2.h#L1677>

This is just a courtesy notice in case you want to update your records
before MITRE processes the rejection request (or rejects it altogether).

Thanks,
Florian
