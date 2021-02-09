X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1370" "Tuesday" "9" "February" "2021" "07:36:15" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20210209063615.GA25153@lorien.valinor.li>" "35" "Re: [oss-security] [cve-pending] Firejail: root privilege escalation in OverlayFS code" nil nil nil "2" "2021020906:36:15" "[oss-security] [cve-pending] Firejail: root privilege escalation in OverlayFS code" (number mark "U       carnil@debia Feb  9   35/1370  " thread-indent "\"Re: [oss-security] [cve-pending] Firejail: root privilege escalation in OverlayFS code\"\n") "<NKuWiXQK3sAwyMdDQT07Bdnnl5XSSBmKbvUMqaIhhCSShwaQMmOUKOVT9TCVVDGv43RDuHjy42O3GILwnaZiA2dadJ42Mqn09BhGaGu8BhE=@protonmail.com>" ("<NKuWiXQK3sAwyMdDQT07Bdnnl5XSSBmKbvUMqaIhhCSShwaQMmOUKOVT9TCVVDGv43RDuHjy42O3GILwnaZiA2dadJ42Mqn09BhGaGu8BhE=@protonmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] [cve-pending] Firejail: root privilege escalation in OverlayFS code" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11906 invoked by uid 550); 9 Feb 2021 06:36:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11883 invoked from network); 9 Feb 2021 06:36:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=q8RS3jIoI9rVoi2RW12fCA6PAl5ex1t61f14XGLIcZw=;
        b=bDi6O4GPLO7WXUxtfSssQ9ipTdWYLevJvtBRtuNw/H95WWEW/J6+kwlGjN24GoSJ8i
         Ujkma2GvlVGKUXBUksDImwFmluEuReBKvgw8x3gnVd1x3P+qQAq3DPY6WKAbm4QnIkfG
         YqVNgdMOQet8DyCzL/mgufzrzJ7e16+69yAwxLyFXh3PqDxQANtzmMUHqOJeFGzsTyhY
         luXPRW+lQ6KFmMct3BD3k7Kb6pqcTtdU8fhb9w/gOvRju6+kdsBaoPquFQ0AXPk9NOJG
         jq9u3l3CH1jHpEXfprmV9nSeI8kP5QCr7nPyRZ4vvHKcADisASszC4h44RJe9gtrslww
         Ezlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=q8RS3jIoI9rVoi2RW12fCA6PAl5ex1t61f14XGLIcZw=;
        b=UjdAs6uyxp2j7UukAtJbaWkdWomy/eoz6onPjU5VyMpiYldzvonDUohkIH91dmmKyD
         UOJMJZt4EDtFPQS1SVDNTI3RHYf6xzFIivDRFJv/pTysU5LENZ/ZM9oNp0uypFTod/0X
         wS74GcQsSUBFSIhX7LnNewV1xVWfdJDl18wvEmsbjL7iF9aqwZ9rQ/LYZYNO7g4ZJRUo
         w4xir22cHwhrqrSac0QWcUHcbgFsWA2Bh7AiGHE1yUFRC90uE8new8maSGCaUpvBPlBD
         7yWLQ7VxF/v5C45zqLmZ6CR+3Rb+6YVtIFH40UxtKKzQqSlVmFe/juvhuHtAAggebtwt
         elzw==
X-Gm-Message-State: AOAM532XKxc6xOpFNq9EV2nixwq757XL1APXCUqkItJiCCPNfNU04tft
	o5nq9I7upZoRf0rrQJX9BEaVDaG069NplQ==
X-Google-Smtp-Source: ABdhPJzpf/4FRWkfdYEHGdR0VDOqa2vPaxY5HcZJ/D507K5J5l9RS2S0DbhYT3APhUP+pX4JVdm+yA==
X-Received: by 2002:a7b:cb58:: with SMTP id v24mr1883092wmj.182.1612852576857;
        Mon, 08 Feb 2021 22:36:16 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Tue, 9 Feb 2021 07:36:15 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <20210209063615.GA25153@lorien.valinor.li>
References: <NKuWiXQK3sAwyMdDQT07Bdnnl5XSSBmKbvUMqaIhhCSShwaQMmOUKOVT9TCVVDGv43RDuHjy42O3GILwnaZiA2dadJ42Mqn09BhGaGu8BhE=@protonmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <NKuWiXQK3sAwyMdDQT07Bdnnl5XSSBmKbvUMqaIhhCSShwaQMmOUKOVT9TCVVDGv43RDuHjy42O3GILwnaZiA2dadJ42Mqn09BhGaGu8BhE=@protonmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [oss-security] [cve-pending] Firejail: root privilege escalation
 in OverlayFS code

Hi,

On Mon, Feb 08, 2021 at 02:15:05PM +0000, netblue30 wrote:
> 
> Security Advisory - Feb 8, 2021
> 
> Summary: A vulnerability resulting in root privilege escalation was discovered in Firejail's OverlayFS code,
> 
> Versions affected: Firejail software versions starting with 0.9.30.
> Long Term Support (LTS) Firejail branch is not affected by this bug.
> 
> Workaround: Disable overlayfs feature at runtime. In a text editor open /etc/firejail/firejail.config file,
> and set "overlayfs" entry to "no".
> 
>       $ grep overlayfs /etc/firejail/firejail.config
>       # Enable or disable overlayfs features, default enabled.
>       overlayfs no
> 
> Fix: The bug is fixed in Firejail version 0.9.64.4
> 
> GitHub commit: (file configure.ac)
> https://github.com/netblue30/firejail/commit/97d8a03cad19501f017587cc4e47d8418273834b
> 
> Credit:  Security researcher Roman Fiedler analyzed the code and discovered the vulnerability.
> Functional PoC exploit code was provided to Firejail development team.
> A description of the problem is here on Roman's blog:
> 
> https://unparalleled.eu/publications/2021/advisory-unpar-2021-0.txt
> https://unparalleled.eu/blog/2021/20210208-rigged-race-against-firejail-for-local-root/

CVE-2021-26910 was assigned for this issue according to
https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-26910 .

Regards,
Salvatore
