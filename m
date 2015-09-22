X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["589" "Tuesday" "22" "September" "2015" "23:07:20" "+0200" "Florian Weimer" "fweimer@redhat.com" "<5601C308.5090902@redhat.com>" "15" "[oss-security] CVE-2015-5232: various /tmp races in opa-fm, opa-ff" nil nil nil "9" "2015092221:07:20" "[oss-security] CVE-2015-5232: various /tmp races in opa-fm, opa-ff" (number mark "U       fweimer@redh Sep 22   15/589   " thread-indent "\"[oss-security] CVE-2015-5232: various /tmp races in opa-fm, opa-ff\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12024 invoked by uid 550); 22 Sep 2015 21:07:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11941 invoked from network); 22 Sep 2015 21:07:53 -0000
To: oss-security@lists.openwall.com
From: Florian Weimer <fweimer@redhat.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <5601C308.5090902@redhat.com>
Date: Tue, 22 Sep 2015 23:07:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
Subject: [oss-security] CVE-2015-5232: various /tmp races in opa-fm, opa-ff

We assigned CVE-2015-5232 internally, prior to reporting upstream, to
the issues fixed in these commits:

https://github.com/01org/opa-fm/commit/5f4087aabb5d03c42738b320af0fc60e9df4d1f7
https://github.com/01org/opa-fm/commit/c5759e7b76f5bf844be6c6641cc1b356bbc83869
https://github.com/01org/opa-ff/commit/080ab97461d80a01636f77ba6aecc667c3c0087c

This fix just affects the test suite, I think:

https://github.com/01org/opa-ff/commit/c9ccf1560befcf8e3860820a52045b811f4372a0

(And no, I do not really understand what this software does. :-/)

-- 
Florian Weimer / Red Hat Product Security
