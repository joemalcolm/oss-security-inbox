X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1807" "Sunday" "6" "November" "2016" "17:52:31" "-0500" "Siddharth Sharma" "siddharth@redhat.com" "<1232346907.5838823.1478472751323.JavaMail.zimbra@redhat.com>" "44" "Re: [oss-security] nfsd-ganesha allows anyone to call into DBUS?" nil nil nil "11" "2016110622:52:31" "[oss-security] nfsd-ganesha allows anyone to call into DBUS?" (number mark "U       siddharth@re Nov  6   44/1807  " thread-indent "\"Re: [oss-security] nfsd-ganesha allows anyone to call into DBUS?\"\n") "<20160912095353.GB17469@suse.de>" ("<20160912095353.GB17469@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17489 invoked by uid 550); 6 Nov 2016 23:13:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8101 invoked from network); 6 Nov 2016 22:52:54 -0000
Date: Sun, 6 Nov 2016 17:52:31 -0500 (EST)
From: Siddharth Sharma <siddharth@redhat.com>
To: oss-security@lists.openwall.com
Cc: matt@linuxbox.com, philippe deniel <philippe.deniel@cea.fr>
Message-ID: <1232346907.5838823.1478472751323.JavaMail.zimbra@redhat.com>
In-Reply-To: <20160912095353.GB17469@suse.de>
References: <20160912095353.GB17469@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.36.4.142]
X-Mailer: Zimbra 8.0.6_GA_5922 (ZimbraWebClient - FF49 (Linux)/8.0.6_GA_5922)
Thread-Topic: nfsd-ganesha allows anyone to call into DBUS?
Thread-Index: D6EXK3No+nL28tXv5unESXUbP6n5Wg==
Subject: Re: [oss-security] nfsd-ganesha allows anyone to call into DBUS?

Hi,

Which version of nfs-ganesha did you use ? Can you be more specific
I tried to reproduce this quite a lot of times in my testing environment
But I always get 

~]$  dbus-send --print-reply --system --dest=org.ganesha.nfsd  /org/ganesha/nfsd/ExportMgr org.ganesha.nfsd.exportmgr.AddExport  string:$GANESHA_DIR/exports/export.$VOL.conf string:"EXPORT(Path=/$SERV_MALICIOUS_CONTENT)"
Error org.freedesktop.DBus.Error.AccessDenied: Rejected send message, 1 matched rules; type="method_call", sender=":1.159" (uid=1000 pid=3852 comm="dbus-send --print-reply --system --dest=org.ganesh") 

anything you did differently ?
-----------------------------------------------------------------
Siddharth Sharma / Red Hat Product Security / Key ID : 0xD9F6489A      
Fingerprint  :  6F04 C684 A49C E4CE 8148 E841 CD6F 8E55 D9F6 489A


----- Original Message -----
From: "Sebastian Krahmer" <krahmer@suse.com>
To: oss-security@lists.openwall.com
Cc: matt@linuxbox.com, "philippe deniel" <philippe.deniel@cea.fr>
Sent: Monday, September 12, 2016 3:23:53 PM
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

