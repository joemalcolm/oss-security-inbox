X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["683" "Wednesday" "19" "July" "2017" "11:06:51" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20170719090651.u2yvhthnbovzoos5@lorien.valinor.li>" "22" "[oss-security] gnome-exe-thumbnailer: CVE-2017-11421: VBScript script injection when generating thumbnails for MSI files" nil nil nil "7" "2017071909:06:51" "[oss-security] gnome-exe-thumbnailer: CVE-2017-11421: VBScript script injection when generating thumbnails for MSI files" (number mark "U       carnil@debia Jul 19   22/683   " thread-indent "\"[oss-security] gnome-exe-thumbnailer: CVE-2017-11421: VBScript script injection when generating thumbnails for MSI files\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5568 invoked by uid 550); 19 Jul 2017 09:07:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5550 invoked from network); 19 Jul 2017 09:07:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Aqj8G+C3DAp11sTe1krI8qDOAfOrd9RO3T19aitA4/8=;
        b=TngNGBXdhJchsWROU5A5i9Gc9ZgVCdV3Mz4zgB2FlD098sXFNymggBQx1ZWnW+Ut2v
         VRMfH37GLJvHeJE6b8gJhRcTdEyOW0Vayo1jWoAche0FseYjcsff/rwUL1Rp18TtJ1CW
         Kg8eTTjEvGUgp/sWqNND8Q+fLmoM3eLFoBHbQ7TPtZED0L4a1AxK+17aXCyYO1bArXSn
         3+H7EZx5xagjB18DuN+l8oMPRl4QZh5c6H9k+SC88apl77rGo03n+AA4t/e1776mUV6A
         +9i45arIxCXsBJHgX0jUUbQ3WwiLU6S0c+SgdmQGGBJ2L3Jm92i8mbK/K0OuIssvVR7V
         Irpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=Aqj8G+C3DAp11sTe1krI8qDOAfOrd9RO3T19aitA4/8=;
        b=X631UPgfd5OGqcuunm4utzfafYjnA9BXmo++Fg0vV1OiJq/rxX1VljTkJe7Bo/l2wJ
         2ZW0cd7qtvYgxOnin0Cc/RWviSFEUVxF+QHUdVQn7XgYVHZiAuCK3726hOKIUg7Heu3d
         XOL3khR80XaLkZ8emNIFeHXYQ2HuV8R32ZP2Mic694XCBuIZ7YGapZ4pkgjnFWEZBb9L
         5SC9EdKALeYGj+F2Z0mJR4BuulY+UrqTS6ydGr6vrHP7IOugkP00oTn/znuvTtsnd0nI
         lignuZ7/gf4bCIPbFuQP/EN4fOvGJEt5pbuPXLLHvCDfOzG7r60fC7uTtIl1jCTpL6Jm
         jM1w==
X-Gm-Message-State: AIVw110T7OWOJHH/QyoJhMbNnVVwi7vXqw2vE1XGUgz1yV0F3va2Fc9k
	F9G1iy4bc+RsBAK1
X-Received: by 10.36.112.82 with SMTP id f79mr1223529itc.65.1500455214283;
        Wed, 19 Jul 2017 02:06:54 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Wed, 19 Jul 2017 11:06:51 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20170719090651.u2yvhthnbovzoos5@lorien.valinor.li>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20170609 (1.8.3)
Subject: [oss-security] gnome-exe-thumbnailer: CVE-2017-11421: VBScript script injection
 when generating thumbnails for MSI files

Hi

MITRE has assigned CVE-2017-11421 for the following issue in
gnome-exe-thumbnailer, a Wine .exe and other executable thumbnailer
for GNOME:

gnome-exe-thumbnailer before 0.9.5 is prone to a VBScript Injection
when generating thumbnails for MSI files. There is a local attack if
the victim uses the GNOME Files file manager, and navigates to a
directory containing a .msi file with VBScript code in its filename.

Upstream fix:

https://github.com/gnome-exe-thumbnailer/gnome-exe-thumbnailer/commit/1d8e3102dd8fd23431ae6127d14a236da6b4a4a5

References:

https://bugs.debian.org/868705
http://news.dieweltistgarnichtso.net/posts/gnome-thumbnailer-msi-fail.html

Regards,
Salvatore
