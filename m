X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["652" "Wednesday" "18" "July" "2018" "08:30:07" "+0100" "Alexey Sokolov" "alexey+znc@asokolov.org" "<0f1139f3-ffca-d277-5208-2c2ed5dcc3cf@asokolov.org>" "24" "[oss-security] CVE-2018-14055: privilege escalation in ZNC" nil nil nil "7" "2018071807:30:07" "[oss-security] CVE-2018-14055: privilege escalation in ZNC" (number mark "U       alexey+znc@a Jul 18   24/652   " thread-indent "\"[oss-security] CVE-2018-14055: privilege escalation in ZNC\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21672 invoked by uid 550); 18 Jul 2018 09:22:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30052 invoked from network); 18 Jul 2018 07:30:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=asokolov-org.20150623.gappssmtp.com; s=20150623;
        h=to:from:subject:openpgp:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=p/266xGCKqIz5lLgiyWBIbKeWlnbN4ZBfTzMCudgi3I=;
        b=HY3UMMwos/LzRHurMzCQf0IxU3uNJDTwa+rBTFwDJFZEpiWQfgCR9bDAGCNropFWoq
         yjHYSl8zmM3FXIoxMaoLydsIRyHH0/bgPw6sJG2b7Yx+zPyMvmULyiuHUh2vFrPgJRB2
         bImgpt9DqEwn6l0NLSYWU/9XZqCcHORoTRnl9QVDFUOf6sUMY8MWPuzHlZ6YHfbWb8Nq
         Ey5NgVAvbSVxY+H5x2KhqKnJVkM/G7Z9lYxIOH09J4IQV1eZS2BE2DroHPrcFkgd16GU
         HNnClYDf1uk/YojYrmMJlYj2fbsGyxetbwDNVCsrg1PH6zbB08weLNm8iZHYDBpDl9j7
         H5jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:openpgp:message-id:date
         :user-agent:mime-version:content-language:content-transfer-encoding;
        bh=p/266xGCKqIz5lLgiyWBIbKeWlnbN4ZBfTzMCudgi3I=;
        b=uMFmwn11KdWj8qv85l7w46gs451svZ4a75vpxTIhXV0DVu7Uxroifnor1DYlNwstqd
         aOdRPljYgtKPnI0eNhxjdbwbowSskyvnYYi0y7jX+Z+3DDq2hRYQyEVUvZIn1ys/1QMG
         pIdCZoPvuC8Mj36yTPyka4suUopnZhEoW/x2m/O4QwJgFoc8LqMqkJ+bTz7qg0/cH143
         04/RYWFI1m10CqrbHjspMGgQkpNqoNvkzjLCgDTD03lcL0BwBgs63OOu/SFG/c5QG9hF
         WeuCTir0Iyb9jiJeAkyw0dZ/pveXmL13hh3Xmukj8dqD2jxtDlRBZOx9AUPaK05LsOKg
         LCyg==
X-Gm-Message-State: AOUpUlEx8Ct/iDSRLiBHd0PgNKIiKkIsOjtEve6HKVfi88V2YtUmat5O
	jSzuruQkm3lwkEyhFhuFWwTaXrRRbgMlnQ==
X-Google-Smtp-Source: AAOMgpdZQKCPKBEIt8zoBRXZk5YHnecVK5c4I77/RkUv4uPcgJptqAqr3Vfd201naPL9oYTrbhtQvw==
X-Received: by 2002:a50:fa82:: with SMTP id w2-v6mr5937965edr.256.1531899009084;
        Wed, 18 Jul 2018 00:30:09 -0700 (PDT)
To: oss-security@lists.openwall.com
From: Alexey Sokolov <alexey+znc@asokolov.org>
Openpgp: preference=signencrypt
Message-ID: <0f1139f3-ffca-d277-5208-2c2ed5dcc3cf@asokolov.org>
Date: Wed, 18 Jul 2018 08:30:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.8.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2018-14055: privilege escalation in ZNC

Severity: high

Versions affected:
1.6.0 through 1.7.0
Potentially, all earlier versions too, but there is no known way to
trigger this before 1.6.0

Mitigation:
upgrade to 1.7.1

Description:
ZNC before 1.7.1-rc1 does not properly validate untrusted lines coming
from the network, allowing a non-admin user to escalate privilege,
inject rogue values into znc.conf, and gain shell access.

Upstream patches:
https://github.com/znc/znc/commit/a7bfbd93812950b7444841431e8e297e62cb524e
https://github.com/znc/znc/commit/d22fef8620cdd87490754f607e7153979731c69d

Reported by: Jeriko One <jeriko.one@gmx.us>

-- 
Best regards,
Alexey "DarthGandalf" Sokolov
