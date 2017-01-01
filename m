X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["757" "Sunday" "1" "January" "2017" "09:03:26" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20170101080326.sin4gisgscjtgouc@eldamar.local>" "28" "[oss-security] Re: CVE Request: UnRTF: stack-based buffer overflows in cmd_* functions" nil nil nil "1" "2017010108:03:26" "[oss-security] Re: CVE Request: UnRTF: stack-based buffer overflows in cmd_* functions" (number mark "U       carnil@debia Jan  1   28/757   " thread-indent "\"[oss-security] Re: CVE Request: UnRTF: stack-based buffer overflows in cmd_* functions\"\n") "<7af25344ac544162af359607a4bf34e4@imshyb02.MITRE.ORG>" ("<20161231154054.abrg2lwgdfj3354p@eldamar.local>" "<7af25344ac544162af359607a4bf34e4@imshyb02.MITRE.ORG>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22256 invoked by uid 550); 1 Jan 2017 08:03:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22147 invoked from network); 1 Jan 2017 08:03:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=d/7+JwzwsamjqRFZhjQ6LrY7ZCB0GN/+jJQM59nNjc8=;
        b=ZmhFxhdFbIktjgjckZqhhrdi/hHnCh2+xfXQ4hT/Zoupe8wwmDHtkLZufWAsU0K6zd
         k6Ixvijx6vjSII3/okB593gjZLk0L0upeFtTbgIuojNssFpObDQjxxB76oCkVw0LoOyy
         9FBkwPDRKqCFOSuiXgX55BWf4t0eZ0NuypjAnsG8CKDeUugUGb5uWNmfwPQ4LbHaYV9z
         U6Szgt0Q2LApQWnUeX/6wuHO5Mcl4MDPjlY6awVLH/wpu8oR2CVSFr+rSj2FEh1NYeIH
         hyRAAZ9G6w7xsOlZ0oWzQ9HYwp3xcIXxwPm7asv/Eq1E53qdqvBqrTl6Nwan0tnilzLc
         ZJbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=d/7+JwzwsamjqRFZhjQ6LrY7ZCB0GN/+jJQM59nNjc8=;
        b=QdE5k7wyOIA5dyilB3GQjRNsdRlgEEhpg4abO2N1zwEjQJpazg3DYk1v3XBM1Wnn9u
         sU9RgFIpZHsNSnQcFjlKLblVTJTbtN7UaVPU1y+4Q76mbVJn8UVVPa1W3AtsXqAyKckJ
         7Kg7TY0ZsdX41YDrICi/gxiPc3iSFEQQcDJvD8/X7XRsv55ozsdQdQSp7yaaQF9qcBrL
         5Q10gNj6M9tFnO91VYE9Km9a6LH9ljnQrk5I+vvLXIPk5o6sa9Cctv0G/nW8wUvogHM7
         EHj35Jpe/CjcQnl+QxXcoJ3Xmmo3knNFOK6ogm3UVFJsFug+FzG6ySUwvC8LY35r7ETa
         AlnA==
X-Gm-Message-State: AIkVDXI6xtpABOBIqvSF5bosSuvyA1W+vpoSDXAP7hJYGZCUYtiuu+nT5rXX6MF3hSmKTw==
X-Received: by 10.28.152.79 with SMTP id a76mr48406859wme.47.1483257808373;
        Sun, 01 Jan 2017 00:03:28 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Sun, 1 Jan 2017 09:03:26 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: cve-assign@mitre.org
Cc: oss-security@lists.openwall.com, daved@physiol.usyd.edu.au,
	jf@dockes.org, willi@debian.org, security@debian.org
Message-ID: <20170101080326.sin4gisgscjtgouc@eldamar.local>
References: <20161231154054.abrg2lwgdfj3354p@eldamar.local>
 <7af25344ac544162af359607a4bf34e4@imshyb02.MITRE.ORG>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7af25344ac544162af359607a4bf34e4@imshyb02.MITRE.ORG>
User-Agent: NeoMutt/20161126 (1.7.1)
Subject: [oss-security] Re: CVE Request: UnRTF: stack-based buffer overflows in cmd_*
 functions

Hi,

On Sat, Dec 31, 2016 at 12:12:14PM -0500, cve-assign@mitre.org wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
> 
> >> I've found a Stack-based buffer overflow in unrtf 0.21.9, which
> >> affects three functions including: cmd_expand, cmd_emboss and
> >> cmd_engrave.
> 
> >> Apparently writing a negative integer to the buffer can trigger the
> >> overflow (Minus sign needs an extra byte).
> 
> > https://bugs.debian.org/849705
> 
> >>> I guess that you can just add a package patch to increate the str[] buffer
> >>> size, something like
> >>> 
> >>> - char str[10];
> >>> + char str[15];
> 
> Use CVE-2016-10091 (for all of the 849705 report).

Upstream patch:
http://hg.savannah.gnu.org/hgweb/unrtf/rev/3b16893a6406

Regards,
Salvatore
