X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1084" "Monday" "21" "November" "2016" "06:43:48" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20161121054348.GA632@lorien.valinor.li>" "31" "Re: [oss-security] CVE request: LibTIFF tiffcrop: Heap buffer overflow via writeBufferToSeparateStrips" nil nil nil "11" "2016112105:43:48" "[oss-security] CVE request: LibTIFF tiffcrop: Heap buffer overflow via writeBufferToSeparateStrips" (number mark "U       carnil@debia Nov 21   31/1084  " thread-indent "\"Re: [oss-security] CVE request: LibTIFF tiffcrop: Heap buffer overflow via writeBufferToSeparateStrips\"\n") "<20161111205756.GC26873@tunkki>" ("<20161111205756.GC26873@tunkki>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27690 invoked by uid 550); 21 Nov 2016 05:44:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27672 invoked from network); 21 Nov 2016 05:44:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=9YDE8iazekb1P72+KHbDFU8xnShNzXKryaBhsFdGXF8=;
        b=PqfrRyel8l0hRn8zb+M/9UoDg6u2IsJQ96AVYaVD2dwnkOQEyeWPouczqDeKiO10X9
         yauI2H2fAPb6Tyb5GTYoHa/xe2BcQg/yRyXk2IQuWe5WzHWWKvGNzGOGEqSpSrldzpDx
         eOzq/xCkinTrBlUNQgkqiGT/V2mMtP6TsuHMdRsmmoA2bBp3f9uJiznIz+tD2r/kSZm4
         9uR1BU2nH6LBLZL1txv5ZwLIvE1CiA/YzpbPBZXQJ3GdhbZPvsTNKvcIFRaGn1wIUFZP
         DklqQxZLJTBbKOOy/Sq7x5pYkbabYqThzg6Fb8A1aEdlBdhrRTGM+haZknFw5GZcYBl7
         Ad6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=9YDE8iazekb1P72+KHbDFU8xnShNzXKryaBhsFdGXF8=;
        b=hGx/p8RbxIRyyiKdopawj4QbIeruH6ncx8XuoXEMmKX39HexyGdC1qAwsk4u72gxzA
         06+CGY1bMrnovNJM0bmMdfHm8L9w8i9duEwLBnG60liE15sHKhK7Qc7Tt29crtFd5xEk
         oYldRp1P0vVwHAhPKHxquwa6bQNx5+0WwiGB2yPdQQVsaZMzQOAHkkcR40SNFaGu62Tq
         gSDvrL/fBIPK+C20slJfU3VZLFqpqhsdZne1TPAnqrazB0QbJNfT7LU/vY9o8slobSrG
         l+BGf2uXJjql9U60XJKwtgzKiIHGcZ4K5cirtpZGhcL7xwwlJuEOi8/XBujWc4ZQJcBq
         4ARg==
X-Gm-Message-State: AKaTC01jJwSQ5EXXxXKlhpXTOWN8A+TbkZxfZqxoro0+fvNiKkXtJFmRzgzHojPDyeT5oA==
X-Received: by 10.129.130.133 with SMTP id s127mr11901375ywf.41.1479707031029;
        Sun, 20 Nov 2016 21:43:51 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Mon, 21 Nov 2016 06:43:48 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <20161121054348.GA632@lorien.valinor.li>
References: <20161111205756.GC26873@tunkki>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161111205756.GC26873@tunkki>
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: Re: [oss-security] CVE request: LibTIFF tiffcrop: Heap buffer
 overflow via writeBufferToSeparateStrips

Hi,

On Fri, Nov 11, 2016 at 10:57:56PM +0200, Henri Salo wrote:
> Please assign CVE identifier for LibTIFF tiffcrop heap buffer overflow via
> writeBufferToSeparateStrips, thanks.
> 
> Reported in: http://bugzilla.maptools.org/show_bug.cgi?id=2592
> 
> Fixed per:
> 
> 2016-11-11 Even Rouault <even.rouault at spatialys.com>
> 
>         * tools/tiffcrop.c: fix multiple uint32 overflows in
>         writeBufferToSeparateStrips(), writeBufferToContigTiles() and
>         writeBufferToSeparateTiles() that could cause heap buffer overflows.
>         Reported by Henri Salo from Nixu Corporation.
>         Fixes http://bugzilla.maptools.org/show_bug.cgi?id=2592
> 
> 
> /cvs/maptools/cvsroot/libtiff/ChangeLog,v  <--  ChangeLog
> new revision: 1.1152; previous revision: 1.1151
> /cvs/maptools/cvsroot/libtiff/tools/tiffcrop.c,v  <--  tools/tiffcrop.c
> new revision: 1.43; previous revision: 1.42

FTR, this was included in the 4.0.7 release of LibTIFF.

Although it is only in the tools part, this might still need a CVE if
appropriate to identify the issue.

Regards,
Salvatore
