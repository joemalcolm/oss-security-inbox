X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["559" "Monday" "27" "January" "2020" "20:36:19" "+0000" "daniel gaspar" "danielvazgaspar@gmail.com" "<CALSkbjp0m=BbSAVFpiJEHG7=neMvK4sAt7BHndpt-qctDcj9jw@mail.gmail.com>" "28" "[oss-security] [CVE-2020-1932] Apache Incubator Superset user data leak vulnerability" nil nil nil "1" "2020012720:36:19" "[oss-security] [CVE-2020-1932] Apache Incubator Superset user data leak vulnerability" (number mark "U       danielvazgas Jan 27   28/559   " thread-indent "\"[oss-security] [CVE-2020-1932] Apache Incubator Superset user data leak vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2020-1932] Apache Incubator Superset user data leak vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32323 invoked by uid 550); 27 Jan 2020 20:47:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28108 invoked from network); 27 Jan 2020 20:36:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=NqR4y8G10UgtrixLSzrsufV89KPnjneduuxUEFjcRlE=;
        b=GOSsIYDIJe0z1zk3a4ib9MaX6HN3+yQye4q2NYkzqyEqM/HRjDzLi0xvpUcJPe9762
         a7cVp5VMdlHlS5bDR8waUbUFV1ENN+xp0fFnUn8d7aA2haytrxhX8w2ORPv3PU57pfrU
         ZBXN84pA+Bx/IUljwmpC0Vxh/S/+4grFJtXb1lvuGH1fwErOM+u2aa0OKmY+7eyEXr0i
         VM4VtO1r2oEAGDJP7Loo2zCkUXTr1gV6Tgt/rPnJ+QCI60SXSZN2fs7uLxQcLcrMn4rj
         b0uPqPyRrQAjS8TkI70U5qfhu4kOj8iUU6wqgw1FR9IJENADrfUMz5ATA0lCqlBxoAIN
         Txfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=NqR4y8G10UgtrixLSzrsufV89KPnjneduuxUEFjcRlE=;
        b=MMTm8NJHxnh2HugdZdL9fqbBBNd/O33UeETNwTqTyYTkZ8TEMyfNFTD7aBRuq+A4A5
         w3/kLe4iOsgzeMGtNPENotAtm5PDbWmZ6OmSWHAe2fIyrVJkIp9roW7EHGif1/INEFoM
         ruIrXJOfQFO4m9crDwGaN0x56CwVyMUk30ZNZfJ4LO72HsCTjQNfSqWfUqnIQzAXne9A
         huJgTAozSJx1yWrI6bQVotl2uTgHKqPaCTEfQm4cFG9V3KsNOt8WeIORT14JnZISUuGG
         YhlD+rRUkq5K0jsTsg3xRoetqd4PNF61FbHjRjVHUpFzyrvETjOU0CCAKzpN0L1Z9XLq
         3tJg==
X-Gm-Message-State: APjAAAXZ9UFbSWSYvQaTRI0B+A+LPRtCk7RjG7dfxBUxjHIQWTZr68dU
	9+U/TZyxr7PRB4lNwtkYVpS7ELz1xad/nVlCWetsszjXOm0=
X-Google-Smtp-Source: APXvYqwuhGtbeOHt58D5O9dBCwEhD4PfFUqsIZh0L++RCcAHgdSWsfdH1/3omwy8I/Sv1oWSomuPn6Cyb2nyzCqvKXg=
X-Received: by 2002:a67:7987:: with SMTP id u129mr3365918vsc.83.1580157391043;
 Mon, 27 Jan 2020 12:36:31 -0800 (PST)
MIME-Version: 1.0
From: daniel gaspar <danielvazgaspar@gmail.com>
Date: Mon, 27 Jan 2020 20:36:19 +0000
Message-ID: <CALSkbjp0m=BbSAVFpiJEHG7=neMvK4sAt7BHndpt-qctDcj9jw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000fb8198059d250fa4"
Subject: [oss-security] [CVE-2020-1932] Apache Incubator Superset user data leak vulnerability

--000000000000fb8198059d250fa4
Content-Type: text/plain; charset="UTF-8"

Severity: Medium

Vendor:
The Apache Software Foundation

Product:
Apache Incubator Superset

Versions Affected:
0.34.0
0.34.1
0.35.0
0.35.1

Description:
Authenticated Apache Superset users are able to retrieve to retrieve
other users' information,
including hashed passwords, by accessing an unused and undocumented API
endpoint on Apache Superset.

Mitigation:
Superset users with the mentioned affected versions should upgrade to
0.35.2 or higher

--000000000000fb8198059d250fa4--
