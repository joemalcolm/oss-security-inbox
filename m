X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2730" "Saturday" "30" "September" "2017" "20:36:12" "+0200" "Guido =?iso-8859-1?Q?G=FCnther?=" "agx@sigxcpu.org" "<20170930183612.mkgwgygmi7qri4wb@bogon.m.sigxcpu.org>" "63" "Re: [oss-security] CVE-2017-14160: libvorbis-1.3.5 bark_noise_hybridmp() integer signedness bug" nil nil nil "9" "2017093018:36:12" "[oss-security] CVE-2017-14160: libvorbis-1.3.5 bark_noise_hybridmp() integer signedness bug" (number mark "U       agx@sigxcpu. Sep 30   63/2730  " thread-indent "\"Re: [oss-security] CVE-2017-14160: libvorbis-1.3.5 bark_noise_hybridmp() integer signedness bug\"\n") "<A962A2D04FAB5C4499FEFD15B642FA0A35DEB814@EX02.corp.qihoo.net>" ("<A962A2D04FAB5C4499FEFD15B642FA0A35DEB814@EX02.corp.qihoo.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17985 invoked by uid 550); 30 Sep 2017 19:00:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3111 invoked from network); 30 Sep 2017 18:36:26 -0000
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Date: Sat, 30 Sep 2017 20:36:12 +0200
From: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
To: =?utf-8?B?6L+e5LiA5rGJ?= <lianyihan@360.cn>
Cc: oss-security@lists.openwall.com
Message-ID: <20170930183612.mkgwgygmi7qri4wb@bogon.m.sigxcpu.org>
References: <A962A2D04FAB5C4499FEFD15B642FA0A35DEB814@EX02.corp.qihoo.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <A962A2D04FAB5C4499FEFD15B642FA0A35DEB814@EX02.corp.qihoo.net>
User-Agent: NeoMutt/20170609 (1.8.3)
Subject: Re: [oss-security] CVE-2017-14160: libvorbis-1.3.5
 bark_noise_hybridmp() integer signedness bug

Hi,
On Thu, Sep 21, 2017 at 06:27:15AM +0000, 连一汉 wrote:
> Hi,
> 
> I’m a security researcher of Qihoo 360 GearTeam.
> My partner Zhibin Hu and I found a vulnerability of libvorbis-1.3.5.
> And we have applied for CVE-2017-14160 of this vulnerability.
> ================== test command ====================
> 
> ffmpeg –i poc.mp4 –y 1.mkv

Where can the reproducer for this be found? Can you attach it to

    https://gitlab.xiph.org/xiph/vorbis/issues/2330

Cheers,
 -- Guido

> // libvorbis-1.3.5 has been compiled into ffmpeg static.
> 
> ================= needed version ====================
> 
> I compile it as https://github.com/google/oss-fuzz/blob/master/projects/ffmpeg/build.sh
> 
> This is the problem of libvorbis-1.3.5, and I tried libvorbis in ubuntu repo, it could also trigger this vul or bug.
> 
> =================== crash info ======================
> 
> (gdb) bt
> #0  0x0000000001f95afd in bark_noise_hybridmp (n=256, b=0x32cd940, f=0x32e5010, noise=0x32f7ed0, offset=140, fixed=-1) at psy.c:630
> 
> #1  0x0000000001f95430 in _vp_noisemask (p=0x32aa820, logmdct=0x32e5010, logmask=0x32f7ed0) at psy.c:705
> #2  0x0000000001facac9 in mapping0_forward (vb=0x329cfb0) at mapping0.c:417
> #3  0x0000000001f92c9e in vorbis_analysis (vb=0x329cfb0, op=0x0) at analysis.c:46
> #4  0x0000000000bc2725 in libvorbis_encode_frame (avctx=0x329ca00, avpkt=0x32ab540, frame=0x32e4400, got_packet_ptr=0x7fffffffdbf4) at libavcodec/libvorbisenc.c:311
> #5  0x00000000009e5717 in avcodec_encode_audio2 (avctx=0x329ca00, avpkt=0x32ab540, frame=0x32e4400, got_packet_ptr=0x7fffffffdbf4)at libavcodec/encode.c:198
> #6  0x00000000009e62d8 in do_encode (avctx=0x329ca00, frame=0x32e4400, got_packet=0x7fffffffdbf4) at libavcodec/encode.c:375
> 
> #7  0x00000000009e6224 in avcodec_send_frame (avctx=0x329ca00, frame=0x32e4400) at libavcodec/encode.c:421
> #8  0x0000000000438ef5 in do_audio_out (of=0x3299560, ost=0x329c7a0, frame=0x32e4400) at ffmpeg.c:921
> #9  0x0000000000436c5b in reap_filters (flush=0) at ffmpeg.c:1515
> #10 0x000000000042dc30 in transcode_step () at ffmpeg.c:4553
> #11 0x000000000042bc49 in transcode () at ffmpeg.c:4597
> #12 0x000000000042b092 in main (argc=5, argv=0x7fffffffe678) at ffmpeg.c:4803
> 
> (gdb) l
> 625
> 626         lo = b[i] >> 16;
> 627         hi = b[i] & 0xffff;
> 628         if(hi>=n)break;
> 629
> 630         tN = N[hi] - N[lo];
> 631         tX = X[hi] - X[lo];
> 632         tXX = XX[hi] - XX[lo];
> 633         tY = Y[hi] - Y[lo];
> 634         tXY = XY[hi] - XY[lo];
> (gdb) p hi
> $4 = 0
> (gdb) p lo
> $5 = 49656                                                                 // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
> (gdb) p i
> $6 = 259
> 
