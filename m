X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2794" "Monday" "25" "September" "2017" "22:09:50" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20170925200950.eakcj2hrgyyuedgd@eldamar.local>" "62" "Re: [oss-security] CVE-2017-14160: libvorbis-1.3.5 bark_noise_hybridmp() integer signedness bug" nil nil nil "9" "2017092520:09:50" "[oss-security] CVE-2017-14160: libvorbis-1.3.5 bark_noise_hybridmp() integer signedness bug" (number mark "U       carnil@debia Sep 25   62/2794  " thread-indent "\"Re: [oss-security] CVE-2017-14160: libvorbis-1.3.5 bark_noise_hybridmp() integer signedness bug\"\n") "<A962A2D04FAB5C4499FEFD15B642FA0A35DEB814@EX02.corp.qihoo.net>" ("<A962A2D04FAB5C4499FEFD15B642FA0A35DEB814@EX02.corp.qihoo.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17738 invoked by uid 550); 25 Sep 2017 20:10:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17713 invoked from network); 25 Sep 2017 20:10:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=BDRE5TI+K9GTmhXW7EketJp04UX5zTzpHZllUUs1Z5Q=;
        b=mIQ7W3oD8LjY4wrykhcbZ4NOCFfewLLWc4ilf5hQCmzUCb9X7t/iArjHOnwEy09UWp
         lJjus8jbKpy21s1R7AENbPdYfzINPBX0C4Nh1X5z7TS1gmtvq9jT4Wa/N77rUCgoqHzU
         wVUg0f+XloYtoBVjS7ieIVmIEWnL5SUGz1HgD8RwZaulzVRz9w4NCLkdIFVBsE3Yo3Xk
         vtGOYCGucdZbsBJDy54KjMsKMjn8Z/W/VtGUdzAQfztvzCvPEAWZl0ZeIZeu6e7SuheC
         e0Lv7RKG8jGF44gqkcqGBMssU8j9omMPgct5/rWLCInpzGm7Nz+5NJY6X6JMKuaLdIuY
         wNDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent;
        bh=BDRE5TI+K9GTmhXW7EketJp04UX5zTzpHZllUUs1Z5Q=;
        b=OrXqlXTfkMi7AllBjezce/brZZ8Xzx3mCUFpqrn0reA9VLCUw6PJDv6zE+fTHbO6Lv
         N0eHkZgpUPOHrs7bVeePdAAuDjab7kbNL1f0aOAJ9mlgPrDPiCmqQwVLrPZWYiPbY4aF
         nwoomxyZ5XAWZgyysaTo7jV3IFQuMkMuYdZAAt8XLmEtzbuQfve5Q9glHKSEnIZo/Gdh
         B7ommrHOnN5fHriCAgSJtfryr71QNwuwK1VVs83nceoZkMzuUMp+eIlYqD5junBF53Tf
         vlp9D39zIqxlzm7tfwk4nAh/KWdQ960cMw8yXjH5sdnq1WCMNdXV/MnAY7lJSFDQgyrr
         1k4A==
X-Gm-Message-State: AHPjjUjOgc9RMtjFpi0F9ZIAekQoY4VEAHcCv9VDiB0GxFPj+TVMCwlA
	v7/2n62C08r1R/lR6fF/3SM=
X-Google-Smtp-Source: AOwi7QDwCWQKEjo81gYFBDtqcjCpl2MmVGy2rOw1pjlfiWsB/Q2A6LBkuIMKaXiAvvN87nZ8SQ+LOQ==
X-Received: by 10.28.113.196 with SMTP id d65mr1138085wmi.105.1506370192232;
        Mon, 25 Sep 2017 13:09:52 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Mon, 25 Sep 2017 22:09:50 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Cc: lianyihan@360.cn
Message-ID: <20170925200950.eakcj2hrgyyuedgd@eldamar.local>
References: <A962A2D04FAB5C4499FEFD15B642FA0A35DEB814@EX02.corp.qihoo.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <A962A2D04FAB5C4499FEFD15B642FA0A35DEB814@EX02.corp.qihoo.net>
User-Agent: NeoMutt/20170609 (1.8.3)
Subject: Re: [oss-security] CVE-2017-14160: libvorbis-1.3.5
 bark_noise_hybridmp() integer signedness bug

Hi

On Thu, Sep 21, 2017 at 06:27:15AM +0000, 连一汉 wrote:
> Hi,
> 
> I’m a security researcher of Qihoo 360 GearTeam.
> My partner Zhibin Hu and I found a vulnerability of libvorbis-1.3.5.
> And we have applied for CVE-2017-14160 of this vulnerability.
> ================== test command ====================
> 
> ffmpeg –i poc.mp4 –y 1.mkv
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

If possible, please do report your findings back to upstream (in this
case at https://gitlab.xiph.org/xiph/vorbis/issues) so that upstream
might get noticed and can address the issues.

Regards,
Salvatore
