X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2702" "Monday" "26" "September" "2016" "03:03:16" "+0200" "cookieopfer@gmx.net" "cookieopfer@gmx.net" "<trinity-b4ba7486-1df9-44b1-927e-feeb38f0466e-1474851796223@3capp-gmx-bs55>" "64" "Re: Re: [oss-security] ffmpeg afl bugs" "^Date:" nil nil "9" "2016092601:03:16" "[oss-security] ffmpeg afl bugs" (number mark "        cookieopfer@ Sep 26   64/2702  " thread-indent "\"Re: Re: [oss-security] ffmpeg afl bugs\"\n") "<CALx_OUDn=wBw4XdZw6YJdRTHQigpHqYHoED6JUNEx9LppY0ERA@mail.gmail.com>" ("<trinity-791b10d9-ee4c-4418-ab3c-338e17152b44-1474834018724@3capp-gmx-bs68>" "<20160925233516.GA10278@openwall.com>" "<CALx_OUDn=wBw4XdZw6YJdRTHQigpHqYHoED6JUNEx9LppY0ERA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5603 invoked by uid 550); 26 Sep 2016 01:56:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13507 invoked from network); 26 Sep 2016 01:03:27 -0000
MIME-Version: 1.0
Message-ID: <trinity-b4ba7486-1df9-44b1-927e-feeb38f0466e-1474851796223@3capp-gmx-bs55>
Content-Type: multipart/mixed;
 boundary=knika-8bdb15ca-fdca-400b-b1a4-1aa8e03d4c10
Importance: normal
Sensitivity: Normal
In-Reply-To: <CALx_OUDn=wBw4XdZw6YJdRTHQigpHqYHoED6JUNEx9LppY0ERA@mail.gmail.com>
References: <trinity-791b10d9-ee4c-4418-ab3c-338e17152b44-1474834018724@3capp-gmx-bs68>
 <20160925233516.GA10278@openwall.com>,
 <CALx_OUDn=wBw4XdZw6YJdRTHQigpHqYHoED6JUNEx9LppY0ERA@mail.gmail.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K0:G4ZL027HTfEH8FjGbdL89huzZC9Q9v8nBHiG8XlAo95
 cC0k0R6ru26PW47TAotQUW/FT96Vy1svNuIETn8B4cybdWSmux
 KnLuRV7oUipaMnHAVZsHqtgIb3r0E+J6diFUDnJihBJNbUz2Kc
 5yinAk4FkUYa3K+PRk2JEYlcmYIRuyf76f4zJXuYp/SWOMoAQL
 0yu3a0Y2KIpEcAbBwQZZoj0V66bfP8YbuGQmBTjkPkeSIkRYDC
 Ac7/SkbqJ2Tj7oP2D39DtCy7nheorn1RYpBng1ApFvI+UxwHzN nhXDMc=
X-UI-Out-Filterresults: notjunk:1;V01:K0:SLZe4vB2/1s=:OLKbJxApUkfsNRyqzaOUJu
 0ybqsReRPvZl/oBl9vtSipEzu8Ggh101WkCbKYWU1H+x+CQmbDTEf32ix+9+XdiRDlJYmSSY9
 oLXGvMxIZQIXnvuUwCh9pF59MPKflwYVOQxZp8axWlE5Tx0VkVVfSqxzW0Y5cS/VTygnoFLAJ
 YAH+JbpX/LBesJU5fgb2iMlJFuk0MyhzomB9AW44D1Tuiwuv9qSFGIuvEpfgIc0nB1wZ3frkc
 yVfE2xZIYxmOjpktK+BoXw8zktcZq8Y8nh9/eUCDnFExlSCrym382UTpep7jtsylbaHpLWpPT
 IxNcxDcEu8Z8pVpodI/QS/3SjcV3Es3ebVAyZ2GBg1L4Kz+OY795tBVIWbOEmzcY8ElSwD0N0
 F4/cXIYRLjC/PVRHQqrwmf60BP2VhVyLwnGq7hPW0WTD81manlq12lvjdpXXzbMhqHcXdI4eN
 0DbTyqVCJw==
Date: Mon, 26 Sep 2016 03:03:16 +0200
From: cookieopfer@gmx.net
Reply-To: oss-security@lists.openwall.com
Subject: Re: Re: [oss-security] ffmpeg afl bugs
To: oss-security@lists.openwall.com

--knika-8bdb15ca-fdca-400b-b1a4-1aa8e03d4c10
Content-Type: text/plain; charset=UTF-8



> Have fun with ffmpeg-h264-call-stack-overflow.mp4
> > Perhaps you meant to share this file with this community?

yes, I forgot to mention it is in
/usr/share/doc/afl/vuln_samples/ffmpeg-h264-call-stack-overflow.mp4
 
> Hmm... I think that
> docs/vuln_samples/ffmpeg-h264-call-stack-overflow.mp4 is just a sample
> file that comes with AFL (and dates back to December 2014). I doubt it
> still crashes anything

see above! not crashing, but:

 "overread end of atom 'stsd' by 4294967134 bytes"

> and I'm not sure what the original reporter was trying to say.
> 
> /mz

I just can't fix it further on this machine, so I only could post the
trace.

Also thanks for afl-fuzz!
--knika-8bdb15ca-fdca-400b-b1a4-1aa8e03d4c10
Content-Type: video/mp4
Content-Disposition: attachment;
 filename=ffmpeg-h264-call-stack-overflow.mp4
Content-Transfer-Encoding: base64

AAAAGGZ0eXBtcDQyASoAfm1wNDJpc29tAAAACGZyZWUAAAGVbWRhdAAAAHhl
iIBAAGtv/vfUt8yy8CAitguo96JpS+Cu3Fec17PZ1ufxFoY+O5PyW3SbHheq
aWGKdNZqLdmyhMPM7OWrA4Eu62fM5//3k9lDJf5H4RxSZa399HdeDKvMlvbt
47BpXVuT4b4h7dyKSKY/aT4ezkSaUMF5GAIl4ZAAAAACCTAAAAA2QZoCDfIb
6AZqAICg1t+sIf71TApS7TeWCSOV/5Vf1dOiT4TCTtSlgy+pSb6QOizjx5st
9r6fAAAAAglQAAAADwGeBAXRBjb/2N4/9NBdwAAAAAIJUAAAAA8BngQJ0QY2
/9jeP/TQXcAAAAACCTAAAAAOQZoEHV8mCDW3/tqmWREAAAACCVAAAAALQZ4G
FaYgzt8ADLgAAAACCVAAAAALAZ4IEdkGNv8AEjAAAAACCVAAAAALAZ4IGaZB
jb8AEjAAAAACCTAAAAAPQZoIKNLRMBBrb/7aplkRAAAAAglQAAAACwGeCiGm
QY33k9lDAAAAAglQAAAACwGedCWmQY2/ABIwAAAAAQoAAAM+bW9vdgAAAGxt
dmhkAAAAANCLYQDQi2EAAAACAAABX5AAAQAAAQAAAAAAAAAAAAAAAAEAAAAA
AAAAAAAAAAAAAAAB7P8AAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAgAAAsp0cmFrAAAAXHRraGQAAAAH0IthANCLYQAAAAAB
AAAAAAABX5AAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAABAAAA
AAAAAAAAAAAAAABAAAAAADAAAACQAAAAAAJmbWRpYQAAACBtZGhkAAAAANCL
YQDQi2EAAAAADAAAAAwVxwAAAAAANGhkbHIAAABlAAAAAAAAAAAAAAAAVmlk
ZW8gTWVkaWEgSGFuZGxlcgAAAAIKbWluZgAAABR2bWhkAAAAAQAAAAAAAAAA
AAAAJGRpbmYAAAAcZHJlZgAAAAAAAAABAAAADHVybCAAAAABAAABynN0YmwA
AACic3RzZAAAAAAAAAAB////8AAQADFNAAAAAAAAAQAAAAAAAAAAAAAAAAAA
AAAAMACQAEgAAAAAAAQAAAAAAAEKQVZDIENvZGluZwAAIAAAAAAAAAAAAAAA
AAAAAAAAAAAY//8AAAA8YXZjQwFkQBT/4QAkZ2QAFKwspDE7AVIMDAyAAAAD
AIAAAAxwQAfQAyH4xwdoSJZYAQAFaOtzUlAAAAAYc3R0cwAAAAAAAAABAAAA
DAAAAAEAAABgY3R0cwAAAAAAAAAKAAAAAQAAAAEAAAABAAAAAwAAAAIAAAAA
AAAAAQAAAAQAAAABAAAAAQAAAAH/////AAAAAQAAAAAAAAABAAAAAwAAAAIA
AAAAAAAAAf////8AAAA0c3RzYwAAAAAAAAADAAAAAQAAAAUAAAABAAAAAgAA
AAQAAAABAAAAAwAAAAMAAAABAAAARHN0c3oAAAAAAAAAAAAAAAwAAAB8AAAA
QAAAABkAAAAZAAAAGAAAABUAAAAVAAAAFQAAABkAAAAVAAAAFQAAAAUAAAAc
c3RjbwAAAAAAAAADAAAAKAAAAS4AAAGGAAAAFHN0c3MAAAAAAAAAAQAAAAE=

--knika-8bdb15ca-fdca-400b-b1a4-1aa8e03d4c10--
