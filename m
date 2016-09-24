X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1908" "Saturday" "24" "September" "2016" "15:44:19" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20160924134419.2wc6wvb3i5tnzd6c@eldamar.local>" "68" "[oss-security] CVE Request: irssi: information disclosure vulnerabilit in buf.pl" nil nil nil "9" "2016092413:44:19" "[oss-security] CVE Request: irssi: information disclosure vulnerabilit in buf.pl" (number mark "U       carnil@debia Sep 24   68/1908  " thread-indent "\"[oss-security] CVE Request: irssi: information disclosure vulnerabilit in buf.pl\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14328 invoked by uid 550); 24 Sep 2016 13:44:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14310 invoked from network); 24 Sep 2016 13:44:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=gba9W+jrsEr031AA/ILt33CmykEYpYxm8w9Nob4FpeM=;
        b=S/j4kamTmi4MTnmk9atNBJtzC7I6EcKH1lJk72FzB7rSnvyzH63bDYsM3cVhWbdzWF
         eM/CoQU5xeTIe1jqkGTowhErPUFn+As9Dbo3hAUS+CPA2InefeyjNm91ds4W2Z8xmpZX
         +/AdtO8L/1qQ3fMKAYM2mLJ912qUlDWfB52SN8R/l4sW9ftxM1Cewh4FAlIjXrek5frr
         xeAQABmF/IbuMEg97bd287cnxFC4blCBU4aewU3VmpCUmnhi2WgsnR4b+3ffQhC85atU
         5evYR4mo7DikvsgWi3b6HZaRPrajB1JKNEEJKLcX48Ge0XGGh7Ri1fkyb/3Q1RopSvff
         qyRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:content-transfer-encoding
         :user-agent;
        bh=gba9W+jrsEr031AA/ILt33CmykEYpYxm8w9Nob4FpeM=;
        b=GG9bqiPzdMeHBJBC3ocHm1RSc2b9kIO8U2I/rpsiMkxO+UP1sFjbmt6GA0knBerYiP
         syWJskug5fRPj9MmEI7v6oulztBz7CL/CG61ODp06diFdnXVk8AQuC/J+UIGLyDhi1WZ
         lrSMReZCinImtt4jG2T397gGHK7d05dtnoEocYxfkd59qLyWBKG3G4k4EqGAaFePEjif
         L6rlR5GUTiHoy7XWzbC0HIAbptz2i9lqX3lljVRFWE2gLY4jWZX4CiqlrFWSYF8u2Luj
         9P5XZoY+WLJTUMlAKwKfsI7W4DbjeabBDoZRGOzENv+WvJ0YRz3E0fOn0JhZS7MR8l36
         QlXg==
X-Gm-Message-State: AE9vXwMFKpbSpqSpv62WOZscw+xtd5B1FaK9p7nrwrw42fPBnoRmF4BjpHsGDr+7pjk9Hw==
X-Received: by 10.194.234.69 with SMTP id uc5mr10859296wjc.76.1474724660856;
        Sat, 24 Sep 2016 06:44:20 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Sat, 24 Sep 2016 15:44:19 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20160924134419.2wc6wvb3i5tnzd6c@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
User-Agent: NeoMutt/20160910 (1.7.0)
Subject: [oss-security] CVE Request: irssi: information disclosure vulnerabilit in buf.pl

Hi

An information disclosure vulnerability in the buf.pl script provided
by irssi, a terminal based IRC client has been found. Quoting the
advisory at:

https://irssi.org/2016/09/22/buf.pl-update/

                  ]
> buf.pl update available
> 
> Posted on September 22^nd 2016
> 
> An information disclosure vulnerability was found, reported and fixed
> in the buf.pl script by its author.
> 
> CWE Classification: CWE-732, CWE-538
> 
> Impact
> 
> Other users on the same machine may be able to retrieve the whole
> window contents after /UPGRADE when the buf.pl script is loaded.
> Furthermore, this dump of the windows contents is never removed
> afterwards.
> 
> Since buf.pl is also an Irssi core script and we recommended its use
> to retain your window content, many people could potentially be
> affected by this.
> 
> Remote users may be able to retrieve these contents when combined with
> other path traversal vulnerabilities in public facing services on that
> machine.
> 
> Detailed analysis
> 
> buf.pl restores the scrollbuffer between “/upgrade”s by writing the
> contents to a file, and reading that after the new process was
> spawned. Through that file, the contents of (private) chat
> conversations may leak to other users.
> 
> Mitigating facts
> 
> Careful users with a limited umask (e.g. 077) are not affected by this
> bug.  However, most Linux systems default to a umask of 022, meaning
> that files written without further restricting the permissions, are
> readable by any user.
> 
> Affected versions
> 
> All up to 2.13
> 
> Fixed versions
> 
> buf.pl 2.20
> 
> Resolution
> 
> Update the buf.pl script with the latest version from scripts.irssi.org.

Upstream fix:
https://github.com/irssi/scripts.irssi.org/commit/f1b1eb154baa684fad5d65bf4dff79c8ded8b65a

Debian Bug report: https://bugs.debian.org/838762

Could a CVE be assigned for this issue?

Regards,
Salvatore
