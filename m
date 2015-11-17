X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["729" "Tuesday" "17" "November" "2015" "09:37:00" "-0700" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty1uFFW-t_0XXpUGW501Jdd_bG+4zLYvBw-yBPyJzyUemA@mail.gmail.com>" "35" "[oss-security] CVE request for Gnome gdm/screen lock crash" nil nil nil "11" "2015111716:37:00" "[oss-security] CVE request for Gnome gdm/screen lock crash" (number mark "U       kseifried@re Nov 17   35/729   " thread-indent "\"[oss-security] CVE request for Gnome gdm/screen lock crash\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5155 invoked by uid 550); 17 Nov 2015 16:37:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5132 invoked from network); 17 Nov 2015 16:37:12 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=RMdwUrGoU0lZd02ZgYzDOWeAepD8e+LnEthf08RmA2w=;
        b=dne1TSjlankAj8bLpHIPSFfA7++wxIxuiIG3SrfJSff/i04vE1KUc/w7K/cDuNcllA
         K6F+ZVUfXs5Lp3h2W2G5X0MIQIRIfcE1/jH3Otx690UmPtR6jR3sBCs2BkFINIABcEPV
         4lz1mdtE3VjUIHPhIXfIjtJuTFpkxCBc4W/BuYNYpv15cCynf0dc8dQQHSE6M9W80ehh
         YQWn+Y/6kXM8GzEi0ycdJ8kNj1T2nV9SLeAqCl58Ir2wDxNRu5W8s9sO2tYk5zlfnamw
         Qa9+cynR2zydfh6fe4Aop2s/GkMjiYQ2G1KOHpUo9/BBm95WQJ5bCyl3nTOAPgaVAyPS
         gpfg==
X-Gm-Message-State: ALoCoQl+iLVuszsl39b2OnkM0X77AbDE8fS152BU/EV7xtpNU+ZXJs3mCMDUoKEF9RCt5HmktIWk
MIME-Version: 1.0
X-Received: by 10.129.60.12 with SMTP id j12mr45687732ywa.76.1447778220549;
 Tue, 17 Nov 2015 08:37:00 -0800 (PST)
Date: Tue, 17 Nov 2015 09:37:00 -0700
Message-ID: <CANO=Ty1uFFW-t_0XXpUGW501Jdd_bG+4zLYvBw-yBPyJzyUemA@mail.gmail.com>
From: Kurt Seifried <kseifried@redhat.com>
To: oss-security <oss-security@lists.openwall.com>
Content-Type: multipart/alternative; boundary=001a1142e0c48ce35d0524bf2255
Subject: [oss-security] CVE request for Gnome gdm/screen lock crash

--001a1142e0c48ce35d0524bf2255
Content-Type: text/plain; charset=UTF-8

https://bugzilla.gnome.org/show_bug.cgi?id=758032

Christoph Reiter (lazka) 2015-11-12 22:14:26 UTC

Credit to my cat for finding this..

* Running gnome session
* Press <super>+l to lock
* Press Escape and hold

Expected:

* The slider thing going up an down in an endless loop

Happing:

* After ~5 times the slider window coming and going GS crashes

using GS 3.18.1 on debian sid

Comment 1 <https://bugzilla.gnome.org/show_bug.cgi?id=758032#c1>



-- 

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a1142e0c48ce35d0524bf2255--
