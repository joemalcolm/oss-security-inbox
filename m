X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["550" "Sunday" "24" "January" "2016" "16:37:37" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20160124153737.GA18993@eldamar.local>" "19" "[oss-security] CVE Request: tiff: Out-of-bounds write for invalid images using LogL compression" "^Date:" nil nil "1" "2016012415:37:37" "[oss-security] CVE Request: tiff: Out-of-bounds write for invalid images using LogL compression" (number mark "        carnil@debia Jan 24   19/550   " thread-indent "\"[oss-security] CVE Request: tiff: Out-of-bounds write for invalid images using LogL compression\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32269 invoked by uid 550); 24 Jan 2016 15:37:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32248 invoked from network); 24 Jan 2016 15:37:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=vyi5m3+i+4lewSZBcEyeCMRdiu2gXxafpaO5wJKcou0=;
        b=ftMG3ZS3tLwLGnQy1maenK2sJ763gVxcMuaAKmp6lDQ1kmXgxh4bscWSVzbChaqG2T
         Sb8nTWsyxUAV1KVpy7a0sNpjWyUGGUcA7tsoy7V51+dYqNdNDOLSaJ3iTLFm2uLtgeAA
         5KQObHWetBhOm6vOZy8TSjQLqPvli/EFUsjqWLpNTPHqAjBtJpgNMxIOUiwjM+8FVUTQ
         +NgtuaW0mQFa8rjt095Ftp9U71ahcseZVq9WuSj5EeHwyiaYs6dRrTdjtWJkYwEkRP0a
         BIgX24z1QNWJv4+VOviQYZ044Kmd+G2U9GbZFJKqbBQ+osC6yCJOO6ZfUxvCjXpTYJLN
         ZAuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-type:content-disposition:user-agent;
        bh=vyi5m3+i+4lewSZBcEyeCMRdiu2gXxafpaO5wJKcou0=;
        b=ddkh7ALBWS5xpwK4kbkm2D6P0HWpauODjgHRXlOgapqMM0xXln0hmhZL+dZx8jsP3s
         zg8XeYGBkXFzZUUJsNUeMBj+sPpCSAaXLvNUzu5SPhlkX4ObVe3RJk/fRMTgajGF8B2z
         cycNk9C2Lhwq70P4mXv4wpgd/A/MPRK2FrNjgWAhc+9Mx8bkZFGLnZcWSE9shBH+z0xZ
         0kZ0O+vJOdeart1V2Z3CO6W8uJBwntRLBZBbbwJ/sD+ZJGHALxCfMyg6K5n7wpOwiNJZ
         6Ls2ruTdtxCBDmXvJCpDmdVzbmYDo4GA9EwXZyspEVyFeooqiMb5o/QjC1nlksb3CEcr
         SsBA==
X-Gm-Message-State: AG10YORm+EJAFrXfD6OpK6lHC8J1j9PYxFTiEJmNRGTDGSkVZyQ2ac8cP7pqAtXlh+PN1w==
X-Received: by 10.194.20.67 with SMTP id l3mr12429537wje.86.1453649860952;
        Sun, 24 Jan 2016 07:37:40 -0800 (PST)
Message-ID: <20160124153737.GA18993@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
Date: Sun, 24 Jan 2016 16:37:37 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: [oss-security] CVE Request: tiff: Out-of-bounds write for invalid images using LogL
 compression
To: OSS Security Mailinglist <oss-security@lists.openwall.com>

Hi

Could you assign a CVE for the following issue in tiff:

http://bugzilla.maptools.org/show_bug.cgi?id=2522

> 2015-12-27  Even Rouault <even.rouault at spatialys.com>
> 
>         * libtiff/tif_luv.c: fix potential out-of-bound writes in decode
>         functions in non debug builds by replacing assert()s by regular if
>         checks (bugzilla #2522).
>         Fix potential out-of-bound reads in case of short input data.

Fixing commit:

https://github.com/vadz/libtiff/commit/aaab5c3c9d2a2c6984f23ccbc79702610439bc65

Regards,
Salvatore
