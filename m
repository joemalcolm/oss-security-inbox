X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1932" "Tuesday" "3" "March" "2020" "00:07:29" "-0500" "Benjamin Gilbert" "benjamin.gilbert@coreos.com" "<CAF=P+=6oF_93xq7VwdiDXu-K19NkVTx7B5c0pwr8-q14jQ2UTg@mail.gmail.com>" "43" "[oss-security] CoreOS leaving distros/linux-distros on May 26, handing off responsibilities" "^Date:" nil nil "3" "2020030305:07:29" "[oss-security] CoreOS leaving distros/linux-distros on May 26, handing off responsibilities" (number mark "        benjamin.gil Mar  3   43/1932  " thread-indent "\"[oss-security] CoreOS leaving distros/linux-distros on May 26, handing off responsibilities\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CoreOS leaving distros/linux-distros on May 26, handing off responsibilities" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11624 invoked by uid 550); 3 Mar 2020 11:42:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24333 invoked from network); 3 Mar 2020 05:07:52 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=WSxi6OjHXU/cw+SMTmVIqDGgd8M22yN5aFOpSqy897Y=;
        b=WZ3Bxl53RrpAvoKowO6WLQukFHFWXeuCT55USgI0+uguBinFkA1jeTTeXsNnCjgZ73
         /giU+3Ns4E4+3Or1QaMwpfaa3QdgN+O8qBwOv9rg9zZulInPFmtCShABbBh9Q9kC/pEo
         uXCsGvKl2M9UqGtwXYuwKtReeo5VVT6T++nSKncq7yaWr7hl2/dVVAESHoqNgap5j0vH
         EzM2I5PgluQwNkh1+WUXCmJOAQBap4SSzGDoXT6Tz7l809F8SPsgGoarSGaqXuaeK0PG
         NCvkdp/vlOkXuaxk8CGoa4Z+Dwx1tK1qgOBeyHPv2Kh6OWlfhFHSZ/Rr8ZY7XzwVfhqD
         ceTg==
X-Gm-Message-State: ANhLgQ1GPQtc+H5ZgQ7nwvDwhjKtSdtA1vaTGXyNfOHE6gt94INUa/Z/
	2PBqBDqVuBq4wX6OcgnYlAqaVCHjeW/NqSSpC9l1ufpy/Lc=
X-Google-Smtp-Source: ADFU+vtl7x4TMsEElrqA48zdqkew75uA/fYm+30iP5bFDAat+wma0CCd0Z33g6EQ5JgOplpE7pZNL9AFmi96pmiD6Mo=
X-Received: by 2002:a5d:658c:: with SMTP id q12mr3458937wru.57.1583212060888;
 Mon, 02 Mar 2020 21:07:40 -0800 (PST)
MIME-Version: 1.0
Message-ID: <CAF=P+=6oF_93xq7VwdiDXu-K19NkVTx7B5c0pwr8-q14jQ2UTg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Tue, 3 Mar 2020 00:07:29 -0500
From: Benjamin Gilbert <benjamin.gilbert@coreos.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CoreOS leaving distros/linux-distros on May 26, handing off responsibilities
To: oss-security@lists.openwall.com

Hi all,

Red Hat recently announced [1] that CoreOS Container Linux will reach
end-of-life on May 26.  The Container Linux team will be leaving the
distros lists on that date, and will need to hand off our maintenance
responsibilities to other distros.  We're currently handling [2]:

Administrative-1: Promptly review new issue reports for meeting the
list's requirements and confirm receipt of the report and, when
necessary, inform the reporter of any issues with their report (e.g.,
obviously not actionable by the distros) and request and/or propose
any required yet missing information (most notably, a tentative public
disclosure date/time) - primary: CoreOS, backup: Oracle

Administrative-2: If the proposed public disclosure date is not within
list policy, insist on getting this corrected and propose a suitable
earlier date - primary: CoreOS, backup: CloudLinux

Administrative-6: If multiple issues are reported at once, see if any
of them can reasonably be made public sooner than the rest, and if so
help untangle them and stay on top of their disclosure process -
primary: CoreOS, backup: CloudLinux


Oracle isn't signed up for any other tasks, so it seems natural for
them to move up to primary on #1.  In addition to being backup on #2
and #6, CloudLinux is primary on Administrative-3 (evaluate if the
issue is already public).  In my experience it makes sense to handle
#1 and #2 together, so: Oracle, would you be willing to take primary
on #1 and #2, and CloudLinux, what would you think of moving up to
primary on #6?

It'd also be good to get volunteers for the backup slots.  Any takers?

We plan to continue executing our current responsibilities until May
26, but if other distros want to take over our roles sooner for ease
of bookkeeping, we're open to that.

Best,
--Benjamin Gilbert

[1]: https://coreos.com/os/eol/
[2]: https://oss-security.openwall.org/wiki/mailing-lists/distros#contributing-back
