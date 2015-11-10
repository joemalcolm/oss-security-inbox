X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4255" "Tuesday" "10" "November" "2015" "10:29:05" "-0300" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdSp7D-1_qhZzB2Z5D4esN4K4aczp5cc+Vzm4J+ySDReyw@mail.gmail.com>" "117" "[oss-security] Several reads out-of-bound in mplayer 1.1" "^Date:" nil nil "11" "2015111013:29:05" "[oss-security] Several reads out-of-bound in mplayer 1.1" (number mark "U       gustavo.grie Nov 10  117/4255  " thread-indent "\"[oss-security] Several reads out-of-bound in mplayer 1.1\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29912 invoked by uid 550); 10 Nov 2015 13:29:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29759 invoked from network); 10 Nov 2015 13:29:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=jpE5pUJfOWudrpUsyF0Pq9W3ZZlTQy7BQut1etMRpD8=;
        b=HaillL5cshRnbCxJpNTDGn2sr/qyZKsnVZaC6nihAk8J/5E6yIFkmfb55VgPPVEvgu
         fUD3ekcF2MmTVktQ+gUVaxQIUOXCQR9gTYETN/66DtbHqQ0LDJAirQw+bYUeuI7F+Ozj
         xKMaJgM8sG/Z2NkCHLtYA939VSiCLWfmTR/Kd8FD3DMrC8M66uZeVeAVPt4/ebmsqb0A
         ikil267PzXBxfFI7TsRbtjVzA+9A+VZzeGeWcTz+ApFx9yq1Gp1/5+Sq2wJZZV1k4Wmn
         Usy8BttIbO+9XylsxFh6eggGVmT+0280ZPgIEq8GHVjePf2oVWYcH4ykFTunrBW6HfLr
         8B5A==
MIME-Version: 1.0
X-Received: by 10.112.136.136 with SMTP id qa8mr1718489lbb.14.1447162145280;
 Tue, 10 Nov 2015 05:29:05 -0800 (PST)
Message-ID: <CACn5sdSp7D-1_qhZzB2Z5D4esN4K4aczp5cc+Vzm4J+ySDReyw@mail.gmail.com>
Content-Type: multipart/alternative; boundary=089e011831169a1fb705242fb1a5
Date: Tue, 10 Nov 2015 10:29:05 -0300
From: Gustavo Grieco <gustavo.grieco@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Several reads out-of-bound in mplayer 1.1
To: oss-security@lists.openwall.com

--089e011831169a1fb705242fb1a5
Content-Type: text/plain; charset=UTF-8

Some reads out-of-bound in functions asf_mmst_streaming_start and
http_build_request are present in Mplayer 1.1-4.8 (tested in Ubuntu 14.04).
Other versions are probably affected. Upstream is notified.

How to reproduce:

First, launch a dummy server:

$ true | netcat -l 127.0.0.1 5002

Then, mplayer using valgrind:

$ valgrind mplayer mms://127.0.0.1:5002
==31830== Memcheck, a memory error detector
==31830== Copyright (C) 2002-2013, and GNU GPL'd, by Julian Seward et al.
==31830== Using Valgrind-3.10.0.SVN and LibVEX; rerun with -h for copyright
info
==31830== Command: mplayer mms://127.0.0.1:5002
==31830==
MPlayer 1.1-4.8 (C) 2000-2012 MPlayer Team
mplayer: could not connect to socket
mplayer: No such file or directory
Failed to open LIRC support. You will not be able to use your remote
control.

Playing mms://127.0.0.1:5002.
STREAM_ASF, URL: mms://127.0.0.1:5002
Resolving 127.0.0.1 for AF_INET6...

Couldn't resolve name for AF_INET6: 127.0.0.1
Connecting to server 127.0.0.1[127.0.0.1]: 5002...

Connected
==31830== Invalid read of size 4
==31830==    at 0x5A6792: asf_mmst_streaming_start
(asf_mmst_streaming.c:595)
==31830==    by 0x5A8AA8: open_s (asf_streaming.c:94)
==31830==    by 0x54FD1F: open_stream_full (stream.c:186)
==31830==    by 0x54F3D0: open_stream (open.c:65)
==31830==    by 0x4321D9: main (mplayer.c:3223)
==31830==  Address 0x153e0ef0 is 0 bytes inside a block of size 1 alloc'd
==31830==    at 0x4C2AB80: malloc (in
/usr/lib/valgrind/vgpreload_memcheck-amd64-linux.so)
==31830==    by 0x5A65E7: asf_mmst_streaming_start
(asf_mmst_streaming.c:539)
==31830==    by 0x5A8AA8: open_s (asf_streaming.c:94)
==31830==    by 0x54FD1F: open_stream_full (stream.c:186)
==31830==    by 0x54F3D0: open_stream (open.c:65)
==31830==    by 0x4321D9: main (mplayer.c:3223)
==31830==
==31830== Invalid read of size 4
==31830==    at 0x5A67E6: asf_mmst_streaming_start
(asf_mmst_streaming.c:597)
==31830==    by 0x5A8AA8: open_s (asf_streaming.c:94)
==31830==    by 0x54FD1F: open_stream_full (stream.c:186)
==31830==    by 0x54F3D0: open_stream (open.c:65)
==31830==    by 0x4321D9: main (mplayer.c:3223)
==31830==  Address 0x153e0ef0 is 0 bytes inside a block of size 1 alloc'd
==31830==    at 0x4C2AB80: malloc (in
/usr/lib/valgrind/vgpreload_memcheck-amd64-linux.so)
==31830==    by 0x5A65E7: asf_mmst_streaming_start
(asf_mmst_streaming.c:539)
==31830==    by 0x5A8AA8: open_s (asf_streaming.c:94)
==31830==    by 0x54FD1F: open_stream_full (stream.c:186)
==31830==    by 0x54F3D0: open_stream (open.c:65)
==31830==    by 0x4321D9: main (mplayer.c:3223)
==31830==

Alert! EOF
read error:: Operation now in progress
pre-header read failed
Resolving 127.0.0.1 for AF_INET6...

Couldn't resolve name for AF_INET6: 127.0.0.1
Connecting to server 127.0.0.1[127.0.0.1]: 5002...

connect error: Connection refused
Failed, exiting.
==31830== Invalid read of size 4
==31830==    at 0x5AA4BA: http_build_request (http.c:478)
==31830==    by 0x5AB409: http_send_request (network.c:261)
==31830==    by 0x5AA827: http_streaming_start (http.c:725)
==31830==    by 0x5AAF5B: open_s2 (http.c:936)
==31830==    by 0x54FD1F: open_stream_full (stream.c:186)
==31830==    by 0x54F3D0: open_stream (open.c:65)
==31830==    by 0x4321D9: main (mplayer.c:3223)
==31830==  Address 0x153ecf90 is 0 bytes inside a block of size 2 alloc'd
==31830==    at 0x4C2AB80: malloc (in
/usr/lib/valgrind/vgpreload_memcheck-amd64-linux.so)
==31830==    by 0x5AA492: http_build_request (http.c:468)
==31830==    by 0x5AB409: http_send_request (network.c:261)
==31830==    by 0x5AA827: http_streaming_start (http.c:725)
==31830==    by 0x5AAF5B: open_s2 (http.c:936)
==31830==    by 0x54FD1F: open_stream_full (stream.c:186)
==31830==    by 0x54F3D0: open_stream (open.c:65)
==31830==    by 0x4321D9: main (mplayer.c:3223)
==31830==
Resolving 127.0.0.1 for AF_INET6...

Couldn't resolve name for AF_INET6: 127.0.0.1
Connecting to server 127.0.0.1[127.0.0.1]: 5002...

connect error: Connection refused
No stream found to handle url mms://127.0.0.1:5002


Exiting... (End of file)

This issue was discovered using QuickFuzz and minimized manually

Regards,
Gus.

--089e011831169a1fb705242fb1a5--
