X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["889" "Tuesday" "3" "December" "2019" "07:12:05" "-0800" "Tavis Ormandy" "taviso@gmail.com" "<20191203151205.GA5296@thinkstation>" "25" "Re: [oss-security] virtual consoles" "^Date:" nil nil "12" "2019120315:12:05" "[oss-security] virtual consoles" (number mark "        taviso@gmail Dec  3   25/889   " thread-indent "\"Re: [oss-security] virtual consoles\"\n") "<20191203123414.GA37156@espresso.pseudorandom.co.uk>" ("<20191202165638.GA3235@thinkstation>" "<20191203123414.GA37156@espresso.pseudorandom.co.uk>") nil nil nil nil nil nil nil "Re: [oss-security] virtual consoles" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28471 invoked by uid 550); 3 Dec 2019 15:15:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27860 invoked from network); 3 Dec 2019 15:12:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=gUTKL+g5euA2IC7qoMWXJC7UF5smIpJ1R7rcO0Kc0N0=;
        b=jJoS3UEourYJYpH7OtCsIqhfGdU96CkLuM0r6KZMmr2BqMkYspPNc3Sm7c5Iuplzsi
         LyWpfbldlxKmmyXWWyZ6EwYzJ8JGyrPibadMjzxAMP3hBjRRfOSveIKS8K2q2HjqM47C
         oZiAk28jo4qcKBomcvM7DGT+BMmBnNZa2NxEtz0Zc3meJdmKyhplV43MyLfvAvXm4pTP
         xiVugv25U+tLFOZBsPkWiYRkLgJnBXHR+p+Dp6EDLUS8DCw6xcLsRysu62sByOw2R3O4
         ix0e50hQ3i8UuhScofkmfhOEKguamJmhjrN8auUZwnL5a1XKxmKc9ZjdEjLNlZXLuQDP
         elpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=gUTKL+g5euA2IC7qoMWXJC7UF5smIpJ1R7rcO0Kc0N0=;
        b=lhLBEFfyyUOi8aAD06ukmoemu6AApZEBLix354SODl8sczn1nthv2RNqGgMvEzDIcJ
         ohyGbs0Bxz2/vUNeD0iyn8a7cvycgpMPATr+AI/YRWIXerE20f76l2XqICIgZrjhroWv
         sy80lYw/UH0Ev6WzLG6jSvHh3YG4lFX3oS/hDlxslWBUf/sk8akmeGSyArPfjLHysVw6
         +qUoMRiOtgMAcDyP80PdcWnm/RHBaAEpb2JU1Dhxu1pdo8uE8D9jAZv0yCzgWa+/vGY4
         ki57E7kai/mA2bNUZl5RRrGrQzNFd2FBEtAzaz9gl5aOSkl+kpoKSBgdWke0zf9BGsq8
         db0w==
X-Gm-Message-State: APjAAAWVItdxCVMtvZ2FoJGWlnMhKItM0+Xg8qss1Qx8m+X3x93NYSNX
	r/Un2PH5j4Hb8pSuGfvv3wSwC54gzfQ=
X-Google-Smtp-Source: APXvYqxmVLFPWCieh5dp1+QNRJSWF+3MBt6HpDNe5xrXg8uH5RRcgoh2XWILouHsG8GPzrJw1Nm9/Q==
X-Received: by 2002:a17:90a:19d1:: with SMTP id 17mr6002366pjj.52.1575385927764;
        Tue, 03 Dec 2019 07:12:07 -0800 (PST)
Message-ID: <20191203151205.GA5296@thinkstation>
References: <20191202165638.GA3235@thinkstation>
 <20191203123414.GA37156@espresso.pseudorandom.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191203123414.GA37156@espresso.pseudorandom.co.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
Date: Tue, 3 Dec 2019 07:12:05 -0800
From: Tavis Ormandy <taviso@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] virtual consoles
To: oss-security@lists.openwall.com

On Tue, Dec 03, 2019 at 12:34:14PM +0000, Simon McVittie wrote:
> On Mon, 02 Dec 2019 at 08:56:38 -0800, Tavis Ormandy wrote:
> > unprivileged users can start a new X server and switch virtual
> > console, even over ssh.
> > 
> > e.g.
> > 
> > $ dbus-send --system --print-reply --dest=org.freedesktop.login1 /org/freedesktop/login1/seat/seat0 org.freedesktop.login1.Seat.SwitchTo uint32:2
> 
> If a uid who is not already the owner of the current VT on the seat can
> do this, then that's probably a bug? If you think so, please report it
> to the maintainers of logind (which is the component that would have to
> change to address this).
> 

I sent a mail to the systemd-security list, maybe they'll agree and just
change it.

Tavis.


-- 
-------------------------------------
taviso@sdf.lonestar.org | finger me for my pgp key.
-------------------------------------------------------
