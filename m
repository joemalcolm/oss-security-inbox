X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["625" "Wednesday" "24" "February" "2021" "12:01:06" "-0000" "Simon Steiner" "simonsteiner1984@gmail.com" nil "30" "[oss-security] [CVE-2020-11987] Apache XML Graphics Batik SSRF vulnerability" nil nil nil "2" nil nil (number mark "U       simonsteiner Feb 24   30/625   " thread-indent "\"[oss-security] [CVE-2020-11987] Apache XML Graphics Batik SSRF vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2020-11987] Apache XML Graphics Batik SSRF vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8159 invoked by uid 550); 24 Feb 2021 14:02:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9223 invoked from network); 24 Feb 2021 12:01:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding:content-language:thread-index;
        bh=iz9Z+FvQTHu131zCYxnw3RbyNm6jxLSq8SGhrK6+BwY=;
        b=WGz52D+AtIZcP0Q4a5cECEePHDZw1mGKjDn+mSY7UD8y+4/mKutZw4znfXtcqUCH2W
         QRAmBdLIGBTy6acEHLduzLHNhwgKmi1OazbbUgudU/YEp6siNMWcDW5y+pP4tDKqqMqg
         Ji6RbyTcOMcG3Tm1VfGHcpkMkNTopu8ycso+JxLYRiYnvPRYZ0sOY4L7j8w7DhypE+Gf
         8VW0wUitAVxIDNqta/SS0VqIb8r5cE5jXYWmqx5mUEjjHr7blPTT+HSPzEihuaz86Zpq
         swgmXHN+R+yMKZ7ycwp2J76+gvbtXMZYvUQkMLKcdmuCxXJzYqYBH82hRsNhu6R1Oo9V
         cgpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding:content-language:thread-index;
        bh=iz9Z+FvQTHu131zCYxnw3RbyNm6jxLSq8SGhrK6+BwY=;
        b=J+En99gREwTd8/xDpTtIw9salMhCQSiB1HcGShbMDJHyUKrh5t2Ocvhw/n7P5bt6Aw
         bCfpn5yr115Xenxq8Tothhq/svNjKBhvYzqSUMJf7/fPTBBHAISfS1dC/1Fd0ARkPK20
         78Fa3JX8rVr6AkNiOuG7IGS3eBZRRLOc5XdaJJXpXgwNGR1cO+zgEiuWz2pvSBcegzMm
         +cDhIcaVM8cXid+fX77aA9weSyQE1HKRIjJUMojIHeNhUON0SYu/BE3SROgibB/DrlEF
         sT6di9DRz3sxz/D7nXl2R/A0mjT9rQ9N8rsGxyJTW+rKtI+TD0B+HgNPbVB56i/w8A0r
         x77g==
X-Gm-Message-State: AOAM530V67fxzThy15AEKiO84rYml1pgUeOzJ5QdFn4CuGZfFjA5Dxf+
	j570eCi9AJx2YQp41Z1pZLymJhe6HF6HfA==
X-Google-Smtp-Source: ABdhPJyL8RbFe2qyfHHYcX6J+bpBi5tBoJ0XoM3AgJ6knwGby/IULaYxK0iMJtzzcHafA93TS42vBQ==
X-Received: by 2002:a05:6402:4d3:: with SMTP id n19mr32824295edw.2.1614168067832;
        Wed, 24 Feb 2021 04:01:07 -0800 (PST)
From: "Simon Steiner" <simonsteiner1984@gmail.com>
To: <oss-security@lists.openwall.com>
Date: Wed, 24 Feb 2021 12:01:06 -0000
Message-ID: <000801d70aa4$bbfa3410$33ee9c30$@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailer: Microsoft Outlook 16.0
Content-Language: en-gb
Thread-Index: AdcKpFkD51KYQedUSJmDlcGYqHkRWg==
Subject: [oss-security] [CVE-2020-11987] Apache XML Graphics Batik SSRF vulnerability

CVE-2020-11987:
        Apache XML Graphics Batik SSRF vulnerability

Severity:
        Medium

Vendor:
        The Apache Software Foundation

Versions Affected:
        Batik 1.13 and earlier

Description:
        The Apache Batik library is vulnerable to SSRF via the NodePickerPa=
nel that allow an
attacker to cause the underlying server to make arbitrary GET requests.

Mitigation:
        Users should upgrade to Batik 1.13 or later

Credit:
        This issue was independently reported by =E5=BC=A0=E7=9B=B8=E6=B5=A9

References:
        http://xmlgraphics.apache.org/security.html

The Apache XML Graphics team.



