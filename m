X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["705" "Thursday" "9" "April" "2015" "14:45:27" "+0200" "Martin Prpic" "mprpic@redhat.com" "<87oamxjwrc.fsf@redhat.com>" "20" "[oss-security] CVE request: ntp-keygen may generate non-random symmetric keys on big-endian systems" nil nil nil "4" "2015040912:45:27" "[oss-security] CVE request: ntp-keygen may generate non-random symmetric keys on big-endian systems" (number mark "        mprpic@redha Apr  9   20/705   " thread-indent "\"[oss-security] CVE request: ntp-keygen may generate non-random symmetric keys on big-endian systems\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31756 invoked by uid 550); 9 Apr 2015 12:45:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30710 invoked from network); 9 Apr 2015 12:45:42 -0000
User-agent: mu4e 0.9.9.5; emacs 24.3.1
Message-ID: <87oamxjwrc.fsf@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Date: Thu, 09 Apr 2015 14:45:27 +0200
From: Martin Prpic <mprpic@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: ntp-keygen may generate non-random symmetric keys on big-endian systems
To: "oss-security\@lists.openwall.com" <oss-security@lists.openwall.com>

Hi, the recent NTP update (ntp-4.2.8p2) contains a fix for the following
issue:

* [Bug 2797] ntp-keygen trapped in endless loop for MD5 keys on big-endian machines.
https://bugs.ntp.org/show_bug.cgi?id=2797

Patch: http://bk1.ntp.org/ntp-stable/?PAGE=patch&REV=55199296N2gFqH1Hm5GOnhrk9Ypygg

While the endless loop is not a security flaw per se, the fact that
ntp-keygen generates non-random keys is. If the lowest byte of the temp
variable happens to be between 0x20 and 0x7f and not #, the generated
MD5 key will consist of 20 identical characters, meaning only 93
possible keys can be generated.

Can a CVE be please assigned for this issue?

Thank you!

-- 
Martin Prpič / Red Hat Product Security
