X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["737" "Friday" "19" "August" "2016" "17:10:30" "+1000" "Wade Mealing" "wmealing@redhat.com" "<CALJHwhQEOavmdQ_dqNS2k5b1SFuvKUBTuQtOySi6zUfgSQ3-1Q@mail.gmail.com>" "19" "[oss-security] CVE-2016-6327 | Linux kernel crash in infiniband subsystem." "^Date:" nil nil "8" "2016081907:10:30" "[oss-security] CVE-2016-6327 | Linux kernel crash in infiniband subsystem." (number mark "        wmealing@red Aug 19   19/737   " thread-indent "\"[oss-security] CVE-2016-6327 | Linux kernel crash in infiniband subsystem.\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20382 invoked by uid 550); 19 Aug 2016 07:10:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20364 invoked from network); 19 Aug 2016 07:10:42 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=5kLlqy/H8MNXW4TTsOl+mtdSw8eNee6KqnIwxHG52tA=;
        b=hveJ9BGOHwU42D+7Nr/X8Sh/VZxjs1pRztNbFXTBjSNBGY+bAJ7wrhK/gzn94Fb72L
         Uwa4F3RQ/zcmPAdLnzSy70X9eQW9/3LG7fxVhymWcbJoxr7QPpjSJMX4yY+cmMUEBVh7
         I3lgwm56wLne90BP97+n6SZNBYhE0zYjsCYGiKSRvb15FwwQGnY9ZdMWhuHi4nDjokWO
         snDAsJTPwUxP2vDas4NoL2EXvhrwEhiXSTdK28ocS0G38wsicziu7TzmI6T91TS7Zui7
         pb9yWMYvPKB/d+kKtJVGSUdeqLetLEwuIChousCM3ueOjp8m3Slj2gttU1BJi976Gygr
         kulA==
X-Gm-Message-State: AEkooutsXlML8rE7VM1VGvE7Qij3lKfKF9GrucPkVDGrRESJMFfOXW9W5JbQYwwI4kLPV+HUTh4h+uiZJi+Aj4Qu
X-Received: by 10.36.124.141 with SMTP id a135mr4249018itd.25.1471590630716;
 Fri, 19 Aug 2016 00:10:30 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CALJHwhQEOavmdQ_dqNS2k5b1SFuvKUBTuQtOySi6zUfgSQ3-1Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Fri, 19 Aug 2016 17:10:30 +1000
From: Wade Mealing <wmealing@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2016-6327 | Linux kernel crash in infiniband subsystem.
To: oss-security@lists.openwall.com

System using the infiniband support module ib_srpt were vulnerable to
a denial of service by system crash by a local attacker who is able to
abort writes to a device using this initiator.

There were multiple areas in which aborting a scsi command are able to
be handled, moving this to the correct location in the state machine
ensured that this condition was never triggered through this code
path.

The null pointer situation was enabled via a non attacker controlled
meset() call, and this is not a use after free.  From my undestanding
it is a denial of service only.

Thanks,

Wade Mealing

https://bugzilla.redhat.com/show_bug.cgi?id=1354525
https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=51093254bf87
