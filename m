X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1130" "Tuesday" "15" "October" "2019" "23:28:44" "-0700" "Vishwas Babu" "vishwasbabuaj@gmail.com" "<CACqpLw+Qygv_-C86OPUeA=7hs00MLPZVx3b-i+cOJKKAFk1MDg@mail.gmail.com>" "41" "[oss-security] Fwd: [CVE-2016-4977] Apache Fineract remote code execution vulnerabilities fixed in v1.3.0" nil nil nil "10" "2019101606:28:44" "[oss-security] Fwd: [CVE-2016-4977] Apache Fineract remote code execution vulnerabilities fixed in v1.3.0" (number mark "U       vishwasbabua Oct 15   41/1130  " thread-indent "\"[oss-security] Fwd: [CVE-2016-4977] Apache Fineract remote code execution vulnerabilities fixed in v1.3.0\"\n") "<CACqpLwJGBRp9cpyhVwxvc0SSrTbUoDxAr+YnywXjj=BRFhiyPw@mail.gmail.com>" ("<CACqpLwJGBRp9cpyhVwxvc0SSrTbUoDxAr+YnywXjj=BRFhiyPw@mail.gmail.com>") nil nil nil nil nil nil nil "[oss-security] Fwd: [CVE-2016-4977] Apache Fineract remote code execution vulnerabilities fixed in v1.3.0" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3903 invoked by uid 550); 16 Oct 2019 09:48:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10100 invoked from network); 16 Oct 2019 06:29:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=cAofDV0h6c2RzuPFEGwUMewCWCQXb1PThkWxwCE7hTw=;
        b=mvBXsWDjQd9qh9VYYOK2z1rjnA/Ax37ObhhdEKvyNmNphDH8NgBtZz8RadtX00lW3F
         5Aao1W/O6IbnGK1yM7BQvuA/ohesJpYahK0Y0nn0H3BTOZmyURVeC275Y5d1Cf0H4s8m
         +PZC2WEu5XJXU3q1+f24DYKYcs0BnXr6JJrVX5zavPM9Luu3tD937Lic01Aewr82fL1Z
         X7eXE9C9sogFfUjvwEHMETFyrmGca3n/H0Il9TPs5bJ35nVImDURq8BusWunpi9Z9JXA
         EErqYhrBUpZK0po3+F5MvPvlLdgwp33oCSyBS2t6T2k69KJIXfiSHjyJ4yBrDPuo2pTq
         8wBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=cAofDV0h6c2RzuPFEGwUMewCWCQXb1PThkWxwCE7hTw=;
        b=bTdv0mZ5DPQojbbBBzwMQdZ/xZRXBdHnMAu2VfnpdHuWjmcAL2jY9fvT/4YieWDXhU
         33KLzMYRBdsHkIyYrQzcBlH3sFyulUu1di7JhmN1AqxM+35sFUiJ/lljU7EWX84cD9F7
         8u6GSxQch/Vz5XmR1swSnft/0F2xT4aToQE9kc/h4l9Fc5cV/gV8vUF7vddLoWnS83KK
         KTYeLHDHV3xesg1lLC+FV8jvDoeG5D+Pa5RSPjubUiLjeOKsgAOV3fxC5zTMSnz5ghYc
         SG59kaUhYLbh+VwTbQTtRIgkVH78+95V1yidn8GTKMnIF6JipnDO39G5FoYGdwcaVQ3G
         0iKw==
X-Gm-Message-State: APjAAAU7xZz3b//d4n2teeQ+UWtFURywcMSMtJ34IBmauGhcT38mqAlJ
	5bkBH/e2PV6+yuq9rFk5j76djMDHro0A/SKcCrYFwgXY
X-Google-Smtp-Source: APXvYqxbe5d8+LYytUEiGv5EsNLrMnBfWWtQ/sjNmdAR3LSKOfhIqH4eDvk4w+pPggTYpz7qDCPLTDNK8rb3DMyda0E=
X-Received: by 2002:a92:460e:: with SMTP id t14mr10775541ila.139.1571207335387;
 Tue, 15 Oct 2019 23:28:55 -0700 (PDT)
MIME-Version: 1.0
References: <CACqpLwJGBRp9cpyhVwxvc0SSrTbUoDxAr+YnywXjj=BRFhiyPw@mail.gmail.com>
In-Reply-To: <CACqpLwJGBRp9cpyhVwxvc0SSrTbUoDxAr+YnywXjj=BRFhiyPw@mail.gmail.com>
From: Vishwas Babu <vishwasbabuaj@gmail.com>
Date: Tue, 15 Oct 2019 23:28:44 -0700
Message-ID: <CACqpLw+Qygv_-C86OPUeA=7hs00MLPZVx3b-i+cOJKKAFk1MDg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000182849059501375c"
Subject: [oss-security] Fwd: [CVE-2016-4977] Apache Fineract remote code execution
 vulnerabilities fixed in v1.3.0

--000000000000182849059501375c
Content-Type: text/plain; charset="UTF-8"

Hello,

As suggested on https://apache.org/security/committers.html, forwarding
the below:


---------- Forwarded message ---------
From: Vishwas Babu (Apache) <vishwasbabu@apache.org>
Date: Tue, 15 Oct 2019 at 23:25
Subject: [CVE-2016-4977] Apache Fineract remote code execution
vulnerabilities fixed in v1.3.0
To: <dev@fineract.apache.org>, <announce@apache.org>
Cc: <extranewbugs@gmail.com>, <security@fineract.apache.org>


Hello,

The Apache Fineract project would like to hereby disclose that our 1.3.0

release includes a fix for CVE-2016-4977 : A known vulnerability in spring

security upstream dependencies allowed malicious users to trigger remote code

execution. See https://nvd.nist.gov/vuln/detail/CVE-2016-4977 for details of

the upstream CVE.

We would like to thank Roberto (extranewbugs@gmail.com) for reporting

this issue and the Apache Security team for their assistance.

Additional details at
https://cwiki.apache.org/confluence/display/FINERACT/Apache+Fineract+Security+Report.

Regards,
Vishwas

--000000000000182849059501375c--
