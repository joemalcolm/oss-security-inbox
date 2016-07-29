X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1122" "Friday" "29" "July" "2016" "15:16:18" "+0000" "=?UTF-8?B?U8OpYmFzdGllbg==?= Delafond" "seb@debian.org" "<20160729170700.977@usenet.piggo.com>" "36" "[oss-security] CVE request: mongodb: world-readable .dbshell history file" nil nil nil "7" "2016072915:16:18" "[oss-security] CVE request: mongodb: world-readable .dbshell history file" (number mark "U       seb@debian.o Jul 29   36/1122  " thread-indent "\"[oss-security] CVE request: mongodb: world-readable .dbshell history file\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13397 invoked by uid 550); 29 Jul 2016 15:16:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13378 invoked from network); 29 Jul 2016 15:16:49 -0000
X-Injected-Via-Gmane: http://gmane.org/
To: oss-security@lists.openwall.com
From: =?UTF-8?Q?S=C3=A9bastien?= Delafond <seb@debian.org>
Date: Fri, 29 Jul 2016 15:16:18 +0000 (UTC)
Message-ID: <20160729170700.977@usenet.piggo.com>
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: static.60.129.47.78.clients.your-server.de
User-Agent: slrn/1.0.2 (Linux)
Subject: [oss-security] CVE request: mongodb: world-readable .dbshell history file

Hello,

from https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=832908:

,----
| During the report on redis-tools
| (https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=832460), lamby@
| linked to a codesearch and the same bug was found in mongodb-clients.
| 
| mongodb-clients stores its history in ~/.dbshell, this file is created
| with permissions 0644. Home folders are world readable as well in
| debian, so any user can access other users mongodb history, even though
| db.auth commands don't appear to be logged like redis did.
| 
| I filed a bug on upstream as well:
| https://jira.mongodb.org/browse/SERVER-25335
`----

The mongodb client doesn't store authentication commands, but there's
still information leakage, though, even if only about database and
collection names, or data structure.

As for data itself, the history could also contain sensitive
information; for instance, if usernames for some other service were
stored in a mongo collection, the history could contain lines like:

  db.users.find({user:"foo"})

or even:

  db.users.update({user:"foo"},{$set:{password:"OhComeOnNow"}})

Cheers,

--Seb

