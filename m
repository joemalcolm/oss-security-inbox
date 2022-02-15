X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1220" "Tuesday" "15" "February" "2022" "13:53:06" "+0100" "Bartek Plotka" "bartek@prometheus.io" nil "32" "[oss-security] CVE-2022-21698: HTTP method DOS; Prometheus client_golang <1.11.1 affected; Other web servers might be affected too" nil nil nil "2" nil nil (number mark "U       bartek@prome Feb 15   32/1220  " thread-indent "\"[oss-security] CVE-2022-21698: HTTP method DOS; Prometheus client_golang <1.11.1 affected; Other web servers might be affected too\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2022-21698: HTTP method DOS; Prometheus client_golang <1.11.1 affected; Other web servers might be affected too" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5217 invoked by uid 550); 15 Feb 2022 13:52:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28425 invoked from network); 15 Feb 2022 12:53:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=prometheus-io.20210112.gappssmtp.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=MjieZWsoFFBDTOLJ5X8T1DQKUfQtowFQyP03Hej3T5g=;
        b=YCPdqOWcHtRdS6CvuQowYSd9y177k7h0gS63miPfW0IededqVGLkdVyhtBQVy0DdO/
         yixwsaJ++TUyJlNUjT6WCPxWHPdrTHcXniU8iy7XgkRaVB1g4V4VWnmpjG1P3LghEFf6
         vnTvzufTOJ99kRn3gee8qiUC0mvGjNW5dAQgIC6FVJJ72kL/doZ5KXVitgW2pO2VvM+N
         lSgBtCsHIRhGHfipXzyflYil49kimLygWbUoKKuEsILg+/d/WX7GBTc2TyLPGfnIvuCv
         yjZ2NJjgRTQWlzQew+NJwbFcgYj1qaq4rRRCaPZt8W4hvuP+yQEQXtZJxp0swLicW4SO
         Eggw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=MjieZWsoFFBDTOLJ5X8T1DQKUfQtowFQyP03Hej3T5g=;
        b=lAlH0iYNUs+WKrbkULjMCYwlA6GB9whRrEhl7AKggGztb+nP99Kx50/eqQt8ZxhHoX
         0NbwuxiykwGQ6diXEj6ZNeN8T1TmzRqVGpG4KUppNOZoq0qugQ1H7FG3oAINSnFiFdbA
         GnD6DxAD8iHP5wWM/Evot/cMpL/DExqPql21ty/12ExEkwO4iK6iZ604edQDA+/37TXP
         nASQQkTAA3weDV1YcMJxfqxdGnLgXpCsrxYD1qQ5jwGQ81PtA/TEs+2aouY1wQkxzMcV
         mtFy2rz2jgCsDAhU218ba7GsOJi02ATvQRft861Oysk2lMvugJFhbwz15GmEQuvj3rS/
         VdgA==
X-Gm-Message-State: AOAM5310XpickD63HxUViNeRAT9cxK0rvekcQN3FJxsX7q17bW6+T4mK
	52ohCOok1EYmj9RF2/KQ/DQsBN55cBYhHw/dtu3PPk0AIJwQPg==
X-Google-Smtp-Source: ABdhPJyoyWluPw2PnXEB3X5wp0C/VrSaPLGOghYq9kzzyjDlY2TJVaZttUR1Zqa1mRkMKcjw9BCfDLFhu4hDGStTwEE=
X-Received: by 2002:ac5:c5c7:: with SMTP id g7mr1284987vkl.13.1644929597298;
 Tue, 15 Feb 2022 04:53:17 -0800 (PST)
MIME-Version: 1.0
From: Bartek Plotka <bartek@prometheus.io>
Date: Tue, 15 Feb 2022 13:53:06 +0100
Message-ID: <CALSHWeDjhVEkJ76sRzqX56ToyxpLF+BsYTHneQ7iQ8H=0exeoA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000053f01605d80e04c0"
Subject: [oss-security] CVE-2022-21698: HTTP method DOS; Prometheus client_golang <1.11.1
 affected; Other web servers might be affected too

--00000000000053f01605d80e04c0
Content-Type: text/plain; charset="UTF-8"

Hi,

Prometheus Team just published CVE-2022-21698
<https://github.com/prometheus/client_golang/security/advisories/GHSA-cg3q-j54f-5p7p>
that
relates to unbounded cardinality of HTTP method, which is not validated by
some HTTP server implementations (including Golang one). See the GitHub
security advisory
<https://github.com/prometheus/client_golang/security/advisories/GHSA-cg3q-j54f-5p7p>
for
more details on potential attack vectors, characteristics and workarounds.

Prometheus client_golang before 1.11.1 was affected. Newer versions are
patched. See the announcement.
<https://groups.google.com/g/prometheus-announce/c/zlCm4A7FwZU>

Note however that many metric implementations that gather metrics about
HTTP requests can be affected, even without using client_golang or using
different programming languages (!). We notified some common open-source
web-servers (including Kubernetes) projects and some of them were affected
(without client_golang) and patched subsequently.

We would like to thank Prometheus contributor David <https://github.com/dgl>,
for reporting this.

Thanks,
The Prometheus Team

--00000000000053f01605d80e04c0--
