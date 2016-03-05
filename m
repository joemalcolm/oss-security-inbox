X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["477" "Saturday" "5" "March" "2016" "14:48:42" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20160305134841.GA3099@eldamar.local>" "20" "[oss-security] CVE Request: Dotclear: XSS vulnerability in comments managment page and media exclusion control enforcement" nil nil nil "3" "2016030513:48:42" "[oss-security] CVE Request: Dotclear: XSS vulnerability in comments managment page and media exclusion control enforcement" (number mark "U       carnil@debia Mar  5   20/477   " thread-indent "\"[oss-security] CVE Request: Dotclear: XSS vulnerability in comments managment page and media exclusion control enforcement\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27684 invoked by uid 550); 5 Mar 2016 13:48:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27663 invoked from network); 5 Mar 2016 13:48:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=kEvboPWoqtRfXMBWmN+SMVA6Gi1ZY1fjdjHTv/O2lEc=;
        b=iPGO95Cp6wBRkJhV5uGHqP5vwTte9rElzyF2MhPQyezGOpjv4oVIYLyP27/W9SX9u7
         UYxjyiz/xR2D0MxRa0VREqwv/mfH78Ui4tcJtNr8U96vxiMquB44pL8+KW9xDV4zSdi1
         /AmWWZmkweIdTecVtBcWmx7CvV7FLqmD8bImuAvOuXfMBtzSct70QD2UpAPgsSV7No6J
         6G0iV4YNN+Ruq+PwYH1phrr4F+1eYTMs3WZ5koS0Psxn4jI8QAGW1s80zYlMzLFHmp2E
         Ft27Cwv4n7WHcibnzjMCZCwbddvBUpSu+yNqBzdHY2i24YqBjfpUvQSXJ0JUauSfPV6S
         pMvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=kEvboPWoqtRfXMBWmN+SMVA6Gi1ZY1fjdjHTv/O2lEc=;
        b=m7/ZdklXhHlkl//CpJjMSh1A9kuma1vSGQDtAw00fDLYDSVZlUSld/vxmO/wVJrkHl
         DwxAeV4T92Pt7FY8pi8nBojG9rfIGzSvqyxvc8mcnxlgfn12FsF96e7LYlBlezZedYl4
         EpWMQDKHAnTvrBW5XjV4gtIYPTqeie4f2qOxC6+Vn3wupdCyQtK+QzSq3EvLmZYb//98
         gngcGFvlBYYn/qqm+EtHcQndCZfRztwDCfHyPYGeOueN1N+dFRT3FesvuDv3XswQRUpY
         YA3x0Ua2t3shWLDNuvVfMHlNy8M42ikZIDgAhNYi/Z1w80cl8u8YA3pmjVQKHOx4hvJQ
         wckA==
X-Gm-Message-State: AD7BkJLqbNTyojeazYiG/bTqKiTv58OzJGbaArvCOLYdrz53j+tWZRl5Gb5o/gReBMU0YQ==
X-Received: by 10.28.170.137 with SMTP id t131mr3818285wme.74.1457185725095;
        Sat, 05 Mar 2016 05:48:45 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Sat, 5 Mar 2016 14:48:42 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20160305134841.GA3099@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: [oss-security] CVE Request: Dotclear: XSS vulnerability in comments managment page
 and media exclusion control enforcement

Hi

Dotclear, a web publishing software, fixed a cross-site scripting
vulnerability in 2.8.2. Additionally the media exlusion control in the
media manager was furhter enforced:

https://dotclear.org/blog/post/2015/10/25/Dotclear-2.8.2

The XSS vulnerability was fixed with 

https://hg.dotclear.org/dotclear/rev/65e65154dadf

The second mentioned issue was addressed with

https://hg.dotclear.org/dotclear/rev/198580bc3d80

Could you assign CVEs for those?

Regards,
Salvatore
