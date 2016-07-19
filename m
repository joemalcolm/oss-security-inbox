X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1317" "Tuesday" "19" "July" "2016" "11:39:15" "+0200" "Sebastian Krahmer" "krahmer@suse.com" "<20160719093915.GA29047@suse.de>" "40" "[oss-security] subuid security patches for shadow package" nil nil nil "7" "2016071909:39:15" "[oss-security] subuid security patches for shadow package" (number mark "U       krahmer@suse Jul 19   40/1317  " thread-indent "\"[oss-security] subuid security patches for shadow package\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30150 invoked by uid 550); 19 Jul 2016 09:39:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30096 invoked from network); 19 Jul 2016 09:39:28 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Tue, 19 Jul 2016 11:39:15 +0200
From: Sebastian Krahmer <krahmer@suse.com>
To: oss-security@lists.openwall.com
Cc: ebiederm@xmission.com
Message-ID: <20160719093915.GA29047@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Organization: SUSE Linux GmbH, GF: Felix =?utf-8?Q?Imend?=
 =?utf-8?Q?=F6rffer?= =?utf-8?Q?=2C?= Jane Smithard, Graham Norton, HRB 21284
 (AG Nuernberg)
User-Agent: Outlook
Subject: [oss-security] subuid security patches for shadow package

Hi

The shadow package contains newuidmap and newgidmap suid
binaries in order to allow users to take advantage of the
userns feature of uid-mappings.

I added patches here:

https://bugzilla.suse.com/show_bug.cgi?id=979282

they consist of:

1) Removing getlogin() to find out about users.
   It relies on utmp, which is not a trusted base of info (group writable).

2) Cleaning up UID retrieval and computation. The 'long long' code was
   totally unclear to me, as the numbers are converted to ulong right
   afterwards anyway. Additionally there was a *int overflow*, which can be
   tested via 'newuidmap $$ 0 10000 -1' (given that 10000 is listed as allowed)
   which produces no error but tries to write large "count" values to the uid_map
   file. Kernel may check for overflows itself, but it should not be allowed
   by a suid binary to be written in the first place.

Theoretically theres also a TOCTOU issue in newuidmap, since the
st_uid fields of the stat on /proc/pid may change over time
(suid being executed), but to my analsysis such twists have no gain
for the attacker.

Patch should be tested by upstream, since I am not sure what the
getlogin() code (shared uids??) was about at all.

Sebastian


-- 

~ perl self.pl
~ $_='print"\$_=\47$_\47;eval"';eval
~ krahmer@suse.com - SuSE Security Team

