X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1431" "Tuesday" "1" "September" "2015" "22:37:04" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty1z+6T=r0mef55Hd1tHfiDVLT77MaD9ddVvOnNKx5td0w@mail.gmail.com>" "39" "[oss-security] CVE REJECT CVE-2015-3287" nil nil nil "9" "2015090204:37:04" "[oss-security] CVE REJECT CVE-2015-3287" (number mark "        kseifried@re Sep  1   39/1431  " thread-indent "\"[oss-security] CVE REJECT CVE-2015-3287\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27713 invoked by uid 550); 2 Sep 2015 04:37:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27695 invoked from network); 2 Sep 2015 04:37:17 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=fh16ZV3ZquCftv065yyY7kRMeHzwKp5m9SL2mYfftKM=;
        b=UbyVMisFbrOMmMgyruGHENufEJ4xQfph5DXVe5CKM5TajjcorwmPGuCiOZgrl0OewK
         xM4fnO0HITZRNCPmTJIg6QjVIKql/FbI11RNGcnMf4hf9gig+nH/DRnDpBh8TlC6vyGt
         wzkIdqOtF+/BA49++d1N5H76vxD0UbUgCt7X3BxoGe0jQzs/NmgmDvx2GZsmdpB2AHNI
         /H+9rz+8I6xln1kgPo8Vla/vJfvHO9onGJUOOX2ZE7U5ZmqyVtkiRS6Qn9iVM6HuCNBF
         T9BHNUEoTrogL8nQmhkXFUVxrp6Hi48Lhr7vIZBWyObLh4r2wMBQWlnszl210a+cBYpl
         i11A==
X-Gm-Message-State: ALoCoQmECtCz7F3mqWgeQ63WHpHGlpsdeFviPSnIN7bbBpmnZAUPiGALiHgXmwTXyDpIif9DGuGr
MIME-Version: 1.0
X-Received: by 10.170.165.197 with SMTP id h188mr1850468ykd.45.1441168624878;
 Tue, 01 Sep 2015 21:37:04 -0700 (PDT)
Message-ID: <CANO=Ty1z+6T=r0mef55Hd1tHfiDVLT77MaD9ddVvOnNKx5td0w@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a113a2fe0f2d95e051ebc379f
Date: Tue, 1 Sep 2015 22:37:04 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE REJECT CVE-2015-3287
To: oss-security <oss-security@lists.openwall.com>, cve-assign@mitre.org, 
	security@openafs.org, security@samba.org

--001a113a2fe0f2d95e051ebc379f
Content-Type: text/plain; charset=UTF-8

So I know we said no more CVE rejects here but this one is public and
already a mess.

Long story short I assigned the following CVE's to OpenAFS:

CVE-2015-3282 OpenAFS: vos leaks stack data onto the wire in the clear when
creating vldb entries
CVE-2015-3283 OpenAFS: bos commands can be spoofed, including some which
alter server state
CVE-2015-3284 OpenAFS: pioctls leak kernel memory
CVE-2015-3285 OpenAFS: kernel pioctl support for OSD command passing can
trigger a panic
CVE-2015-3286 OpenAFS: Solaris grouplist modifications for PAGs can panic
or overwrite memory

however they also used CVE-2015-3287 for
http://www.openafs.org/pages/security/OPENAFS-SA-2015-006.txt

I definitely did NOT assign CVE-2015-3287 to OpenAFS, I double checked my
email to them and the commits to our file that we use to handle CVE
assignments.

I did in fact assign CVE-2015-3287 to Samba (for a still embargoed issue).
I was notified of this duplicate issue by Samba (basically asking me what
was going on).

Mitre: can you please REJECT CVE-2015-3287 and assign a NEW CVE for the
OpenAFS issue. I have assigned Samba a new CVE for their embargoed issue
already. Thanks.

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a113a2fe0f2d95e051ebc379f--
