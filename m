X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["282" "Tuesday" "10" "August" "2021" "10:48:11" "+0800" "Willem Jiang" "ningjiang@apache.org" nil "10" "[oss-security] CVE-2021-21501: Apache ServiceComb: ServiceComb ServiceCenter Directory Traversal" nil nil nil "8" nil nil (number mark "U       ningjiang@ap Aug 10   10/282   " thread-indent "\"[oss-security] CVE-2021-21501: Apache ServiceComb: ServiceComb ServiceCenter Directory Traversal\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-21501: Apache ServiceComb: ServiceComb ServiceCenter Directory Traversal" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1381 invoked by uid 550); 10 Aug 2021 11:01:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7547 invoked from network); 10 Aug 2021 02:48:37 -0000
X-Gm-Message-State: AOAM533g9BbZN6lHXj4AuWX7o2JAIHzsjknf/J7eFwYkI25VNE15CJfH
	1s3+/e0D/meSHIcNET1N0U0dYS/3W9rKVxVB4H0=
X-Google-Smtp-Source: ABdhPJyRDNl8Hwx/c+DFOQW10r6zhOmNZBD75LSzz6jojWmicctqKa9XNFMSEiRZutsmGafIZNQz87WhNP8KYBuEzMI=
X-Received: by 2002:a65:4c84:: with SMTP id m4mr311365pgt.404.1628563704589;
 Mon, 09 Aug 2021 19:48:24 -0700 (PDT)
MIME-Version: 1.0
From: Willem Jiang <ningjiang@apache.org>
Date: Tue, 10 Aug 2021 10:48:11 +0800
X-Gmail-Original-Message-ID: <CA+QaCWLGu_jk5s6qzO-LNFi5R2mZecSWPA68ijhUXgTUNsT2Xw@mail.gmail.com>
Message-ID: <CA+QaCWLGu_jk5s6qzO-LNFi5R2mZecSWPA68ijhUXgTUNsT2Xw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2021-21501: Apache ServiceComb: ServiceComb ServiceCenter
 Directory Traversal

Severity: low

Description:

Improper configuration will cause ServiceComb ServiceCenter Directory
Traversal problem in ServcieCenter 1.x.x versions. This issue was
fixed in ServiceComb ServiceCenter 2.0.0.

References:
https://github.com/apache/servicecomb-service-center/pull/788
