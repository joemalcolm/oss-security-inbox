X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1178" "Friday" "8" "July" "2016" "15:39:03" "+0200" "Lior Kaplan" "kaplanlior@gmail.com" "<CAEsznC46-6Z7vLuP2FDuNVATcOkGV8jERu8q059AFaP=TjusPA@mail.gmail.com>" "31" "[oss-security] On anonymous CVE assignments" "^Cc:" nil nil "7" "2016070813:39:03" "[oss-security] On anonymous CVE assignments" (number mark "        kaplanlior@g Jul  8   31/1178  " thread-indent "\"[oss-security] On anonymous CVE assignments\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21944 invoked by uid 550); 8 Jul 2016 13:39:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21911 invoked from network); 8 Jul 2016 13:39:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=l3bV9GalfiYK7QAV3RATmyF8MnNf7QCmg6wKNiEndkA=;
        b=IygUSSV1onkSp/iVLV3F32V4TqaozzU/Sww+lc5hswwGxbGn7NpmD9XJoJmMZmxxUv
         46t3s5bsq374ubs2t+z96+grct4dXHYmmDZPWCdcUlS++7tIZKPCsyLG9Ubkg0ZA/tms
         6Ql/d6e039GIU8DGgmZXRQr7na0hg5VeTijtnUcH5PgplQtg7zxmjyaQslsk6osFxk2t
         owfQLzRcRy85kKGt7vv/3M+cHdJpOmIlKnsq7W8lXG/RfhnWLCIuWO+1OSkY2VU9YTpq
         5kwNSlBVzrHyJTCZaSzeC+veOyZHdoUFUBQDqqT/LiW9yR+RmJuZRIsIwKt3f3id46FR
         cDKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=l3bV9GalfiYK7QAV3RATmyF8MnNf7QCmg6wKNiEndkA=;
        b=P05FGkRUdbXWbRrEftVW0S+i4IWIiFzsUudgK8EJxLyt9irrNC5E2lm3KVn38QRc0n
         MmtU5wUducfVIFDbOiP9WNkv2Z/j4exByfgkx6moNYmnByqkyOk7+/DQLm4mWbJTk0SE
         nkvcrWJN+GI97s4gQwtGuy8GAkUw+Wea6/o7SW8BZ+fAJcd2JOY2Reiqqijt9Aqp/T1i
         kf4cmGsww2tQhtGG6Dmj0z4D29y0KaFr9J26yRnJCIj144rZZRiYYM0MHg4mQF7FHGKk
         jQUxbgulMj8PtWFdlxyGU5VsV70IdHyO1LjGqcVSZvJ8uf0cGZUPu3n8hRMfOMZOO53o
         l+kQ==
X-Gm-Message-State: ALyK8tJvzomNqSPeABax6mIxsixCT1SYl4A7ejrLodPfd4KD7hjvQw3yCbfiHiypSvrFM80VISoxkn+WdSjKwg==
X-Received: by 10.36.209.196 with SMTP id w187mr3429911itg.2.1467985143736;
 Fri, 08 Jul 2016 06:39:03 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAEsznC46-6Z7vLuP2FDuNVATcOkGV8jERu8q059AFaP=TjusPA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=94eb2c0b146e0731fb05371fed68
Cc: oss-security@lists.openwall.com
Date: Fri, 8 Jul 2016 15:39:03 +0200
From: Lior Kaplan <kaplanlior@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] On anonymous CVE assignments
To: cve-assign@mitre.org

--94eb2c0b146e0731fb05371fed68
Content-Type: text/plain; charset=UTF-8

Hi,

I'm sorry for sending this to the cve-assign mail, but I think this is
important to how CVE assignment process should work and the importance of
cooperating with the upstream projects.

In the past year+ I've been dealing with CVE assignment and the PHP
project. During this period we managed to work closer with the Linux
distributions and also to improve the internal process regarding CVE
requests.

I've blogged about a recent problem I encountered with is request and
assignment of CVE for issues almost a year old without any public info
about this ("anonymous requests"). Meaning that me, being part of upstream
(incl. the security team), don't even know we've got CVE assigned and can
update things on our side (and also other relevant upstreams such as libgd).

More details at
https://liorkaplan.wordpress.com/2016/07/07/anonymous-cve-requests/

I'll be happy to be referred to the right forum to further discuss this.
Till then, I hope you'll take these remakes into consideration, so the
whole eco system could work more smoothly.

Kaplan
The PHP project

--94eb2c0b146e0731fb05371fed68--
