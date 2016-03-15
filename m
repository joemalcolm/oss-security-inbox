X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["595" "Tuesday" "15" "March" "2016" "13:51:38" "+0100" "=?utf-8?B?U8OpYmFzdGllbg==?= Delafond" "seb@debian.org" "<20160315125138.GT4944@frisco.mine.nu>" "17" "[oss-security] CVE request - SPIP: 2 vulnerabilities" "^Cc:" nil nil "3" "2016031512:51:38" "[oss-security] CVE request - SPIP: 2 vulnerabilities" (number mark "        seb@debian.o Mar 15   17/595   " thread-indent "\"[oss-security] CVE request - SPIP: 2 vulnerabilities\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14137 invoked by uid 550); 15 Mar 2016 12:51:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14119 invoked from network); 15 Mar 2016 12:51:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=u1sWcY9h0Etib3IDivg7l6gMStcR+B7Isnxn4LGvc7s=;
        b=TMJONigzhf9qDQHD6BDZSJb8XJTwODE4R8hsQExhYAkXgSRx/vA/Ho/ryjSlnl2e7+
         8JBeSkxjL7wiPtULORgK/p2Y5i/S3wHgWrgGLoCQAotfrzFKdlJJKEYZef5Y2b3a/huW
         TR6dn0ZD2vY2G5Tq9W4AZvp0aUzlb8ClwC8OSEbbEWIJpdeFkIhSOio5YOciP+y0XYdX
         qVV43b0Bl5ahhO1DcyX5dyn3VghYwp5VWpesDSJhZ5Twitrj0/zLQoLOGlg/UGgXaEXj
         8woDq7nHA87ndFQAWpNF0JqpMb1vSX2wirMCDanxVkM4piLOG72D7RJdhbRaqTGsvHP7
         czzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=u1sWcY9h0Etib3IDivg7l6gMStcR+B7Isnxn4LGvc7s=;
        b=gvNIVOCwZX8wKCxT0ZOgIp+74KHjhOYZI+2lcbbSdl9ZvEyM+EDr+Gq/glV+Jo4nQ7
         jj8lHSjOfJ9zB+HBlK/jjdTqzs/zWwQMptC7oF2yDMwBUTy1zdms6cYSvzZweEMM/8hW
         Gm8FQMoE4Ts7v7qma49g6n7Hq1EjlKxj8EMtmHThnQqtAG9DNMEsFcYTQKsk07ir35Cb
         LVPI4xcX517a5XtcxIJgHmgdklnw4wcxzFZIvF++cj8AN4Q93m9szNxs+yONUi37BYc0
         cXBEjtZ0FgZOs42I4W5VQsID+nrLlgPVLmja/L++TVbpdkP21/LBzj5prAYL2IVtgaLV
         XLxQ==
X-Gm-Message-State: AD7BkJKaVs/lJ+vS8Pa56HOHh3U8ANCgutaoS0fgOj0nQLhzI4QR8LsjV/qhy3OjUuDAiQ==
X-Received: by 10.28.68.136 with SMTP id r130mr18915216wma.28.1458046300964;
        Tue, 15 Mar 2016 05:51:40 -0700 (PDT)
Message-ID: <20160315125138.GT4944@frisco.mine.nu>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: cve-assign@mitre.org
Date: Tue, 15 Mar 2016 13:51:38 +0100
From: =?utf-8?Q?S=C3=A9bastien?= Delafond <seb@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: =?UTF-8?Q?S=C3=A9bastien_Delafond?= <sdelafond@gmail.com>
Subject: [oss-security] CVE request - SPIP: 2 vulnerabilities
To: oss-security@lists.openwall.com

Hello,

on behalf of the Debian Security Team, I'd like to request 2 CVEs for
SPIP. Both are present in 3.x before 3.0.22 and 2.x before 2.1.19:

  * PHP code injection when handling content. This is fixed in
    https://core.spip.net/projects/spip/repository/revisions/22911
    (defining the function itself is enoug, as the global mechanism for
    filters in SPIP automatically tries to lookup and filtre_foo_dist if
    it exists)

  * Objects injection when deserializing untrusted input. This is fixed
    in https://core.spip.net/projects/spip/repository/revisions/22903

Cheers,

--Seb
