X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["873" "Wednesday" "27" "April" "2016" "12:30:57" "+1000" "Wade Mealing" "wmealing@redhat.com" "<CALJHwhRhh=RqEH+m3CfT4KsuG3m3LgMC9vRZh4QFXSTkV-PtUg@mail.gmail.com>" "24" "[oss-security] CVE-2016-0723: Linux kernel: Kernel memory disclosure." nil nil nil "4" "2016042702:30:57" "[oss-security] CVE-2016-0723: Linux kernel: Kernel memory disclosure." (number mark "U       wmealing@red Apr 27   24/873   " thread-indent "\"[oss-security] CVE-2016-0723: Linux kernel: Kernel memory disclosure.\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11976 invoked by uid 550); 27 Apr 2016 02:31:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11958 invoked from network); 27 Apr 2016 02:31:09 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=VHgFoHdkkgnJ+39UFgCbpzOJrpbsXM0p6VcXbzUlbGs=;
        b=d62QUuMxZSFNPY8qdQmmLO3SVDVlWrd6W4ZUDVbTNhpW/dqK1ux3+pxNPXVOpJMSlN
         iz7WwoTQCoKFEoKbh2x+w9+hxpsl7qjbTkfU0UpJ+fs9dE3BDp70+HFKVGb5fRo5Eps0
         +CQNZxxFWGe/Qs9YtB6+uaLM5+HfBuRqogTlIFW2sl6r+sTK4B20zug6s+1WBLyXcW3N
         R67oRVXEV7Yrrio2RbDree6IlNeG7Yxakm/6GpWFk9Y/O+HHT/9GLxEgt84SFG7KzGzg
         8rGkK9kfGjdwmaLHWiN9J98JN+hizkfmqFNEXBQSH48DFusT924o+Vv74aDKh4jZk0ZW
         zQTA==
X-Gm-Message-State: AOPr4FWhsLpjvvI1y+xPuxVxhhQ6MGgsJBzj9oOdIrscSTPt6FVI5SNy342SUevlEqXUTwj3qJbUWyCAkevMMpah
MIME-Version: 1.0
X-Received: by 10.28.55.139 with SMTP id e133mr6828208wma.98.1461724257660;
 Tue, 26 Apr 2016 19:30:57 -0700 (PDT)
Date: Wed, 27 Apr 2016 12:30:57 +1000
Message-ID: <CALJHwhRhh=RqEH+m3CfT4KsuG3m3LgMC9vRZh4QFXSTkV-PtUg@mail.gmail.com>
From: Wade Mealing <wmealing@redhat.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] CVE-2016-0723: Linux kernel: Kernel memory disclosure.

A flaw was discovered in the linux kernel tty subsystem which allows
for disclosure of uncontrolled memory location and possible kernel
panic. The information leak is caused by a race condition when
attempting to set and read the tty line discipline.

An attacker can use the TIOCSETD (via tty_set_ldisc ) to switch to a
new line discipline, a concurrent call to with a TIOCGETD ioctl
performs a read on a given tty may be able to access memory previously
 allocated.  Up to 4 bytes may leaked to userspace when querying the
line discipline.

Thanks,

Wade Mealing
Red Hat Product Security

Upstream fix:
http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=5c17c861a357e9458001f021a7afa7aab9937439

Upstream discussion:
http://lkml.iu.edu/hypermail/linux/kernel/1511.3/03045.html

Red Hat bugzilla:
https://bugzilla.redhat.com/show_bug.cgi?id=1296253
