X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["966" "Wednesday" "18" "October" "2017" "15:33:12" "+0800" "amon" "amon@nandynarwhals.org" "<CAFw=huUjK8X=AEimVPLtg9bGh3rKpJ8CpLujQEqwWQ7kvdxmNQ@mail.gmail.com>" "25" "[oss-security] MuPDF mutools Out-of-Bounds Write Vulnerability (CVE-2017-15587)" nil nil nil "10" "2017101807:33:12" "[oss-security] MuPDF mutools Out-of-Bounds Write Vulnerability (CVE-2017-15587)" (number mark "U       amon@nandyna Oct 18   25/966   " thread-indent "\"[oss-security] MuPDF mutools Out-of-Bounds Write Vulnerability (CVE-2017-15587)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11462 invoked by uid 550); 18 Oct 2017 09:54:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3115 invoked from network); 18 Oct 2017 07:33:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:from:date:message-id:subject:to;
        bh=5OcmhQSVMs6h56rO27PtANkD/OnEhpG5yY+/n1ckccg=;
        b=AmoYSU3WZeZbQkkBbjigFkPsXW9YPlErkUIVW6yQovXMWKp/rxWQUI0Q4PJTOXenxe
         8brakKZU9FTiHJr/DYagu7IEpijXXW7efJjACScTDFQUIQCDGxGBsjEw7WQxfaoNfdih
         bahiCIQdrKWdfoONziKhqlQowTaW2zKOxTibtRfKWu0rfDYxjRV+a/odF6zxt13qomoL
         qjDC6Si0//T2fzQgWIcuKq/n/K/fgm41FSnuiqGIH0caYpZ2S9cguXOo1qjUm2jzpx0P
         177lm9juIVE7LhyoogJEMzNi7mHMrp6g0VYiqQyYF0cmGSESlg7P4NjitLIvjjb3vJPi
         HGxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
         :to;
        bh=5OcmhQSVMs6h56rO27PtANkD/OnEhpG5yY+/n1ckccg=;
        b=cT92Zj0CiCADD9sEG12rWPL9U3cnbZldPiu9mSFReYKHbCRJRVR9H9IHsF15FEAfEa
         VWEaq2NKOFAZV8lcR/Aobq4mxEsHOOvRq1yCFWjx4DYM5HM4dlIBqygSDDWLUUiWE1eR
         dX5oPLulc5qPB8cZvX6ivOCP7PIx0RtVdaK04ZHKM4BG5TdYxceBbbpQDO9KzrQOxhCe
         zGfsUfWaHE7cZFxOIACkfD4KMXAqic+VIVhnAz0ka8tw4zWQqDeDyo/VIVZ6qtcfM3+B
         S4oOc+w5feq3Alw9PvaYMuSCjwCERdLWySeQ8E8RAI60qpQslPxzAs0kkTz2dlZ+S4l/
         lyPw==
X-Gm-Message-State: AMCzsaXL+Rz8THUSvYKYeSkdQIhj4ic2AsUF9JIi7EzkwifgCvw+aDq8
	GqIhUmxd5ETReW3FiVxBGZ2MMIwYxUDrWNm9+5F9PtOn
X-Google-Smtp-Source: ABhQp+QBkzIYEwrIBMKu9sHIN6GaOhPOeu3NPySAzhv4FmkwA61Jrhruvdr+q/ysXyhA5uiOAXmJTL3RTpC5WKG92FA=
X-Received: by 10.13.202.72 with SMTP id m69mr822129ywd.42.1508311992609; Wed,
 18 Oct 2017 00:33:12 -0700 (PDT)
MIME-Version: 1.0
Sender: jergorn93@gmail.com
From: amon <amon@nandynarwhals.org>
Date: Wed, 18 Oct 2017 15:33:12 +0800
X-Google-Sender-Auth: ipiAoV7RrOcMPb1vECaZJqZ_6pk
Message-ID: <CAFw=huUjK8X=AEimVPLtg9bGh3rKpJ8CpLujQEqwWQ7kvdxmNQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="001a114f275a87b1fe055bcd40ce"
Subject: [oss-security] MuPDF mutools Out-of-Bounds Write Vulnerability (CVE-2017-15587)

--001a114f275a87b1fe055bcd40ce
Content-Type: text/plain; charset="UTF-8"

A vulnerability in mutools PDF parsing functionality allows an attacker to
write controlled data to an arbitrary location in memory due to an integer
overflow when performing truncated xref checks.

Fix:
http://git.ghostscript.com/?p=mupdf.git;h=82df2631d7d0446b206ea6b434ea609b6c28b0e8
Writeup: https://nandynarwhals.org/CVE-2017-15587/

Timeline
28 Sept 2017 - Discovery of the vulnerability.
28 Sept 2017 - Disclosure (
https://bugs.ghostscript.com/show_bug.cgi?id=698605) of vulnerability to
the vendor and to Debian Security Team.
16 Oct 2017 - Vendor fixes the issue in git commit (
http://git.ghostscript.com/?p=mupdf.git;h=82df2631d7d0446b206ea6b434ea609b6c28b0e8
).
18 Oct 2017 - CVE-2017-15587 assigned to the issue.
18 Oct 2017 - Publication of the vulnerability details.

This issue was discovered by Terry Chia (Ayrx) and Jeremy Heng (nn_amon).

--001a114f275a87b1fe055bcd40ce--
