X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4084" "Wednesday" "1" "February" "2017" "00:40:54" "+0900" "Paul Cher" "paulcher@seclab.cs.msu.su" "<835F27A3-C4DD-4E9F-B6ED-8D271C083B42@seclab.cs.msu.su>" "81" "[oss-security] CVE Request: ffmpeg remote exploitaion results code execution" nil nil nil "2" "2017013115:40:54" "[oss-security] CVE Request: ffmpeg remote exploitaion results code execution" (number mark "U       paulcher@sec Feb  1   81/4084  " thread-indent "\"[oss-security] CVE Request: ffmpeg remote exploitaion results code execution\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20139 invoked by uid 550); 31 Jan 2017 15:42:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17894 invoked from network); 31 Jan 2017 15:41:15 -0000
From: Paul Cher <paulcher@seclab.cs.msu.su>
Content-Type: multipart/alternative;
 boundary="Apple-Mail=_51C84719-F833-448B-B11D-F1E6A2365AD2"
Mime-Version: 1.0 (Mac OS X Mail 10.2 \(3259\))
Message-Id: <835F27A3-C4DD-4E9F-B6ED-8D271C083B42@seclab.cs.msu.su>
Date: Wed, 1 Feb 2017 00:40:54 +0900
Cc: =?utf-8?B?0K3QvNC40LvRjCDQm9C10YDQvdC10YA=?= <neex.emil@gmail.com>
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3259)
Subject: [oss-security] CVE Request: ffmpeg remote exploitaion results code execution

--Apple-Mail=_51C84719-F833-448B-B11D-F1E6A2365AD2
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

This letter is a result of research made by Emil Lerner <neex.emil@gmail.co=
m <mailto:neex.emil@gmail.com>> and Pavel Cheremushkin <paulcher@seclab.cs.=
msu.su <mailto:paulcher@seclab.cs.msu.su>> and it is supposed to disclosed =
multiple issues we managed to find and exploit in FFmpeg software. Despite =
that all vulnerabilities have been successfully patched by FFmpeg developer=
s this letter is supposed to clarify all these issues and show that they ar=
e exploitable.

--[ 1 - libavformat/http.c  ]

After executing of http_read_stream we read each http header, where we pass=
 "Transfer-Encoding: chunked=E2=80=9D header, and we come into http_buf_rea=
d function [1]. Due to incorrect use of strtoll function and integer sizes =
(chunk_size in int64_t)[2], it was possible to pass negative chunk_size in =
chunk encoding, so after computing final size using FFMIN function later on=
 it would be passed as argument to avio_read function. This results a heap-=
overflow which we found out to be exploitable, because overflowed buffer is=
 allocated right next to the AVIOContext structure[3]. Overflowing function=
 pointer in this structure immediately results rip control and then code ex=
ecution.

* [1] - https://github.com/FFmpeg/FFmpeg/blob/51020adcecf4004c1586a708d96ac=
c6cbddd050a/libavformat/http.c#L1166 <https://github.com/FFmpeg/FFmpeg/blob=
/51020adcecf4004c1586a708d96acc6cbddd050a/libavformat/http.c#L1166>
* [2] - https://github.com/FFmpeg/FFmpeg/blob/51020adcecf4004c1586a708d96ac=
c6cbddd050a/libavformat/http.c#L1259 <https://github.com/FFmpeg/FFmpeg/blob=
/51020adcecf4004c1586a708d96acc6cbddd050a/libavformat/http.c#L1259>
* [3] - https://github.com/FFmpeg/FFmpeg/blob/51020adcecf4004c1586a708d96ac=
c6cbddd050a/libavformat/aviobuf.c#L899 <https://github.com/FFmpeg/FFmpeg/bl=
ob/51020adcecf4004c1586a708d96acc6cbddd050a/libavformat/aviobuf.c#L899>

This issue was fixed in https://github.com/FFmpeg/FFmpeg/commit/2a05c8f813d=
e6f2278827734bf8102291e7484aa <https://github.com/FFmpeg/FFmpeg/commit/2a05=
c8f813de6f2278827734bf8102291e7484aa>

--[ 2 - libavformat/rtmppkt.c ]

Issue is connected with buffer overflow on the heap in RTMP protocol. After=
 a bit of reverse engineering of RTMP protocol you can notice that it uses =
chunk (of max 0x80 bytes) to _transfer_ data, but chunks of more size could=
 be used to _store_ the data. Because size of packet is not check that it i=
s the same as it was in the same transmission you can first send packet wit=
h smaller size and then bigger size, and this results heap-overflow[1]. If =
you can align chunks right you can achieve white-what-where condition and t=
hat results and RCE.

* [1] - https://github.com/FFmpeg/FFmpeg/blob/d903b4e3ad4a81b3dd79f12c2f3b9=
cb16e511173/libavformat/rtmppkt.c#L268 <https://github.com/FFmpeg/FFmpeg/bl=
ob/d903b4e3ad4a81b3dd79f12c2f3b9cb16e511173/libavformat/rtmppkt.c#L268>

The issue was fixed in https://github.com/FFmpeg/FFmpeg/commit/7d57ca4d9a75=
562fa32e40766211de150f8b3ee7 <https://github.com/FFmpeg/FFmpeg/commit/7d57c=
a4d9a75562fa32e40766211de150f8b3ee7>

--[ 3 - ffserver.c ]

This issue is completely like the first one and it results heap overflow.

This issue was fixed in https://github.com/FFmpeg/FFmpeg/commit/a5d25faa3f4=
b18dac737fdb35d0dd68eb0dc2156 <https://github.com/FFmpeg/FFmpeg/commit/a5d2=
5faa3f4b18dac737fdb35d0dd68eb0dc2156>

--[ Conclusion ]

We are currently continue our research on FFmpeg security and hope to contr=
ibute more later on. These issues where fixed quite long ago, so I find it =
acceptable to attach links to exploits:
* https://gist.github.com/PaulCher/324690b88db8c4cf844e056289d4a1d6 <https:=
//gist.github.com/PaulCher/324690b88db8c4cf844e056289d4a1d6>
* https://gist.github.com/PaulCher/9acf4dc47c95a8b40b456ba03b05a913 <https:=
//gist.github.com/PaulCher/9acf4dc47c95a8b40b456ba03b05a913>

Thanks in advance,
Paul=

--Apple-Mail=_51C84719-F833-448B-B11D-F1E6A2365AD2--
