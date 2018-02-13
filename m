X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["478" "Tuesday" "13" "February" "2018" "07:06:47" "-0500" "Christopher Shannon" "christopher.l.shannon@gmail.com" "<CACHnxzwtXFy7YPD1w2w+NT1yRuXP2f6S5WExFqZCz=yHGRuVww@mail.gmail.com>" "22" "[oss-security] [ANNOUNCE] CVE-2017-15709 - Information Leak" nil nil nil "2" "2018021312:06:47" "[oss-security] [ANNOUNCE] CVE-2017-15709 - Information Leak" (number mark "U       christopher. Feb 13   22/478   " thread-indent "\"[oss-security] [ANNOUNCE] CVE-2017-15709 - Information Leak\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30188 invoked by uid 550); 13 Feb 2018 12:11:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25705 invoked from network); 13 Feb 2018 12:07:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=UBbrJ0ShR00LKp1/w9f0hcszwic84DGoFYitf9BrcDQ=;
        b=j4mEMPP8Yh8Wn0zuZoPXZ7W0pm54bNHtAVY1TZyNHHhN3hRdH6CKhlRXnBFOwibRV7
         6xRAuv7171yA6+Lbc5b0EV0Zd32Mo1ZD/VzMrmZUEiRx+wxAaB0zG/nKL61AviDpvNe4
         o+4HLga5Ylj+3OdEVDvKbum47IkzDbqS9b1IsgSDrkNixRSIQ4eXB18KVhEO702n0X4I
         ja4ntQWQNP9N9QzOjSJrB0pvMXJ2NkLm4tUlD2nHIxnpRpQmyZpguY7l0qrBZNxzFTv5
         Hfo1AFWsxTBGfTWnnX2ScupJf0VEmcPVyq1GS7CDH3ache2XqDLTfKvEGf7RVtnR+FlH
         hBDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=UBbrJ0ShR00LKp1/w9f0hcszwic84DGoFYitf9BrcDQ=;
        b=Q8PYf12x64ntmY5PihB9IpZUXUgUD3CYFxZkUcfpYk8RiyWxTZHR9OX+BRBFXwAHhg
         GKDDkCdXd37XOpIiTM8k/f9x1/Ol6GDXggvTPv9kqwPArNZ3APrRMrfarrSSwSLoYJkh
         RR3/pQVk5B+/GgmAP3tGR/lsdMAvYuU+0QHfHM2aNHTv8+OcFjgRMpkyDelfaAHQfoSj
         5lmUMGQtgUTxRsWYBRfKSywSsUVlxuu5h67wGPFJLImoVxA3I7I1jShPqSnCPnttUqsc
         tTiTsEqBOQNN4GDuTC7xqCnK/niVSEDryMMJdGGXrurQPuZd4WoyUUTNokU3d8nYhgms
         RGdw==
X-Gm-Message-State: APf1xPBbUd8OPcubQ/W/2YCIZMGX96f2ObEqjdwQnoID0HmELBE21+ai
	SiAPlm8NWPG41g3ZaihI0b17p3vTX9iIX5fNgDs9NGNS
X-Google-Smtp-Source: AH8x227j6Ka6DnXdF+DH4hHze2yIC7qJniwm1uGjpWPhzQvrCHErK6ryWeCvcwJk4Z386KRAxkEHhRquM/nDn5f7Iig=
X-Received: by 10.37.9.82 with SMTP id u18mr516687ybm.288.1518523637877; Tue,
 13 Feb 2018 04:07:17 -0800 (PST)
MIME-Version: 1.0
From: Christopher Shannon <christopher.l.shannon@gmail.com>
Date: Tue, 13 Feb 2018 07:06:47 -0500
Message-ID: <CACHnxzwtXFy7YPD1w2w+NT1yRuXP2f6S5WExFqZCz=yHGRuVww@mail.gmail.com>
To: dev@activemq.apache.org, users@activemq.apache.org, 
	The Apache Security Team <security@apache.org>, jianan huang <sevcks@gmail.com>, oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] [ANNOUNCE] CVE-2017-15709 - Information Leak

CVE-2017-15709 - Information Leak

Severity: Low

Vendor:
The Apache Software Foundation

Versions Affected:
Apache ActiveMQ 5.14.0 - 5.15.2

Description:

When using the OpenWire protocol it was found that certain system
details (such as the OS and kernel version) are exposed as plain text.

Mitigation:

Use a TLS enabled transport or upgrade to Apache ActiveMQ 5.15.3.

Credit:
This issue was discovered by QingTeng cloud Security of Minded
Security Researcher jianan.huang
