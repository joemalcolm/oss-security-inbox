X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1486" "Wednesday" "3" "June" "2020" "15:34:26" "+0200" "Richard Hartmann" "richih.mailinglist@gmail.com" "<CAD77+gTN-F3e_KYuUtkWF6xQFQ0=tW3UCvc7PdM+Ap0YgokSSw@mail.gmail.com>" "40" "[oss-security] Grafana 6.7.4 and 7.0.2 released with fix for CVE-2020-13379" nil nil nil "6" "2020060313:34:26" "[oss-security] Grafana 6.7.4 and 7.0.2 released with fix for CVE-2020-13379" (number mark "U       richih.maili Jun  3   40/1486  " thread-indent "\"[oss-security] Grafana 6.7.4 and 7.0.2 released with fix for CVE-2020-13379\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Grafana 6.7.4 and 7.0.2 released with fix for CVE-2020-13379" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5492 invoked by uid 550); 3 Jun 2020 14:08:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21571 invoked from network); 3 Jun 2020 13:34:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=Jv6Pbglh9QNeSW75WUm53fNBlLPRjVI57dzAA2dXyQM=;
        b=flbV6u8YhjfCUgZ2XS4NLRdeJbUy+PyQ8xjk78nfrXygH8PCb6lnQMso+0xaT8Sia4
         2muOIeR/GRFiRIoBhkLrxLshWKso+f1nKs79ZE/2FCjoL5GlkYtQ4n/+rkz1tjHL+pPl
         oKQuEtrOQQakW9NUJPmhSPCg5yjdUWSSXbbVloFIyNCHmLlBhERBdo2hrdfJP97KTGlh
         vcQiNlkQI67uF02WvCrmZFUfcbXEbXee22fgm9qTLAPpCNUkoqFjnFXChZmUxa10C9mh
         jmpihzO0Wah/Bf7qnS0jY6ZyOP7BrYQGoHWh24PBjLv1GEmoeqQmkjiqGeATKGF2GXN6
         fGLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Jv6Pbglh9QNeSW75WUm53fNBlLPRjVI57dzAA2dXyQM=;
        b=KZz9Qh8sLSp4zNIj9PSxWfyt1GtdRLzjrh8FzCP7jdpj/4KxM4pWSeOlLXezhYo7HC
         z3CbyUIyfrFFkNQd836eRvp0TzHG6+0RFQxBnid2KydC1/jLoqKudYfZXLopCcKLg32V
         BEPUc5WAztpUbwmLrkCFyNgSeUW50RudLZ+tQLj0LdEw2ORk8topAzlo/jBV290lRBM3
         3szRHnuo4XxE1AAo6MkaUClHq2WB1Ag8pjVuKNT90TbUeR6XwPZ1Ilx56AdH7zixuvFd
         Lhg8efEDdLb5rqKCjBY1M9zgIcMj010iNthL3XcHGicr5P+lvFQZjpHpi5x6toozpclZ
         Wfdg==
X-Gm-Message-State: AOAM5337YCj6v23LSBVXudclbIsxifoQqx8JXVA3ou6ng9BhnLgGRR9Q
	KYoe+HERkdambjKIzi3BRdNON9UQq1DZNLwDUpmO4G9M
X-Google-Smtp-Source: ABdhPJwI6wpiULkQ9jPXbctX09j6r2g/2lc1830jTmXm+i2auq3ET570LDtCEui6nzEYBrtt1Tpv4HNsqhOep1dCFGA=
X-Received: by 2002:a17:906:da05:: with SMTP id fi5mr28568636ejb.95.1591191277154;
 Wed, 03 Jun 2020 06:34:37 -0700 (PDT)
MIME-Version: 1.0
From: Richard Hartmann <richih.mailinglist@gmail.com>
Date: Wed, 3 Jun 2020 15:34:26 +0200
Message-ID: <CAD77+gTN-F3e_KYuUtkWF6xQFQ0=tW3UCvc7PdM+Ap0YgokSSw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Grafana 6.7.4 and 7.0.2 released with fix for CVE-2020-13379

Dear all,

today we are releasing Grafana 6.7.4 and 7.0.2. These patch releases
include an important security fix for an issue that affects all
Grafana versions from 3.0.1 to 7.0.1.

Incorrect access control vulnerability (CVE-2020-13379)
We received a security report to security@grafana.com on May 14, 2020,
about a vulnerability in Grafana regarding the avatar feature. It was
later identified as affecting Grafana versions from 3.0.1 to 7.0.1.
CVE-2020-13379 has been assigned to this vulnerability.

This vulnerability allows any unauthenticated user/client to make
Grafana send HTTP requests to any URL and return its result to the
user/client. This can be used to gain information about the network
that Grafana is running on.

If for some reason you cannot upgrade, the impact can be mitigated by
blocking access to the avatar feature by blocking the /avatar/* URL
via a web application firewall, load balancer, reverse proxy, or
similar. It can also be mitigated by restricting access to Grafana.

Affected versions
Grafana releases 3.0.1 through 7.0.1

Patched versions
7.x and 6.7.x

Solutions and mitigations
Download and install the appropriate patch for your version of Grafana.

Grafana Cloud instances have already been patched, and Grafana
Enterprise customers were provided with updated binaries, under
embargo, on May 27.

Further information can be found at
https://grafana.com/blog/2020/06/03/grafana-6.7.4-and-7.0.2-released-with-important-security-fix/


Richard
