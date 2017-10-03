X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["813" "Tuesday" "3" "October" "2017" "17:22:13" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20171003152213.u6zlrgu3nb7yk7ng@eldamar.local>" "24" "Re: [oss-security] CVE Request: FreeBSD kernel, double-fetch bug in smb_strdupin" "^Date:" nil nil "10" "2017100315:22:13" "[oss-security] CVE Request: FreeBSD kernel, double-fetch bug in smb_strdupin" (number mark "        carnil@debia Oct  3   24/813   " thread-indent "\"Re: [oss-security] CVE Request: FreeBSD kernel, double-fetch bug in smb_strdupin\"\n") "<F90F7078-F65C-46F0-8F51-CB4FB23B5DD7@gatech.edu>" ("<F90F7078-F65C-46F0-8F51-CB4FB23B5DD7@gatech.edu>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5866 invoked by uid 550); 3 Oct 2017 15:22:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5820 invoked from network); 3 Oct 2017 15:22:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=iNX8HytroDVLt1WUORhJazBh5oIZeHX2sLYb8ZEWfPU=;
        b=fZhaTAneuH7dlXP1NTHpGL+JRC4a/bsOlBzZwx869NG8yuSy+60t3ThCLoz5HN4MzU
         fT/n8HR9EjrYY2Jyav3ZB7piVRFbDToPEVPM6IdGgTAgesonaWJhQfIcK5m3OAgC8owt
         AyvpTY9DPGZPdDrpEiPhaNMVn7Dw5CIpClbzzGl+ka4KQQp/fE0MsmjV/KE3sf9gdTT3
         hioN/O+MB8Fayt5Dn/fvcAAoE9ZzaYtJxdGWk4V5gX6Z8Tq6TPh3YwxrXrWhKzv6bvl3
         3CfLwaUwoluMlYrzbMH7MToDoXkiTVkGIW9XTDgvggkHzSSsyOGdgDIwix+EbZaeETjU
         1ETg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=iNX8HytroDVLt1WUORhJazBh5oIZeHX2sLYb8ZEWfPU=;
        b=Q19m82NnbTN58bWErVO1FPxQg/x87jrQVNMPA448QXBCAZuAy6tpHzKQYlW1UjV4Ou
         4SHVmePywjvv7RK8IAYd22WMi/ILu6idEwXwQmLge02ME+KT1tMN61+dcZuXPN7HX/cc
         GXXl2txj1vEg244rjlVaKxOGynLbTXC9iRrOebhIEm50Jr72PaCoz7auifAq1A1BjM8W
         M261Wel3HjvydNux4gtH9X3vbdyb6TZZissbofNpd91WP/WQRNoedRSWwj0WRdARUGvD
         fKbLUV54LA7Gek1lTENZNZMFGcsMlslDyUW2/BLUAR7WleAvRVeTLkgiFAgmaevlcRrY
         gMtw==
X-Gm-Message-State: AMCzsaVBJfEpENtWwfxJoz4B1c7QWlZQHG4eDJnJfwcYRw4XbtxH6486
	uctFviHKTVe75yHLFUWzKY/Psg==
X-Google-Smtp-Source: AOwi7QDsL4o2rtLnd2/+7IC18/f/RrfR27vmid+lREFa/RA3YpP4cYq9zwhoxkAMWOnruZ3LgTmAlw==
X-Received: by 10.28.136.83 with SMTP id k80mr13315526wmd.159.1507044135827;
        Tue, 03 Oct 2017 08:22:15 -0700 (PDT)
Message-ID: <20171003152213.u6zlrgu3nb7yk7ng@eldamar.local>
References: <F90F7078-F65C-46F0-8F51-CB4FB23B5DD7@gatech.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <F90F7078-F65C-46F0-8F51-CB4FB23B5DD7@gatech.edu>
User-Agent: NeoMutt/20170609 (1.8.3)
Date: Tue, 3 Oct 2017 17:22:13 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: Re: [oss-security] CVE Request: FreeBSD kernel, double-fetch bug in
 smb_strdupin
To: oss-security@lists.openwall.com

Hi

On Tue, Oct 03, 2017 at 02:39:55PM +0000, Xu, Meng wrote:
> Hello,
> 
> In function  smb_strdupin()  of file sys/netsmb/smb_subr.c,
> smb_strdupin() tried to roll a copyin() based strlen to allocate a buffer
> and then blindly copyin that size.  Of course, a malicious user program
> could simultaneously manipulate the buffer, resulting in a non-terminated
> string being copied.
> 
> Bug report: https://bugs.freebsd.org/bugzilla/show_bug.cgi?id=222687
> Patch: https://svnweb.freebsd.org/base?view=revision&revision=324102
> 
> Please help assign a CVE to it.

CVE's are not anymore requested via the oss-security list. If you want
to request one please have a look at https://cveform.mitre.org/

Once you have the CVE assigned, can you please loop back the
assignement in this thread?

Regards,
Salvatore
