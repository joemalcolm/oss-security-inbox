X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1370" "Sunday" "17" "November" "2019" "13:25:00" "-0500" "Mike Dalessio" "mike.dalessio@gmail.com" "<CAGJbjKbpTD1JgrwKo_oNffry77m-XNn1_QGsZvUQWe_nG_3upA@mail.gmail.com>" "47" "[oss-security] Nokogiri security update v1.10.5" nil nil nil "11" "2019111718:25:00" "[oss-security] Nokogiri security update v1.10.5" (number mark "U       mike.dalessi Nov 17   47/1370  " thread-indent "\"[oss-security] Nokogiri security update v1.10.5\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Nokogiri security update v1.10.5" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11428 invoked by uid 550); 17 Nov 2019 18:51:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1995 invoked from network); 17 Nov 2019 18:25:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=L3XDO3tZxaATUp5DJ8cLZSniS/2r1v7p8v7ngPOy4cM=;
        b=FQ41rp0y2H9kKlP1PgzCHbB6Rnrs14A/cGbs11drvSdg32arobGPv13QiiHb/6po1P
         cjfcGOsAj81hQ5VYRz85c0aUt7mDHHETmwonZ/easQlhyR03SiWlLBERX26eqrcOIYoZ
         Chd6anIR6x2iv9FXyzumZ3hKPolLAlt81FFiPpyuXfUdTvHjnLMqlww/58G5dxGrp/V6
         yxEU6iU6+0dnZ+P4j4L647sSx1evX3eYJCj7T4Qr4CxLcTS08ZB63ZJpMxIo8lfd3prX
         +RK8na9QWDNAV1sqM/CA8rLBoW6TpQfYOVYurvDIDT7gG/P0n19rqM9PAnPsMXDpEu9G
         4c6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=L3XDO3tZxaATUp5DJ8cLZSniS/2r1v7p8v7ngPOy4cM=;
        b=fAdxXdkbj5j4C2j88N0jq6ZDxFmaZhb5Zqggt4hbUmOqX/XYKOCIF64uOfPvoyb07x
         +J3sWU3MnUdNaZECEiGu8I/2gD3OXkyMPpyS6G12d/XTjLecNbfFGDvPglGmvif8inhx
         iYsb7F8mYASviAIDVA8sH4OLJEhV1uYGXZHjmr0kFw7Nu8fWHseK5YxC7dvjHoLcwkie
         +T5oO6OGFROeiM+ldBOGIpAYNFYvlpqXKZaphJUa+QCu8LbRYf/Zw3cRBRUaASYnPW6B
         1z1oXTktcfq/mBqnwrXDADdURdJGTkpQ5lCz+SD0DI5J2ClkmOKB3V3umlE3ITBXJlUY
         mOxg==
X-Gm-Message-State: APjAAAU1jYSSN06o/hRXKbaNvGOanUinFpcXPLbeOvPUFRo7ciZFpaNC
	8OzRJsI9io+2FTu/dv17pP2OmAeWDqhYN6FXBg4=
X-Google-Smtp-Source: APXvYqwwf8QbgQGizDOw8Lc3p+h/7SlojBJcJhhlmPDQDctppehqibyWcqKf+UIPB3H0aHj2agxOtdyjzpVS1emED+Q=
X-Received: by 2002:aca:a9d4:: with SMTP id s203mr16428328oie.146.1574015111441;
 Sun, 17 Nov 2019 10:25:11 -0800 (PST)
MIME-Version: 1.0
From: Mike Dalessio <mike.dalessio@gmail.com>
Date: Sun, 17 Nov 2019 13:25:00 -0500
Message-ID: <CAGJbjKbpTD1JgrwKo_oNffry77m-XNn1_QGsZvUQWe_nG_3upA@mail.gmail.com>
To: nokogiri-talk <nokogiri-talk@googlegroups.com>, ruby-talk <ruby-talk@ruby-lang.org>, 
	ruby-security-ann@googlegroups.com, oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000096b34c05978ef302"
Subject: [oss-security] Nokogiri security update v1.10.5

--00000000000096b34c05978ef302
Content-Type: text/plain; charset="UTF-8"

Nokogiri v1.10.5 was released on 2019-10-31.

This is a security release.

Maintainers realized, after the release of v1.10.5, that it addresses CVEs
in upstream libxslt rated as "Priority: Medium" and "Priority: Low" by
Canonical, and "NVD Severity: Medium" by Debian. More details are available
below. More details are available below.

If you're using your distro's system libraries, rather than Nokogiri's
vendored libraries, there's no security need to upgrade at this time,
though you may want to check with your distro whether they've patched this
(Canonical has patched Ubuntu packages). Note that libxslt 1.1.34 addresses
these vulnerabilities.

Full details about the security update are available in Github Issue #1943 (
https://github.com/sparklemotion/nokogiri/issues/1943).

Affects: MRI users of Nokogiri's vendored libraries in Nokogiri <= v1.10.4

Advice: Upgrade to Nokogiri v1.10.5 or later

---

## 1.10.5 / 2019-10-31

### Security

[MRI] Vendored libxslt upgraded to v1.1.34 which addresses three CVEs for
libxslt:

* CVE-2019-13117
* CVE-2019-13118
* CVE-2019-18197

More details are available at #1943.


### Dependencies

* [MRI] vendored libxml2 is updated from 2.9.9 to 2.9.10
* [MRI] vendored libxslt is updated from 1.1.33 to 1.1.34

--00000000000096b34c05978ef302--
