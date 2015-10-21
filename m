X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1060" "Wednesday" "21" "October" "2015" "12:07:25" "+0200" "=?ISO-8859-1?Q?Salva_Peir=F3?=" "speirofr@gmail.com" "<562763DD.7080804@gmail.com>" "31" "[oss-security] CVE Request: Linux Kernel ioctl infoleaks on vivid-osd and dgnc" nil nil nil "10" "2015102110:07:25" "[oss-security] CVE Request: Linux Kernel ioctl infoleaks on vivid-osd and dgnc" (number mark "U       speirofr@gma Oct 21   31/1060  " thread-indent "\"[oss-security] CVE Request: Linux Kernel ioctl infoleaks on vivid-osd and dgnc\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 6045 invoked by uid 550); 21 Oct 2015 11:10:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9625 invoked from network); 21 Oct 2015 10:07:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:date:from:user-agent:mime-version:to:subject
         :content-type:content-transfer-encoding;
        bh=aHyC64cRYQSJ1XxIBjZOgZwqCcsf/pkTXgUrk/AymeU=;
        b=yd1r6+AiSwnBtTk/mO/JJ+Zi+arW7+pJcCKPvSLX/5oYaf7mOHqBTVmpoGq/tEJFZR
         gFQm2PSBmH08mOjASt4t46BdV6otLLFQhiejYbmU7b0CS6STEat54CFd2oUn61TWcGtx
         eLtpVaHjq7WUdUzSh14MtoSFAKhI9xhO39zuMyfncGFIWNNYwwWSOoVG9frVj7hDtDmF
         p34WbhIfIh4w5NJzL4Nqn/CfzjYM1r715p8U+2uXALmAe6oIzvKtG3MwrQPjbbhf960F
         r9pN7pa6sXFY08HCWqjB8znRvYTkg/Jv1rSJeHnk8bvKhitDIHCnQOEku9YTONva81H1
         mYNw==
X-Received: by 10.194.82.198 with SMTP id k6mr9653344wjy.139.1445422033930;
        Wed, 21 Oct 2015 03:07:13 -0700 (PDT)
Message-ID: <562763DD.7080804@gmail.com>
Date: Wed, 21 Oct 2015 12:07:25 +0200
From: =?ISO-8859-1?Q?Salva_Peir=F3?= <speirofr@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux i686 on x86_64; rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] CVE Request: Linux Kernel ioctl infoleaks on vivid-osd and dgnc

Hello,

Are there CVEs for these? If not, could these be assigned, please?

=20=20=20
http://git.kernel.org/cgit/linux/kernel/git/next/linux-next.git/commit/?id=
=3Deda98796aff0d9bf41094b06811f5def3b4c333c
    media/vivid-osd: fix info leak in ioctl

        [media] media/vivid-osd: fix info leak in ioctl
        The vivid_fb_ioctl() code fails to initialize the 16 _reserved
bytes of
        struct fb_vblank after the ->hcount member. Add an explicit
        memset(0) before filling the structure to avoid the info leak.

=20=20=20
http://git.kernel.org/cgit/linux/kernel/git/next/linux-next.git/commit/?id=
=3D4b6184336ebb5c8dc1eae7f7ab46ee608a748b05
    staging/dgnc: fix info leak in ioctl

        The dgnc_mgmt_ioctl() code fails to initialize the 16 _reserved
bytes of
        struct digi_dinfo after the ->dinfo_nboards member. Add an explicit
        memset(0) before filling the structure to avoid the info leak.

--
Salva Peir=F3 @ https://speirofr.appspot.com
CS Researcher & Software Engineer
Universitat Polit=E8cnica de Val=E8ncia, Spain.


