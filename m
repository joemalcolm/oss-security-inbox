X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1474" "Sunday" "25" "September" "2016" "22:06:58" "+0200" "cookieopfer@gmx.net" "cookieopfer@gmx.net" "<trinity-791b10d9-ee4c-4418-ab3c-338e17152b44-1474834018724@3capp-gmx-bs68>" "70" "[oss-security] ffmpeg afl bugs" "^Date:" nil nil "9" "2016092520:06:58" "[oss-security] ffmpeg afl bugs" (number mark "        cookieopfer@ Sep 25   70/1474  " thread-indent "\"[oss-security] ffmpeg afl bugs\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12131 invoked by uid 550); 25 Sep 2016 20:11:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 8070 invoked from network); 25 Sep 2016 20:07:10 -0000
MIME-Version: 1.0
Message-ID: <trinity-791b10d9-ee4c-4418-ab3c-338e17152b44-1474834018724@3capp-gmx-bs68>
Content-Type: text/plain; charset=UTF-8
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K0:u0hXGFbSyNprDUBcGAAZTMJwx0htDiWFQJy0eC1pSLa
 S9GMfvdUwsojUewcQCXqbo0MTT/a1lv4K5FeRO9Zgplv8dGnx2
 YAcmscQz0UJt3TJhMoTF0Y//WeH0jUWglOHzqicpcjZHMvQb6J
 EDmUCfqzHKOMdt3p6hV9DQTTjH/q/yXNKKWtsLLvE+jI0OYwXV
 X914LG/F7Se2CzFJhGkRCJmjpcwa8TGJXsaXkzRyt1zTaRVMeT
 mGV6UyOQmrw3HXdV+DZYyVm890TvqN4FCAv36VqvWe9kAF7IwZ 2/Ywtk=
X-UI-Out-Filterresults: notjunk:1;V01:K0:Ap33cn/pZQM=:2XEIChxLspiIsu68HyBeGE
 rP2t63ipdcQSkFsA7sJy3eRrTQEf5bCi5nULkCb2URYkgqu9YShyy7G0aaybDbVlMJL5u0QbM
 7K7x6v7n7Qf+myUGR8KJthQ6aeMRp6YuydjJdD45BlCA07wRkA1nDtdRQ9W391rahk1xVez4R
 Yol33Ye0qXdeFSr7+nhJKRq6XSPp3vUrAGE5zO+sr/fZt6gsKiutJlgQSOoOj3G6vwrgqZthA
 0hy+DntntQNRCZ6Cl3/RLJx/LHK3ol+Zw9xYbiL5UImWQqmId36r73hOcdHcGLBHEHLa/IKRe
 EqJLrK4uMLiMU0SajdEui4XOkLBJR69Vt0KX269IGLjtH9sZcPkGYp53yrioPUCTlU7x4csWp
 vOV60BjuusuG6/+BrIsgEtgtRIyoedpkajW6PpoUPWFJUiWoQpy4dKuJU517FlT7rm3AwdQ9b
 mhYlwbi2XQ==
Date: Sun, 25 Sep 2016 22:06:58 +0200
From: cookieopfer@gmx.net
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] ffmpeg afl bugs
To: oss-security@lists.openwall.com

Hi,

couldn't build ffmpeg, because of
"register size specification" error.

tried to catch this overflow from afl
fuzzer:


$ ./ffmpeg -i /tmp/ffmpeg-h264-call-stack-overflow.mp4 19.mp3
ffmpeg version N-81723-g6d9a46e Copyright (c) 2000-2016 the FFmpeg developers
  built with gcc 4.4.5 (Debian 4.4.5-8)
  configuration: --disable-yasm
  libavutil      55. 30.100 / 55. 30.100
  libavcodec     57. 57.101 / 57. 57.101
  libavformat    57. 50.100 / 57. 50.100
  libavdevice    57.  0.102 / 57.  0.102
  libavfilter     6. 62.100 /  6. 62.100
  libswscale      4.  1.100 /  4.  1.100
  libswresample   2.  1.100 /  2.  1.100
bla
bla
bla
bla
bla
bla
bla
bla
bla
bla
bla
bla
bla
bla
bla
[mov,mp4,m4a,3gp,3g2,mj2 @ 0xa256360] overread end of atom 'stsd' by 4294967134 bytes
bla
bla
bla
bla
bla
bla
Input #0, mov,mp4,m4a,3gp,3g2,mj2, from '/tmp/ffmpeg-h264-call-stack-overflow.mp4':
  Metadata:
    major_brand     : mp42
    minor_version   : 19529854
    compatible_brands: mp42isom
    creation_time   : 2014-11-14T07:34:24.000000Z
  Duration: 00:02:55.78, bitrate: 0 kb/s
    Stream #0:0(eng): Data: none ([0][16][0]1 / 0x31001000), 3 kb/s (default)
    Metadata:
      creation_time   : 2014-11-14T07:34:24.000000Z
      handler_name    : dia Handler
Output #0, mp3, to '19.mp3':
Output file #0 does not contain any stream









./libavformat/mov.c
$ grep -n bla ./libavformat/mov.c
4789:              printf("bla\n");


Have fun with ffmpeg-h264-call-stack-overflow.mp4
