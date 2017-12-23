X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["936" "Saturday" "23" "December" "2017" "09:10:28" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20171223081028.GA17654@lorien.valinor.li>" "24" "Re: [oss-security] Linux >=4.9: eBPF memory corruption bugs" "^Date:" nil nil "12" "2017122308:10:28" "[oss-security] Linux >=4.9: eBPF memory corruption bugs" (number mark "        carnil@debia Dec 23   24/936   " thread-indent "\"Re: [oss-security] Linux >=4.9: eBPF memory corruption bugs\"\n") "<CAG48ez35=x3BPJ_sUdxbzjoo+8GLxLGrdhz9r52Y+wqfdbqBUw@mail.gmail.com>" ("<CAG48ez35=x3BPJ_sUdxbzjoo+8GLxLGrdhz9r52Y+wqfdbqBUw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16186 invoked by uid 550); 23 Dec 2017 08:10:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16168 invoked from network); 23 Dec 2017 08:10:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=h4Oy/mK4PvHSgDqxol0+tJyyBWs2Ss2XA9nF//Tim/M=;
        b=edF+F4wPciOnYeKMLVJLYISPesi/ez8LLsuzlpoAaMLk4taN4NW/E7/zy3OkmCIfef
         DH1k6c4YC5/4xiz+74IJSWBkVlo0WqLtb2IDQ84JL4zoTvpprra8x+4hzfPZrFkT2xi0
         +ZMfOGHOz/vPHWyvUbFHusFWq8dF8R3prkvU/+QoCiUh5TQNRQbHpKtYeDXTV2MeP0UK
         YaQ1JNaB94L9CJYC+sEiuLLShHlWJJoy8xCSUh/3dhhL647TG/ycNl5QEFYg71CTjld+
         hXfbZBCpaItUggm47NuUg7pLT+/ZoYv8r9qvElHGPRmvED3qXJXgaAQNaIFw1NEjs0y0
         U3gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=h4Oy/mK4PvHSgDqxol0+tJyyBWs2Ss2XA9nF//Tim/M=;
        b=uMWQqaoqfqEEiT5Dci5WbOAhuYWgGG1dMpjeNcUSXYYSzbaMgVocx/82bEni8hbLS9
         mufzK5cR8A7lDx6B+GFcRR2GXZWzJA/E2/y22sioYVRvYzGP6pkZEwn3U5V38E0i6xhD
         bzhksmalrnZtKeyT3iFoe14TgL3ZMOsXVZlcOEjv1PUI2zgCuaknnWL22mrQpZB4cpVz
         2ZTKs0ogR+r4jXknMRLLuVBeca2FeD0bFUoDTQimWpcmLUwQTWeRV8FxpXMgZWMFIU+A
         1nYEYfevQc9IhYoyj6SlkU02/ewBfLAx7x9bPO5C5jMC8TFYZJ6i1VMcyyfGHpef1f2j
         w54Q==
X-Gm-Message-State: AKGB3mJGq1CGOC6+Z9YPgcVaBWoXQNjTtl18aFaqsTe4urGC+TrjU69e
	bFnkCG4bAefXwYsr+ImFjIY6Vw==
X-Google-Smtp-Source: ACJfBotBhGLuPY5K6RIkEUHjLbn+p/iSb7CaPtv/OVQY3kE2bHpGw8Uxi2kNhgsgxSvfhkeapSb4Lw==
X-Received: by 10.223.188.141 with SMTP id g13mr18273385wrh.169.1514016629997;
        Sat, 23 Dec 2017 00:10:29 -0800 (PST)
Message-ID: <20171223081028.GA17654@lorien.valinor.li>
References: <CAG48ez35=x3BPJ_sUdxbzjoo+8GLxLGrdhz9r52Y+wqfdbqBUw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAG48ez35=x3BPJ_sUdxbzjoo+8GLxLGrdhz9r52Y+wqfdbqBUw@mail.gmail.com>
User-Agent: Mutt/1.9.2 (2017-12-15)
Date: Sat, 23 Dec 2017 09:10:28 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: Re: [oss-security] Linux >=4.9: eBPF memory corruption bugs
To: oss-security@lists.openwall.com

Hi

MITRE has assigned 6 more CVEs for:

CVE-2017-17857 [bpf: fix missing error return in check_stack_boundary()]
Fixed by: https://git.kernel.org/linus/ea25f914dc164c8d56b36147ecc86bc65f83c469

CVE-2017-17856 [bpf: force strict alignment checks for stack pointers]
Fixed by: https://git.kernel.org/linus/a5ec6ae161d72f01411169a938fa5f8baea16e8f

CVE-2017-17855 [bpf: don't prune branches when a scalar is replaced with a pointer]
Fixed by: https://git.kernel.org/linus/179d1c5602997fef5a940c6ddcf31212cbfebd14

CVE-2017-17854 [bpf: fix integer overflows]
Fixed by: https://git.kernel.org/linus/bb7f0f989ca7de1153bd128a40a71709e339fa03

CVE-2017-17853 [bpf/verifier: fix bounds calculation on BPF_RSH]
Fixed by: https://git.kernel.org/linus/4374f256ce8182019353c0c639bb8d0695b4c941

CVE-2017-17852 [bpf: fix 32-bit ALU op verification]
Fixed by: https://git.kernel.org/linus/468f6eafa6c44cb2c5d8aad35e12f06c240a812a

Regards,
Salvatore
