X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["264" "Sunday" "19" "February" "2017" "17:43:59" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20170219164359.a35hj2hnwriqyqfr@eldamar.local>" "13" "[oss-security] TCPDF: CVE-2017-6100: LFI posting internal files externally abusing default parameter" nil nil nil "2" "2017021916:43:59" "[oss-security] TCPDF: CVE-2017-6100: LFI posting internal files externally abusing default parameter" (number mark "U       carnil@debia Feb 19   13/264   " thread-indent "\"[oss-security] TCPDF: CVE-2017-6100: LFI posting internal files externally abusing default parameter\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13825 invoked by uid 550); 19 Feb 2017 16:44:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13807 invoked from network); 19 Feb 2017 16:44:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=G8+SsR2i+eY6h1qOOrW39SraxmxoHal0vFSdoIKR/RA=;
        b=MGx0PwYPv3vqUZmbZEI/6hZCQcmjPk5DWZF+qTg8Mz4P1b/M6P0g0xNuWPfccfMIrO
         cE/dPdaCtjM5s0vVaqknQc7WZkUHwMdNnODRH66fRslYLXKjnRWBs2/kUJ+igOaQCL7R
         tWDVp1bKiZWF3+XlgUhn+k44+UEExNRcOuH6CaJHVd/WA8rk2sLZkHN95/aR8NnCwyOZ
         ESHatPtmyz7piYhTjCmJxJ5nSk7ODH7kbsO3zE0O7SLY+fci/JHr6AfxToirlP95wRe9
         74u0dKXZJPFeX4z0M0iFU1+V8WNIdjTB60SP/iHcZMOyRsUPYryeOsBRsQSz90rh7QhO
         Gu1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:content-transfer-encoding
         :user-agent;
        bh=G8+SsR2i+eY6h1qOOrW39SraxmxoHal0vFSdoIKR/RA=;
        b=svRCwQf2KpZnKCTGs0GeJVg4IzV+yKrMdKP7QhV7/epg9XZuFL6wxXMOXdDPqbRBlU
         Ahsgvs1uqu6WQvhn8Buh0g2KXguL5pZpq6CKZy02OrCDlbnoYIniW0InyvMIh7SdEzED
         24g6khauNbjz0B4YK3HtBRNP9P/vmXLgya1tuH6aVHjz+RjW09KH4YpKPaq6lJ/LVNRm
         Doj585xBCAEu0JcqUSHutqVTp9uMzd57cb0e1lbPYNQTfxe00k7HZkBv9rSESZM2oBUb
         LTCmkLjD87a1PnQV0kyIse+2W6sb+rpFvt95g9zKcmm9WOarcRWjrviPLfiD7ZCAa/VA
         80jA==
X-Gm-Message-State: AMke39k1KzKVfU2aDaD3ybN6f5N+ekIW8dINGf4umXReK0QbV+WKbxehsXyLPZupM5HUYw==
X-Received: by 10.28.132.2 with SMTP id g2mr14107988wmd.103.1487522640967;
        Sun, 19 Feb 2017 08:44:00 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Sun, 19 Feb 2017 17:43:59 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20170219164359.a35hj2hnwriqyqfr@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: [oss-security] TCPDF: CVE-2017-6100: LFI posting internal files externally abusing
 default parameter

Hi

CVE-2017-6100 has been assigned for the following issue in TCPDF:

https://sourceforge.net/p/tcpdf/bugs/1005/

tcpdf allows to upload files from the server generating PDF-files to
an external FTP.

The issue was discovered by  Frans Rosén.

Regards,
Salvatore
