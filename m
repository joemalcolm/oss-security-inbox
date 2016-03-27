X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["878" "Sunday" "27" "March" "2016" "13:39:07" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20160327113907.GA4476@eldamar.local>" "30" "Re: [oss-security] CVE Request: pcre: Segmentation fault on certain input to regular expressions with nested alternatives when JIT is used" "^Cc:" nil nil "3" "2016032711:39:07" "[oss-security] CVE Request: pcre: Segmentation fault on certain input to regular expressions with nested alternatives when JIT is used" (number mark "        carnil@debia Mar 27   30/878   " thread-indent "\"Re: [oss-security] CVE Request: pcre: Segmentation fault on certain input to regular expressions with nested alternatives when JIT is used\"\n") "<20160326072555.GA8119@eldamar.local>" ("<20160326072555.GA8119@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28015 invoked by uid 550); 27 Mar 2016 11:39:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27997 invoked from network); 27 Mar 2016 11:39:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=rWWc/tiucD/KD59PmjDRoup3PhcZY0Am1mgpfm/LiIw=;
        b=JFJCux+OGeeHsf2eSYJr/xjzSjbc4TMq/I61G85IT/npSzYSWC+q3k01PzQqsEFrOQ
         lbTyrLF9mpGJRibdZ4/CHHumIHj2v3/g1BWEwkmb0fZHS7Y65EC79bRNtPAqUAToSXqs
         pV/50JTiaMM3IbmdpzqFPDbcuKxzp0ze58wZ0Qz45w0id7Ts/if2EkmLayjQvpuc7kVF
         tCrqY0snehd61JR6mIYVJwnJcy6eU2sJkU5rVvvf/C3PKbKv92dDpzJSzdZufLHSLHK+
         TbynC/BexA3ey+REgIYcnnkrGNn69fAQoKSu/mVPX7y5RZbCwp3GAPLTUnobe81d+ZZA
         y2JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=rWWc/tiucD/KD59PmjDRoup3PhcZY0Am1mgpfm/LiIw=;
        b=H4d4MlWRIvnHdYh64PC9oopy/snqPFanDtlw3U62g7X14RxYwblAjWGWhsc85nRw4O
         XoCWiBtbF7YvfyvUHXboK3FFSAoFiw8P47pGTlb2iI8qEkI++dXEyxnB3Q9xuzRB6VeR
         SX4LpH4O6/BEnFZNb+nzbYQeZuZXAnnKALsjy+z6dy6JMgsPTcFeTbw6Wq6YfbJa4SDF
         bhhx81x4qYjf7ciYmbP6kztY0V9/4sesOGYADNFK3K2AObifNuZXczQT9SrpM1326uW4
         veRGYKH5je8ZV3OeGjviUJ0BDD8wYKRdNld/IfiuoK+W2VzvT4BxxqLfMd3O04XEDT14
         CNvg==
X-Gm-Message-State: AD7BkJJrY8ZY1VPC8HCh5cwcHYk0v3IX/SZ85QAex6lfaovKlLj9tH4fe1Ptkxc61oJF7g==
X-Received: by 10.194.22.97 with SMTP id c1mr23762057wjf.19.1459078751441;
        Sun, 27 Mar 2016 04:39:11 -0700 (PDT)
Message-ID: <20160327113907.GA4476@eldamar.local>
References: <20160326072555.GA8119@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160326072555.GA8119@eldamar.local>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: CVE Assignments MITRE <cve-assign@mitre.org>
Date: Sun, 27 Mar 2016 13:39:07 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: Re: [oss-security] CVE Request: pcre: Segmentation fault on certain
 input to regular expressions with nested alternatives when JIT is used
To: oss-security@lists.openwall.com

Hi,

On Sat, Mar 26, 2016 at 08:25:55AM +0100, Salvatore Bonaccorso wrote:
> Hi
> 
> In Debian the following issue was reported (test case contained)
> 
> https://bugs.debian.org/819050
> 
> 
> On certain input when processed for regular expressions with nested
> alternatives and JIT is used, pcre3 can segfault, affecting in this
> case suricata leading to at least a denial of service.
> 
> The problem was addressed upstream with commit:
> http://vcs.pcre.org/pcre?view=revision&revision=1475
> 
> Can you assign a CVE for this issue?

Additional information for this request: The issue seems to have been
introduced with http://vcs.pcre.org/pcre?view=revision&revision=1434
in 8.35.

Note that upstream of suricata tracks the issue in suricata in
conjunction with pcre 8.35 with
https://redmine.openinfosecfoundation.org/issues/1693
to issue a warning.

Regards,
Salvatore
