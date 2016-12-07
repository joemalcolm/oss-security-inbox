X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["626" "Wednesday" "7" "December" "2016" "11:29:30" "+0800" "haojun hou" "haojunhou@gmail.com" "<CAF5d3DB-uNzML+3Gd0tUgB3-vRG1NHdtqzBm8h42TV0r8tUDZw@mail.gmail.com>" "19" "[oss-security] CVE request -BigTree CMS 4.2.13 Extension Form Builder Multiple Cross-Site Scripting (XSS)" nil nil nil "12" "2016120703:29:30" "[oss-security] CVE request -BigTree CMS 4.2.13 Extension Form Builder Multiple Cross-Site Scripting (XSS)" (number mark "U       haojunhou@gm Dec  7   19/626   " thread-indent "\"[oss-security] CVE request -BigTree CMS 4.2.13 Extension Form Builder Multiple Cross-Site Scripting (XSS)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15979 invoked by uid 550); 7 Dec 2016 03:36:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11752 invoked from network); 7 Dec 2016 03:29:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=0P9dcxJZ8HRN2wkHfiKWrEhyO6ImYVKT7jwepnmQmiA=;
        b=npSR0M26Zqa3iXnMkzw87AHVXyMFcGVr9CONSQAVJ+GbTvm84mKwzCln1UeHdTMUtg
         TQhKcfwNfI5oTQO9Jq3l+xVqAKmPkjfGQ0tpZ5Hq2kmiNlL3Ai8ShqFcdZgNBd0mrz04
         EcAQYBq0kdm4R/04dISMaVHcn/tY5NGzKoJGmzCaFTIpGTrvusHMiNKLJouFLXOXf4pL
         m0ZOzDo8l4Sa9XVi15UJMcsB7gdv4eChV/cUDb075E5NiGhyfHibzmW+KInnDjjvY7vv
         TDf42ns+KUsxMcXc9C38j9TB+X3SfqC2iovL4GFbw37rhcJLaZh7CGelOJOcgDU9pSVk
         Xfjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=0P9dcxJZ8HRN2wkHfiKWrEhyO6ImYVKT7jwepnmQmiA=;
        b=TJTeOFvy6R/fOYJXY30MktjjlZ4XBsl4b/f/ahFCxfRDMJGNviqNA/YJGoV6C62FME
         0dEh3WCqxLZvLrnAkbI5X/36dcW27QxfGbCRR8V1zHzjOStQTMzu4n81ny1rt0KFAG3x
         MCiyCkcU8O+b9jg/N9jEn/YHIMpneGw5cELRhjowR1ci53MEFIw4qKLBc5otOQOP8i2k
         7YHP4rMryW92ew4b8lkAis9OWqzHG435sc5g3p1ZP63OYsT779HzRsdpI58GNnnAP0Vc
         g7A6/JU1u9HDV6uV4VScEAasgKw9CCzBZ3pzWb00NOR/3Vsaiqgy3M5zzjbDSgdP2GQO
         anRg==
X-Gm-Message-State: AKaTC033RuxQR9Zpdju3P6rW+s8n2bJxG51zUtTCL61/Dmm/aeGASv97ztY5d8rfQ9wVWJjOD/qBduoL5qB/Qw==
X-Received: by 10.31.153.195 with SMTP id b186mr25844900vke.140.1481081371274;
 Tue, 06 Dec 2016 19:29:31 -0800 (PST)
MIME-Version: 1.0
From: haojun hou <haojunhou@gmail.com>
Date: Wed, 7 Dec 2016 11:29:30 +0800
Message-ID: <CAF5d3DB-uNzML+3Gd0tUgB3-vRG1NHdtqzBm8h42TV0r8tUDZw@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: mr@timbuckingham.com
Content-Type: multipart/alternative; boundary=001a1141d5b804b4860543092198
Subject: [oss-security] CVE request -BigTree CMS 4.2.13 Extension Form Builder
 Multiple Cross-Site Scripting (XSS)

--001a1141d5b804b4860543092198
Content-Type: text/plain; charset=UTF-8

I reported multiple reflected cross-site scripting vulnerabilities in
BigTree CMS Extension Form Builder several days ago. Please assign CVEs if
you think they are suitable for identifiers.Thanks.

Affected version: BigTree CMS 4.2.13, From Builder 1.1

Reported by Tim Buckingham in
*https://github.com/bigtreecms/BigTree-CMS/issues/265
<https://github.com/bigtreecms/BigTree-CMS/issues/265>*

Fixed in:
https://github.com/Fastspot/bigtree-form-builder/commit/06fde0cc67ff121b212715031e12574f50970fcd

Thanks & Regards

--001a1141d5b804b4860543092198--
