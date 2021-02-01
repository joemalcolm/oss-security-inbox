X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["938" "Monday" "1" "February" "2021" "11:07:59" "-0500" "Brian Demers" "bdemers@apache.org" "<CAH9eYVpH-8Trnfzi_9PznBjBt8KNJf4ySGPtAqT308Afzm2wpQ@mail.gmail.com>" "31" "[oss-security] [CVE-2020-17523] Apache Shiro authentication bypass" nil nil nil "2" "2021020116:07:59" "[oss-security] [CVE-2020-17523] Apache Shiro authentication bypass" (number mark "U       bdemers@apac Feb  1   31/938   " thread-indent "\"[oss-security] [CVE-2020-17523] Apache Shiro authentication bypass\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2020-17523] Apache Shiro authentication bypass" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11599 invoked by uid 550); 1 Feb 2021 16:32:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3570 invoked from network); 1 Feb 2021 16:08:34 -0000
X-Gm-Message-State: AOAM530nzE4RaWv+N2rj912VaXG0s8TvwbfEo2XeLe/+F8svjPUIgFPE
	icYkdqYgxeONjEY79yq2RYWy8PusTqKqGCAxFJA=
X-Google-Smtp-Source: ABdhPJxlKVHEtjFiH8Q65FfRXBtLuyFiWtZxH3qKsOCbilYWiY32XonJKJwrv29ADUCqIT6C8HJwet7VxuOqymzDlHA=
X-Received: by 2002:a05:6402:3122:: with SMTP id dd2mr19611767edb.262.1612195690875;
 Mon, 01 Feb 2021 08:08:10 -0800 (PST)
MIME-Version: 1.0
From: Brian Demers <bdemers@apache.org>
Date: Mon, 1 Feb 2021 11:07:59 -0500
X-Gmail-Original-Message-ID: <CAH9eYVpH-8Trnfzi_9PznBjBt8KNJf4ySGPtAqT308Afzm2wpQ@mail.gmail.com>
Message-ID: <CAH9eYVpH-8Trnfzi_9PznBjBt8KNJf4ySGPtAqT308Afzm2wpQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000076a64205ba488f12"
Subject: [oss-security] [CVE-2020-17523] Apache Shiro authentication bypass

--00000000000076a64205ba488f12
Content-Type: text/plain; charset="UTF-8"

The Shiro team is pleased to announce the release of Apache Shiro version
1.7.1.

This security release contains 1 fix since the 1.7.0 release and is
available for Download now [1].

Bug
    [SHIRO-797] - Shiro 1.7.0 is lower than using springboot version
2.0.7 dependency error

CVE-2020-17523:
    Apache Shiro before 1.7.1, when using Apache Shiro with Spring, a
specially crafted HTTP request may cause an authentication bypass.

The Apache Shiro team thanks differ from the Zorelworld iLab team for
reporting this issue!

Release binaries (.jars) are also available through Maven Central and
source bundles through Apache distribution mirrors.

For more information on Shiro, please read the documentation [2].

-The Apache Shiro Team

[1] http://shiro.apache.org/download.html
[2] http://shiro.apache.org/documentation.html

--00000000000076a64205ba488f12--
