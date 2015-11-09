X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2054" "Tuesday" "10" "November" "2015" "06:35:21" "+0900" "Pierre Kim" "pierre.kim.sec@gmail.com" "<CADxEXOj7zHdWtMxuERxC3sPXFKDRYb-0gOtsWBcDH=0Zh3=Fig@mail.gmail.com>" "74" "[oss-security] CVE request: net-snmp OpenBSD package - insecure file permission vulnerability" "^Date:" nil nil "11" "2015110921:35:21" "[oss-security] CVE request: net-snmp OpenBSD package - insecure file permission vulnerability" (number mark "        pierre.kim.s Nov 10   74/2054  " thread-indent "\"[oss-security] CVE request: net-snmp OpenBSD package - insecure file permission vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26361 invoked by uid 550); 9 Nov 2015 21:39:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23869 invoked from network); 9 Nov 2015 21:35:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=RWqPLmvhU0WTu9m4U6Qgafs6lew0luYL3HjNhdu28xY=;
        b=BZWgFzLfOOpwyCjRSAF+DSluydIoRitC6cd8RWcYwITfiAvUkMHqsMl/ek7H1fOTSs
         C7i7YzfkJZci5BvSewu6ISILfr/PcXc7JBRuhBSuyMS0iWwZimM75376VUwUkllAGGgh
         9vAVDl8fYLV9wdG3wfOI5zq9Y4BfL7+I9J1wn27Vm0HAvHe2VDVaCh/QoCAEM74DIbYv
         m4wXxmgdNw/E74jHhv4ou4z8XCc32JNUZ/uRRl8YPyAjPdvf8xL6UGyHAxKy+a765gE/
         bGOQmyK/A3I21RNBw8R0twOxNckbpRgZS1Pxc6FPXsVyaDb/BA9v+kSgL0ttcur1j/dl
         I/Og==
MIME-Version: 1.0
X-Received: by 10.107.153.16 with SMTP id b16mr692992ioe.65.1447104921778;
 Mon, 09 Nov 2015 13:35:21 -0800 (PST)
Message-ID: <CADxEXOj7zHdWtMxuERxC3sPXFKDRYb-0gOtsWBcDH=0Zh3=Fig@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Tue, 10 Nov 2015 06:35:21 +0900
From: Pierre Kim <pierre.kim.sec@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: net-snmp OpenBSD package - insecure file permission vulnerability
To: oss-security@lists.openwall.com

Hello,

I am contacting you to request a CVE about the OpenBSD net-snmp
package (/usr/ports/net/net-snmp, http://openports.se/net/net-snmp),
concerning an insecure file permission vulnerability.


After installing the net-snmp package, I noticed there is a security problem.

By default the permissions of the snmpd configuration file are 0644
instead of 0600:

  # cd /usr/ports/net/net-snmp
  # make install clean
  ===>  Installing net-snmp-5.7.3p0 from /usr/ports/packages/i386/all/
  net-snmp-5.7.3p0: ok
  The following new rcscripts were installed: /etc/rc.d/netsnmpd
/etc/rc.d/netsnmptrapd
  See rcctl(8) for details.
  ===>  Cleaning for net-snmp-5.7.3p0
  # ls -latr /etc/snmp/snmpd.conf
  -rw-r--r--  1 root  wheel  6993 Nov  4 09:16 /etc/snmp/snmpd.conf
  #

  # uname -ap
  OpenBSD foo.my.domain 5.8 GENERIC#1066 i386 i386
  #


The same problem occurs when the provided package is installed with
`pkg_add http://ftp.spline.de/pub/OpenBSD/5.8/packages/i386/net-snmp-5.7.3p0.tgz`:

  # ls -latr /etc/snmp/snmpd.conf
  -rw-r--r--  1 root  wheel  6993 Nov  4 08:37 /etc/snmp/snmpd.conf
  #

The snmpd configuration file is readable by a local user and contains
the credentials
for read-only and read-write access (for SNMPv1, SNMPv2 and SNMPv3
protocols) and gives a local user unnecessary/dangerous access:

  [...]

  rocommunity public  default    -V systemonly
  #rocommunity secret  10.0.0.0/16
  rouser   authOnlyUser
  #rwuser   authPrivUser   priv

  [...]

Futhermore, by default, `/usr/local/sbin/snmpd` runs as root.

This problem is OpenBSD-specific as the
/var/db/pkg/net-snmp-5.7.3p0/+CONTENTS file confirms:
  @ts 1438958635
  @sample /etc/snmp/snmpd.conf



Stuart Henderson, the OpenBSD package maintainer, confirmed the
problem and stated that the permissions for
the configuration file (/etc/snmp/snmpd.conf) are now fixed in
-current and -stable.

This issue was openbsd-specific and affected the net-snmp package/port
for years.

Regards,

-- 
Pierre Kim
pierre.kim.sec@gmail.com
@PierreKimSec
https://pierrekim.github.io/
