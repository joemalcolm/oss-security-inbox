X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["560" "Monday" "10" "August" "2015" "12:45:31" "+0200" "Martin Prpic" "mprpic@redhat.com" "<87bnef1kxg.fsf@redhat.com>" "22" "[oss-security] Duplicate Wireshark CVEs?" nil nil nil "8" "2015081010:45:31" "[oss-security] Duplicate Wireshark CVEs?" (number mark "        mprpic@redha Aug 10   22/560   " thread-indent "\"[oss-security] Duplicate Wireshark CVEs?\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21942 invoked by uid 550); 10 Aug 2015 10:45:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21919 invoked from network); 10 Aug 2015 10:45:45 -0000
User-agent: mu4e 0.9.9.5; emacs 24.3.1
Message-ID: <87bnef1kxg.fsf@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
Date: Mon, 10 Aug 2015 12:45:31 +0200
From: Martin Prpic <mprpic@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Duplicate Wireshark CVEs?
To: "oss-security\@lists.openwall.com" <oss-security@lists.openwall.com>

Hello,

It looks like the following two Wireshark advisories fix the same flaw:

https://www.wireshark.org/security/wnpa-sec-2015-14.html
https://www.wireshark.org/security/wnpa-sec-2015-07.html

Both fix a flaw in the WCP dissector and refer to the following bug:

https://bugs.wireshark.org/bugzilla/show_bug.cgi?id=10844

Is there a reason two CVEs were assigned for this, or should one of them
be rejected?

Thanks!

RH bugs:
https://bugzilla.redhat.com/CVE-2015-2188
https://bugzilla.redhat.com/CVE-2015-3811

-- 
Martin Prpič / Red Hat Product Security
