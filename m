X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1642" "Wednesday" "23" "December" "2015" "22:27:33" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20151223212733.GA9252@eldamar.local>" "40" "[oss-security] pitivi: CVE-2015-0855: Insecure use of os.system()" nil nil nil "12" "2015122321:27:33" "[oss-security] pitivi: CVE-2015-0855: Insecure use of os.system()" (number mark "U       carnil@debia Dec 23   40/1642  " thread-indent "\"[oss-security] pitivi: CVE-2015-0855: Insecure use of os.system()\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21913 invoked by uid 550); 23 Dec 2015 21:27:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21876 invoked from network); 23 Dec 2015 21:27:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=umVxWJoqSOM7FqPTSUcfV3nbEwbY254NBEo6By7YFJ8=;
        b=Rh3F392NskPBU7N33y12jKm1i8y2UOvk/MmNCsCPPzdFpDlwWfm5IO8HF2/KuVS0NW
         WL1a/gLU0evmsI0uAfzTl1moe8pZRajSeZxhvC+rsdSzU47AsVIidJkxqdMhzsM1qD6t
         OtgETH9kpLtLD5WzG6R36R/PnkU5ORTizMJ/hKDZXv7ASy7ntHpROEALGdcU2ZnQxgO3
         d5Ro1lIWmdF6naTFwO6eG7+TqXv9V/g+9U5EewIpNAfjjtvtzCq2J1ZFPktpDriFNNz9
         87SyRNXae6AVOHIyHmlS66y05W35eZTLU9DnqFkb3FItrk0E3oxaON1NRud+N+0KZC2d
         MULw==
X-Received: by 10.28.140.201 with SMTP id o192mr38277955wmd.88.1450906057925;
        Wed, 23 Dec 2015 13:27:37 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Wed, 23 Dec 2015 22:27:33 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Cc: Luke Faraone <lfaraone@debian.org>,
	Debian Security Team <team@security.debian.org>,
	CVE Assignments MITRE <cve-assign@mitre.org>
Message-ID: <20151223212733.GA9252@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: [oss-security] pitivi: CVE-2015-0855: Insecure use of os.system()

Hi

Luke Faraone reported the following issue in pitivi[0] to the Debian
security team on 13th of september, which got CVE-2015-0855 assigned.
There seems to have been a problem in propagating the CVE assigned
though, so we apologies for that. The assigned CVE is not mentioned in
the NEWS, but see below for the fixing commit.

Luke Faraone <lfaraone@debian.org>:
> SYNOPSIS:
>                 Double-clicking a file in the user's media library with
>                 a specially-crafted path or filename allows for
>                 arbitrary code execution with the permissions of the
>                 user running Pitivi.
> 
> STEPS TO REPRODUCE:
>              1. Create a directory hierarchy like so:
>                 "images/$(xeyes)/", and place an image "hello.png" in
>                 "images/$(xeyes)/".
>              2. Drag and drop "images" to the Pitivi media library.
>              3. Double click the image "hello.png" in the media library
> 
> The `xeyes` program (if installed on your system) should start.
> 
> See pitivi/mainwindow.py:_mediaLibraryPlayCb().
> 
> An exploit scenario would require an attacker to provide a
> specially-crafted directory hierarchy or file path. Since Pitivi does
> not expose the path to the user, and a workflow of consuming content
> created by others is common when working with media files, such a
> scenario occurring is not hard to imagine.

This issue was fixed upstream in 0.95 with commit
45a4c84edb3b4343f199bba1c65502e3f49f5bb2[1].

 [0] http://www.pitivi.org/
 [1] https://git.gnome.org/browse/pitivi/commit/?id=45a4c84edb3b4343f199bba1c65502e3f49f5bb2

Regards,
Salvatore
