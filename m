X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1278" "Saturday" "7" "May" "2016" "16:14:09" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20160507141409.GA11843@eldamar.local>" "32" "[oss-security] CVE Request: Linux: [media] videobuf2-v4l2: Verify planes array in buffer dequeueing" "^Cc:" nil nil "5" "2016050714:14:09" "[oss-security] CVE Request: Linux: [media] videobuf2-v4l2: Verify planes array in buffer dequeueing" (number mark "        carnil@debia May  7   32/1278  " thread-indent "\"[oss-security] CVE Request: Linux: [media] videobuf2-v4l2: Verify planes array in buffer dequeueing\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25789 invoked by uid 550); 7 May 2016 14:14:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25767 invoked from network); 7 May 2016 14:14:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ovlA8up2Dm97pQqNUfXgh/+HUSqOkTAbW6//jXo9yNQ=;
        b=EJSl4ROMvuI48D7FXmym2ShZv1Ys78ilVdbQiw/GZEBDONamfyq6y0CzZU19WThgXY
         ssZEBbluvZGDN8Vx39h7I/NOJTCc9WgcQ5gmJ4UIvYCfyj+67CjPcDtaKwGwmFrQR9MW
         cRd/4chCaqGHYJpKLwugCHaXUx1NmIBOYxRmu7nrU81jWKsQB/IHBH3T1I6T7uYGzZ+Z
         JRE3G/t2djc/ytgYFtIbS4oU7vTaY439Mo5bnxGMDMfiXhpM/QMjq2DcZZo2q/gs5O4A
         J99L/06bDY1nBkHf4Mx6dFMqQ3rfV30STh2AEyV9SWzhZyos3TdwDX0YMmxge+ydDg5y
         twfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=ovlA8up2Dm97pQqNUfXgh/+HUSqOkTAbW6//jXo9yNQ=;
        b=TnStD/+FplF6AaxVIk0TDBnjE2yYa3nmXdlHyiilmhN5059wEhLyzD9AhzdChOadUZ
         I6nY40XT83VS//585Fm/t6ODriQ7dKwsvc54ZDOg7/2xqHbKrYEOkMQ8opMihT8dBzN7
         7kw4VU0OqrOFUZpatgvX0pYrRdT3rJ1aQBHS4H8HNayDnJH6WgvqEnMdbfTPogKNDryT
         MjIRp3qdwU7f4DMRxAKEWdKwg+UUY0Mjr95i97A/1LzfDw08cE9cFEOSlRar1okvW4Ht
         xZdwWB9XJQaD2Zx/negscLy9JurCeGKP1qgToBqhhGqNg72z/Q/R0k6KmLTqLgBdJ1MD
         ccCQ==
X-Gm-Message-State: AOPr4FWSqB5Ki2gr6HPJmFLQQtu5T0xnwrDUfOij5Xe3prj7jMhbMWEhBIVGOSLPF42UeA==
X-Received: by 10.28.111.14 with SMTP id k14mr2636563wmc.32.1462630451881;
        Sat, 07 May 2016 07:14:11 -0700 (PDT)
Message-ID: <20160507141409.GA11843@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: Ben Hutchings <benh@debian.org>
Date: Sat, 7 May 2016 16:14:09 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: [oss-security] CVE Request: Linux: [media] videobuf2-v4l2: Verify planes array in
 buffer dequeueing
To: OSS Security Mailinglist <oss-security@lists.openwall.com>

Hi

Please assign a CVE for the following issue, which could lead to
overwriting of kernel memory:

>     [media] videobuf2-v4l2: Verify planes array in buffer dequeueing
>     
>     When a buffer is being dequeued using VIDIOC_DQBUF IOCTL, the exact buffer
>     which will be dequeued is not known until the buffer has been removed from
>     the queue. The number of planes is specific to a buffer, not to the queue.
>     
>     This does lead to the situation where multi-plane buffers may be requested
>     and queued with n planes, but VIDIOC_DQBUF IOCTL may be passed an argument
>     struct with fewer planes.
>     
>     __fill_v4l2_buffer() however uses the number of planes from the dequeued
>     videobuf2 buffer, overwriting kernel memory (the m.planes array allocated
>     in video_usercopy() in v4l2-ioctl.c)  if the user provided fewer
>     planes than the dequeued buffer had. Oops!
>     
>     Fixes: b0e0e1f83de3 ("[media] media: videobuf2: Prepare to divide videobuf2")

Fixed in
https://git.kernel.org/linus/2c1f6951a8a82e6de0d82b1158b5e493fc6c54ab (v4.6-rc6)
(Cc'ed to stable@vger.kernel.org for v4.4+, fixed in v4.5.3 and
v4.4.9)

Introduced by
https://git.kernel.org/linus/b0e0e1f83de31aa0428c38b692c590cc0ecd3f03 (v4.4-rc1)

Regards,
Salvatore
