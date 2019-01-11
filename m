X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1067" "Thursday" "10" "January" "2019" "21:09:25" "-0500" "Dave" "snoopdave@gmail.com" "<CAF1aazApsagijv4b-Fu=zvL9a6vu4nefc_RZF8cx0NdCP_OUjA@mail.gmail.com>" "42" "[oss-security] [CVE-2018-17198] Server-side Request Forgery (SSRF) and File Enumeration vulnerability in Apache Roller" nil nil nil "1" "2019011102:09:25" "[oss-security] [CVE-2018-17198] Server-side Request Forgery (SSRF) and File Enumeration vulnerability in Apache Roller" (number mark "U       snoopdave@gm Jan 10   42/1067  " thread-indent "\"[oss-security] [CVE-2018-17198] Server-side Request Forgery (SSRF) and File Enumeration vulnerability in Apache Roller\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32250 invoked by uid 550); 11 Jan 2019 10:47:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9377 invoked from network); 11 Jan 2019 02:09:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=DPKd0eDvOAA3bujBj8NjLxGOQUxy+7u7zY79eWO7YDE=;
        b=gor/J+JTw1lBOVhOUPE6e0Z74LFqqPNKRS0AzA5w7s4ATkKW6O2e+3zM4VWDrTuQKn
         tEBWBniJ6gD8JiEfWnX1RT5K2mpTYyXCRqlzGfOIYzkxRuMaKBrp94mJSH4k2at7d5sW
         Dwpa78Y2+quObpIMjGhVhv80eEHwn3Qx+PL6LLP0mM0QG/OqFE7nnFXiSOgKOB/GqGc4
         N2r0dzNH3uNLpiDHh6vgZ5Yeyv/T4nbUoHKTgoxrgZ08tKC83VA9WwQVX8e8p/H1KzZJ
         nAm4owqcbkY69hOFlA5VFQWFnct6v7+2AhD0OOfkQ5Yrb2OSmTCSPklFKmbBrEYgBArP
         S8uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=DPKd0eDvOAA3bujBj8NjLxGOQUxy+7u7zY79eWO7YDE=;
        b=kHO8o/0fI4VI6FFocPhU60Wct0EG5weWbj4LGAxwYkeueMk5uDmA31PkErfPZqVLBe
         BkomQw7rKTCZEpoh750jDSaMecC2+BpPa+e0qMUigMGeo4my9p/+u3KtokuVXdLjYvin
         DgWr4wmr8kyFbC0kcqTMXuFW0K+NKf8FkEhb7fB6XMePc9hkFd9noIJXUpFwYvOsHeP3
         5a/njCMEBb/62aLOAuzdLuDa8SFC/3NIIpPiYXUwBOZoh8jZ8pDMJY2LJCE/vGcgaM1U
         v7tuFTqjGOp7J8JdZsF56MUTKNDjgpGRD7z72NuwxX9vaB/Dh2w1aJIUrVaowvopIRg+
         tyvg==
X-Gm-Message-State: AJcUukdbirviaM6VzZCc8zOL+QoueDR6VvCiaGvrbyWxfMqBT0FJ679M
	MHhfFrJIs75B/TMFHyavhM9jMr9CLknO1Odf6wc=
X-Google-Smtp-Source: ALg8bN5Fwbb+o2rnGhBr+QSbUjQns6PfwxwtszwlhoEuWF0mk+HbPcQXQ38uT6v868yVFBPwb1jDvhdOCCMOLVzWhVI=
X-Received: by 2002:a24:1d1:: with SMTP id 200mr52454itk.146.1547172578809;
 Thu, 10 Jan 2019 18:09:38 -0800 (PST)
MIME-Version: 1.0
From: Dave <snoopdave@gmail.com>
Date: Thu, 10 Jan 2019 21:09:25 -0500
Message-ID: <CAF1aazApsagijv4b-Fu=zvL9a6vu4nefc_RZF8cx0NdCP_OUjA@mail.gmail.com>
To: dev@roller.apache.org, Roller User <user@roller.apache.org>, security@apache.org, 
	Arseniy Sharoglazov <mohemiv@gmail.com>, oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000f75e75057f252faa"
Subject: [oss-security] [CVE-2018-17198] Server-side Request Forgery (SSRF) and File
 Enumeration vulnerability in Apache Roller

--000000000000f75e75057f252faa
Content-Type: text/plain; charset="UTF-8"

Severity: Important

Vendor:
   The Apache Software Foundation

Versions Affected:
   Roller 5.2.1
   Roller 5.2
   The unsupported pre-Roller 5.1 versions may also be affected.

Description:

Roller relies on Java SAX Parser to implement its XML-RPC interface and by
default that parser supports external entities in XML DOCTYPE, which opens
Roller up to SSRF / File Enumeration vulnerability. Note that this
vulnerability exists even if Roller XML-RPC interface is disable via the
Roller web admin UI.

Mitigation:

   There are a couple of ways you can fix this vulnerability:

   1) Upgrade to the latest version of Roller, which is now 5.2.2

   2) Or, edit the Roller web.xml file and comment out the XML-RPC Servlet
mapping as shown below:

<!--
<servlet-mapping>
    <servlet-name>XmlRpcServlet</servlet-name>
    <url-pattern>/roller-services/xmlrpc</url-pattern>
</servlet-mapping>
-->

Credit:

   This issue was discovered by Arseniy Sharoglazov.

--000000000000f75e75057f252faa--
