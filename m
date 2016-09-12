X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["690" "Monday" "12" "September" "2016" "11:53:53" "+0200" "Sebastian Krahmer" "krahmer@suse.com" "<20160912095353.GB17469@suse.de>" "22" "[oss-security] nfsd-ganesha allows anyone to call into DBUS?" nil nil nil "9" "2016091209:53:53" "[oss-security] nfsd-ganesha allows anyone to call into DBUS?" (number mark "U       krahmer@suse Sep 12   22/690   " thread-indent "\"[oss-security] nfsd-ganesha allows anyone to call into DBUS?\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9290 invoked by uid 550); 12 Sep 2016 09:54:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9252 invoked from network); 12 Sep 2016 09:54:06 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Mon, 12 Sep 2016 11:53:53 +0200
From: Sebastian Krahmer <krahmer@suse.com>
To: oss-security@lists.openwall.com
Cc: matt@linuxbox.com, philippe.deniel@cea.fr
Message-ID: <20160912095353.GB17469@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Organization: SUSE Linux GmbH, GF: Felix =?utf-8?Q?Imend?=
 =?utf-8?Q?=F6rffer?= =?utf-8?Q?=2C?= Jane Smithard, Graham Norton, HRB 21284
 (AG Nuernberg)
User-Agent: Outlook
Subject: [oss-security] nfsd-ganesha allows anyone to call into DBUS?

Hi

The nfs-ganesha (userspace nfsd) offers a dbus API to control/admin
the nfsd via cmdline tools and some qt+python code.

The default dbus config seems to allow anyone to connect to
it and invoke methods. The code at least does not check any polkit
authorizations or dbus sender (at a first look). Am I missing something? If I dont,
the DBUS API should be declared experimental and disabled by default,
since there are some methods which would allow users to gain root.

https://github.com/nfs-ganesha/nfs-ganesha/
https://github.com/nfs-ganesha/nfs-ganesha/wiki/Dbusinterface

Sebastian

-- 

~ perl self.pl
~ $_='print"\$_=\47$_\47;eval"';eval
~ krahmer@suse.com - SuSE Security Team

