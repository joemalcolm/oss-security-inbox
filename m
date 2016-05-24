X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1326" "Tuesday" "24" "May" "2016" "15:40:50" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1605241511470.26750@wniryva>" "33" "[oss-security] CVE-2014-3672 libvirt: DoS via excessive logging " nil nil nil "5" "2016052410:10:50" "[oss-security] CVE-2014-3672 libvirt: DoS via excessive logging" (number mark "U       ppandit@redh May 24   33/1326  " thread-indent "\"[oss-security] CVE-2014-3672 libvirt: DoS via excessive logging \"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22061 invoked by uid 550); 24 May 2016 10:11:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22041 invoked from network); 24 May 2016 10:11:11 -0000
Date: Tue, 24 May 2016 15:40:50 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: "Daniel P. Berrange" <berrange@redhat.com>
Message-ID: <alpine.LFD.2.20.1605241511470.26750@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Tue, 24 May 2016 10:10:59 +0000 (UTC)
Subject: [oss-security] CVE-2014-3672 libvirt: DoS via excessive logging 

   Hello,

A while back, Mr Andrew Sorensen reported a Qemu logging issue wherein Libvirt 
OR Xen directed 'stderr' of Qemu to a log file on the host.

This can be easily exploited by a user inside guest to flood the log file with 
endless messages, resulting in a DoS situation on the host, affecting other 
services and guests alike.

'CVE-2014-3672' was assigned to it by Red Hat Inc.

Until recently there was no remedy in sight, but quoting Mr Daniel P Berrange 
of libvirt

   "Since libvirt version 1.3.3, libvirt has 'virtlogd' daemon running. The
    QEMU stdout/err are no longer connected directly to a file on disk, instead
    they go to a pipe connected to virtlogd. virtlogd only allows 128 kb of
    data to be written before rolling over the logs, and only keeps 3 backups,
    so there is no longer an uncontrolled denial of service.

    With QEMU 2.6, it is further possible to use virtlogd in association with
    QEMU serial ports that need to log to a file, for the same reason."

Upstream patch:
---------------
   -> https://libvirt.org/git/?p=libvirt.git;a=commit;h=0d968ad715475a1660779bcdd2c5b38ad63db4cf

Note: It's probably not feasible to back port this solution to older versions.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
