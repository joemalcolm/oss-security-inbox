X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["572" "Monday" "17" "July" "2017" "06:34:56" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20170717043456.lcoueajxmgvg7dxj@lorien.valinor.li>" "20" "[oss-security] ImageMagick: CVE-2017-11352: Improper EOF handling in coders/rle.c can trigger crash (Incomplete fix for CVE-2017-9144)" "^Date:" nil nil "7" "2017071704:34:56" "[oss-security] ImageMagick: CVE-2017-11352: Improper EOF handling in coders/rle.c can trigger crash (Incomplete fix for CVE-2017-9144)" (number mark "U       carnil@debia Jul 17   20/572   " thread-indent "\"[oss-security] ImageMagick: CVE-2017-11352: Improper EOF handling in coders/rle.c can trigger crash (Incomplete fix for CVE-2017-9144)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3076 invoked by uid 550); 17 Jul 2017 04:35:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 2028 invoked from network); 17 Jul 2017 04:35:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=JqMjXCtO7ifHLMVZDYRr3zYG4i0o/U0JU89QbbAdhCk=;
        b=tmehe5BLQ/c7RpHRjXws9fHIZMRNT+8zqMjn9MYDn0Op2gNOFBh9TypfLcowGdpupo
         6C7b2qyctSXz7Yxr9dmbkVtXJD1XzWYpDAa3xPk5HFQlDS4ppfFBflk0u8IkXpOtxW1s
         a+/kvlC6oMUut2pn2GBeDL7JpTmUYDBMMnzNrOFtCa+LSkblOKKG4TM+llga4q/93KqJ
         2ab2qnBP+1JtMPRtDT6YK7iQULnKXFCJHcyQBYuD9XPvvOeOTtuzPo/BJ7of57T/d/3q
         gk0+WpD70xOUvwrKDZqktiCJDXGzIly+l1SasvnjMMK3ALWRh8+hzaaFf0BOKnlcc392
         Y9Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=JqMjXCtO7ifHLMVZDYRr3zYG4i0o/U0JU89QbbAdhCk=;
        b=Gd2hbENJogDXaQW6KkEGTqJtOGfIDTjKPUbyOalvKHQQn6NF09Gur97qrjEv+u6GOG
         VnQHu+wB6Dk+mxfyICMhSwBu0iE27tiS+gqgxwMk/HSqDlLdf0mIssRiymDcNWiNU91n
         o2P2ZaAH9JR6FnstxtcQLGtyKDNm05y53ll8UPnMrc1N295TG7q1jqxZHYYd8HxEvhuY
         6QY0wr7xFenvPdT2MFesri8+SO7EWl52912srmB79ob/MgxW6lsExAAlLB0CuYewQH1W
         LaB7q/bX4eFCTkKoc/dr6iyblDoGdg1GskmXyGUKNljbCQiRgNRrT5Q0GpRrVK5XtoPJ
         N7nw==
X-Gm-Message-State: AIVw113HrxUmoGFnBGepVYpDfzqFCp03oEf4ubXuA5Dwq9EqWy3nQn0b
	J90s4oWxTOTt7l1C
X-Received: by 10.36.172.73 with SMTP id m9mr3971268iti.76.1500266098289;
        Sun, 16 Jul 2017 21:34:58 -0700 (PDT)
Message-ID: <20170717043456.lcoueajxmgvg7dxj@lorien.valinor.li>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20170609 (1.8.3)
Date: Mon, 17 Jul 2017 06:34:56 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: [oss-security] ImageMagick: CVE-2017-11352: Improper EOF handling in coders/rle.c
 can trigger crash (Incomplete fix for CVE-2017-9144)
To: OSS Security Mailinglist <oss-security@lists.openwall.com>

Hi

In ImageMagick before 7.0.5-10, a crafted RLE image can trigger a
crash because of incorrect EOF handling in coders/rle.c. This is
caused by an incomplete fix of CVE-2017-9144.

Upstream reference:
https://github.com/ImageMagick/ImageMagick/issues/502

Upstream fix (ImageMagick-7):
https://github.com/ImageMagick/ImageMagick/commit/86cb33143c5b21912187403860a7c26761a3cd23

Upstream fix (ImageMagick-6):

https://github.com/ImageMagick/ImageMagick/commit/7f1f01b695e869c410ee10e2176f8fd764f09373

MITRE has assigned CVE-2017-11352 for this issue.

Regards,
Salvatore
