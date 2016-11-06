X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["754" "Sunday" "6" "November" "2016" "21:35:24" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20161106203524.hkl2ketyczothiuk@eldamar.local>" "24" "[oss-security] Clarification about CVE-2016-1841 for libxslt" nil nil nil "11" "2016110620:35:24" "[oss-security] Clarification about CVE-2016-1841 for libxslt" (number mark "U       carnil@debia Nov  6   24/754   " thread-indent "\"[oss-security] Clarification about CVE-2016-1841 for libxslt\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31884 invoked by uid 550); 6 Nov 2016 20:35:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31860 invoked from network); 6 Nov 2016 20:35:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=rFweSlsBbDWznVhaFPIDVt62DJ6zcBmWgENmdnZNdYo=;
        b=FzqBadYFbXq1srY3QV3mo5Vz8rUe4QLhySyzdaes1wK1LfsIMpHdym45iIvxBJyIgJ
         WPxins58dKBSGYSu5to64DsRiRVqnU5mIbanccL7+RJzDpzynWU4uVHPDoHt/wpe5PhG
         9jHo1h9onGwrjDtVmUmmqrKF61/8kOuuTEuj9QenIsRJeHIjKhiIn/33sMQNlb3PLFUp
         YOmigQPTA5X7X+QBdR9QrZm4H1UzfeUNvJtZOzZkFHwh3tKBnfGO9sKMTp+re/gnCRNL
         a/WjGnjX7XSsU0OkrejBgQlc7r/q5GUeah2j3Fw3vp6vXSRQSvFgNwPfnlPpOwOyu6k4
         ihFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=rFweSlsBbDWznVhaFPIDVt62DJ6zcBmWgENmdnZNdYo=;
        b=AoIImSp1A6n6k4Zzl0yJ2kYzZkFFsQqBoka8bZkV8MQ7OIRaJSJswI3wesnv/6JwvD
         egtfnp/2zxihKK5USIR1DGQNAg1oyz2q46SoXVHbBsyOTCLryqdqjfsPowxywzEBlchX
         CIJ+KYgrJwfJzFb8x2cQP3pAUXXeQsVdGZp+GRr9OoUnQJTdUWdXIG2RcDRmxT/nlX9S
         JAcLej0HulmUikM05MFsXhOcN6GdR9hOJyY2soBjdL8MZknOXcNHEAPcJhJIDl1J3BGX
         0jaze1rlhksjpKgkWWKKuBmuOqMON3gyOk7nrtQ3TG9Cf7rBaajJ4sQ/ojV42BJ1su3h
         7qLA==
X-Gm-Message-State: ABUngvdUcO1irYv01j5RiMOv3tusch3qWRJsdvX8vJhUW69RnKLJBx0iyFbTDeTMiYGy3A==
X-Received: by 10.194.178.100 with SMTP id cx4mr3375487wjc.15.1478464526202;
        Sun, 06 Nov 2016 12:35:26 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Sun, 6 Nov 2016 21:35:24 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Cc: CVE Assignments MITRE <cve-assign@mitre.org>
Message-ID: <20161106203524.hkl2ketyczothiuk@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20161014 (1.7.1)
Subject: [oss-security] Clarification about CVE-2016-1841 for libxslt

Hi

CVE-2016-1841 is assigned for libxslt, and the CVE description from
MITRE states:

> libxslt, as used in Apple iOS before 9.3.2, OS X before 10.11.5,
> tvOS before 9.2.1, and watchOS before 2.2.1, allows remote attackers
> to execute arbitrary code or cause a denial of service (memory
> corruption) via a crafted web site. 

Following the references from Apple, this seems to be related to an
issue reported by Sebastian Apelt. Recent bug reports and commits
related to issues reported by SEbastian Apelt seem to be:

https://bugzilla.gnome.org/show_bug.cgi?id=758291

with corresponding upstream commit:

https://git.gnome.org/browse/libxslt/commit/?id=fc1ff481fd01e9a65a921c542fed68d8c965e8a3

Is this CVE association correct?

Regards,
Salvatore
