X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1002" "Wednesday" "1" "May" "2019" "14:02:58" "-0400" "Lou DeGenaro" "lou.degenaro@gmail.com" nil "34" nil "^Cc:" nil nil "5" nil nil (number mark "U       lou.degenaro May  1   34/1002  " thread-indent "\"[oss-security] [ANNOUNCE] CVE-2018-8035: Apache UIMA DUCC webserver cross-site scripting (XSS) vulnerability fix\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [ANNOUNCE] CVE-2018-8035: Apache UIMA DUCC webserver cross-site scripting (XSS) vulnerability fix" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17592 invoked by uid 550); 1 May 2019 18:14:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3870 invoked from network); 1 May 2019 18:03:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=n6+04DDVmLwbH3OvLMZ2rKyMsJPhG+Qp67PH9L4fjgY=;
        b=IWUz76RppsiCV++G1vWphMnftXVxw1WP4Pz9UtaWgHoiR97qr4NCwjbUslEBa6FkcO
         KydhdvnSH7oUfy2PzJ1p2JRlYy1GZZFo/A+gqwJ8Mm2HIOHqn2UXxqCr+/oajBVwp1+J
         1k2kMs0946b8/xwDI6VLvfNQ+hlFlXRmD6lNPp5d/RfBBq4TX7DveA02cROiBfi/mvtC
         zssDxsGI0/uJDJZvk1GQj2f2N8jqBs+Hygs5tpQT6EJKIse8jTIoAV9TjaDzgEfaNgpK
         z9FDFcAl4URG3NRuTHuQ83gx10o5ayd1XDh/V9QesUpw3R2+jB2hXPOTOcDNUEXBqZC3
         Ye4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=n6+04DDVmLwbH3OvLMZ2rKyMsJPhG+Qp67PH9L4fjgY=;
        b=elOx3m3nrFcI2k5vy9HAJUCLo7S/lCsRMBWPSUPmdeWUANPZBjDZFFvY8Y8gFW1HW9
         iRnWruO3UJDEt2gbSDBWfC681cM77WWHHLi0F7m+ZtWz+0g8MFSCnECMvjhUxeZNIOd8
         vDJgN+4e/qk9N2cPqiQT3wbtpLjLQ0uoirlAZTFd4m3svobDEyiQyhAcSM6osF3+DHCg
         6Fxats1JQVgNj/BOi1r7X/TF3lO9OjtSqbBchSwX2Mg2xFF0Z2EGf3lJLQkfxfcLv6OI
         KK3O0C/lTd4i5XvtYHVlxCabjn6yjSEGgC9ELxaduHfKFcbPpfxZ6RBhLqHZrZiEFGdd
         zLew==
X-Gm-Message-State: APjAAAVZSmH+yCjIsCvlKVsWk4V8/Q/uYduZVfez55/A7WdH1sT9Vf43
	c/wm8cCQlpAS5DSCrx715Y7m9ocdRHBMUadUPcpj19czq+g=
X-Google-Smtp-Source: APXvYqwaPJJRDgrLeMQo6XH93Qmhllq/91eCEwNMXXh9gcM8LnMgmkj1aeoIKkttdOHByrzeASRpa8OvbYhek2O/WFc=
X-Received: by 2002:a17:906:13c8:: with SMTP id g8mr5857142ejc.183.1556733789410;
 Wed, 01 May 2019 11:03:09 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CA+W_RZia02oGCMn7wGk_WFSrwv72BfRiiC2UEZnytL=P0mVNQw@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000871f2e0587d754a9"
Cc: uima-dev@apache.org
Date: Wed, 1 May 2019 14:02:58 -0400
From: Lou DeGenaro <lou.degenaro@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [ANNOUNCE] CVE-2018-8035: Apache UIMA DUCC webserver cross-site
 scripting (XSS) vulnerability fix
To: oss-security@lists.openwall.com

--000000000000871f2e0587d754a9
Content-Type: text/plain; charset="UTF-8"

CVE-2018-8035: Apache UIMA DUCC webserver cross-site scripting (XSS)
vulnerability due to unintended execution of user supplied javascript code.

Severity: Important

Vendor:
The Apache Software Foundation

Versions Affected:
   - Apache UIMA DUCC releases including and prior to 2.2.2

Description.
The details of this vulnerability were reported to the Apache UIMA
Private mailing list.

This  vulnerability relates to the user's browser processing of DUCC web
page input data.

The javascript comprising Apache UIMA DUCC which runs in the user's
browser does not sufficiently filter user supplied inputs, which may
result in unintended execution of user supplied javascript code.

Mitigation:
Users are advised to upgrade these UIMA components to the following levels:
   - Apache UIMA DUCC: upgrade to 3.0.0 or later

Credit: Marshall Schor

Lou DeGenaro, on behalf of the Apache UIMA Team

--000000000000871f2e0587d754a9--
