X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["73" "Friday" "29" "April" "2016" "09:48:40" "+0200" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdQ2Au8Ewz4rB5ju_KZLCLTFmfJDDoVL-gb5-Mo-3h+5Rg@mail.gmail.com>" "1" "[oss-security] Re: CVE request: Mplayer/Mencoder integer overflow parsing gif files" nil nil nil "4" "2016042907:48:40" "[oss-security] Re: CVE request: Mplayer/Mencoder integer overflow parsing gif files" (number mark "U       gustavo.grie Apr 29    1/73    " thread-indent "\"[oss-security] Re: CVE request: Mplayer/Mencoder integer overflow parsing gif files\"\n") "<CACn5sdTKJd7hEo=YmpPmpuB76XDumiMORWJXGwiacq83_aUPmg@mail.gmail.com>" ("<CACn5sdTKJd7hEo=YmpPmpuB76XDumiMORWJXGwiacq83_aUPmg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12053 invoked by uid 550); 29 Apr 2016 07:48:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12035 invoked from network); 29 Apr 2016 07:48:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to;
        bh=HKMfGZ6gPzAzbxswZjcQX2mEgkppKgdpEZPbdvcaQT0=;
        b=oM2/bIXIRf3WRQFMXO6C4+RDvJahTwL94DVJ2rQDX1ZWq1dPHbjOp7ZDMMFw1KKJF3
         wjXzB7B+HvNTFo6rGR80TewTBWOUC791FyKHhKsZWUzSQ/v8A6OUV24J9ofFWyyJCEMo
         AKRiOgOS20CCnU8xuXi9JoI6e3e+1ptKefOK1kCMFwinNE5T73iWpmrV+CGOmgL54qAb
         hH0n3/XEH4EadvPXTmkcWocJCkXhH7qFIVN+aq4PsLpU/KXC/Af1mmzIcCh+S+GVFtww
         pYU1I2wgAESt0ywJ4ObAWjnG3XmVmJAyQY6Y3+0Q3AkkyRV5aNDte20KfshqmlAKR4+S
         dhOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to;
        bh=HKMfGZ6gPzAzbxswZjcQX2mEgkppKgdpEZPbdvcaQT0=;
        b=j8exMsoGIi5eVfS7RTqV5VCJuV++C0JTOjrlyJq5eXEZDWdDMY/YRkYNmCx3u63KM4
         oNALz8a2jTJqk8cMmzNrXSIZeoc8kN/9VpEGMeGwGJk17xejHvppAk/hXHaOgnSQvN6d
         VyKPd4OfyOxZenTPqBZRB9j8YoP+KAHiT0wX2nqq26gyLXXn+3MilZ/1t6VS9+miHrl+
         /bqu7aw8PJVvFLv9SUF6+IPLRLxDLW9ZREgC5hrYRO/yL7uC6Bv44M+JinHxOlzPCPYF
         JwtqAcgnOEIYaC0OGIg5XzTfD0U81OBsGhteCgFo1qCy4uPTtC6cH0SyT/3bFjarHNC8
         kM6w==
X-Gm-Message-State: AOPr4FXeWQVQza/KkHEMddCN6CkAAkblw5fm/YHbxZ6fcB4yl8oP8mpkyR8C6ndafDdydHd9JXd1xK0pjexeiA==
MIME-Version: 1.0
X-Received: by 10.25.163.211 with SMTP id m202mr6892780lfe.73.1461916120546;
 Fri, 29 Apr 2016 00:48:40 -0700 (PDT)
In-Reply-To: <CACn5sdTKJd7hEo=YmpPmpuB76XDumiMORWJXGwiacq83_aUPmg@mail.gmail.com>
References: <CACn5sdTKJd7hEo=YmpPmpuB76XDumiMORWJXGwiacq83_aUPmg@mail.gmail.com>
Date: Fri, 29 Apr 2016 09:48:40 +0200
Message-ID: <CACn5sdQ2Au8Ewz4rB5ju_KZLCLTFmfJDDoVL-gb5-Mo-3h+5Rg@mail.gmail.com>
From: Gustavo Grieco <gustavo.grieco@gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] Re: CVE request: Mplayer/Mencoder integer overflow parsing gif files

Ups, the correct link is this one: https://trac.mplayerhq.hu/ticket/2295
