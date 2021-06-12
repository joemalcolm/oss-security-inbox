X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["502" "Saturday" "12" "June" "2021" "11:03:51" "+0200" "Andreas Lehmkuehler" "andreas@lehmi.de" nil "16" "[oss-security] CVE-2021-31812: Apache PDFBox: A carefully crafted PDF file can trigger an infinite loop while loading the file" nil nil nil "6" nil nil (number mark "U       andreas@lehm Jun 12   16/502   " thread-indent "\"[oss-security] CVE-2021-31812: Apache PDFBox: A carefully crafted PDF file can trigger an infinite loop while loading the file\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-31812: Apache PDFBox: A carefully crafted PDF file can trigger an infinite loop while loading the file" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7541 invoked by uid 550); 12 Jun 2021 10:56:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7218 invoked from network); 12 Jun 2021 09:04:03 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1623488632; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=LuJUPBtyvgYszASOfYXpT4xcL1D/a1pPuTuwjMPjxYVSou/MgR3oErEwBCnFl3E6DU
    KYq2d+hbQwD02oZ/75fM712Kb8ZWjzHNPIoKaIb+T6lRi4KuLZ+opZotU+UAMnrYAIsG
    roPUlZeJrtdYnqbtWGWwzohZEz7ewvLR9AuGz3wk8W4X3mL4T0GNvrtA/+Ym+L8DpnGq
    O1mY+UfyLVwQ9aQTljZuCrYkrnsFuag2/uJFoT/1WA7rw2FFYHst2A7BkrHRtJm4zoAI
    HO2Wzaz78AsQnjrfg8JyyeCmRPgavMSSJIEcGEd0SCLEdJIfpa5RoAf6Uk25ZbRNxrxu
    t/wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1623488632;
    s=strato-dkim-0002; d=strato.com;
    h=Date:Message-ID:Subject:From:Reply-To:To:Cc:Date:From:Subject:
    Sender;
    bh=c0RTqqdzxRUrG7ZWEXmhZBtx9/E4YvwcjfPT4UZ2FTs=;
    b=MxD1iOsuRIkaQ4bi5P6Nms1v6xU/CdF42LoE1hZXK2uxeQVIY09byIjQrfUFnLPivo
    Bhg6mAU3KHOtFQw528xt3vv8pHAl/7qO440WfQFtLSfnFjj8HY/qaPc2FCiU7wfNzj85
    hv68wOl/ZpKUJwxUgzxYmiXuP+0jUeB2Ubzfy1TMBQD0PWS5H+YwY0zx5QmFPxM23b+f
    l+FjWQyeYZzhbdABvn6U3UgEmRuApiSvCQ7P/2dDflOiB1KIC8wSkyz8vSEaFx+EAy6G
    TzUJFNaVsvPCN4Rt5WLh7RgzWUhhn+1Q/RYFPuDcylNnl/5jMbkZIznKBwPUXkTUSxDs
    nA/g==
ARC-Authentication-Results: i=1; strato.com;
    dkim=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1623488632;
    s=strato-dkim-0002; d=lehmi.de;
    h=Date:Message-ID:Subject:From:Reply-To:To:Cc:Date:From:Subject:
    Sender;
    bh=c0RTqqdzxRUrG7ZWEXmhZBtx9/E4YvwcjfPT4UZ2FTs=;
    b=ecqw+ByU4eqFh93d3bmAAffyxyEDPsg3b+30uy/wcsDjx02SEDsYAyw6ckAhHxPlaT
    b0PJX264l/NqnNeTyrcXp1rpmtaX+xgmCt9UmgE/PXh3Vai2KDBX80XpQnBT4vsiLAcV
    wTFPEf71Q8Ly3PpQ6+Vd/CHcf5XMCvRQX5aT/WeCf2UDrOWfMbC5RHAj8hS3P4iJak0b
    HLN+c2u1ERrbTCFBi6j59jG02kdg2d4EmF0PM6ImK94cvU4jMSQ4jKg42+vJvawOg9KQ
    wcDgoFC32zR1SyaYDmm0oOJ4nfPaiRnoV2qgoXd5gxLRczlvRmdeiiz/PCVtFqTr1cA4
    7bEQ==
Authentication-Results: strato.com;
    dkim=none
X-RZG-AUTH: ":LWIAZ0WpaN8UY5o8XRz0jOyrHsdUGPvBRfQHLwW1oA/8m8QyX/Sant12icD8rTquXMu3"
X-RZG-CLASS-ID: mo00
To: oss-security@lists.openwall.com
From: Andreas Lehmkuehler <andreas@lehmi.de>
Message-ID: <e8c8eb3e-c971-2dd2-4337-66268b07e2d2@lehmi.de>
Date: Sat, 12 Jun 2021 11:03:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2021-31812: Apache PDFBox: A carefully crafted PDF file can
 trigger an infinite loop while loading the file

Description:

A carefully crafted PDF file can trigger an infinite loop while loading the 
file. This issue affects Apache PDFBox version 2.0.23 and prior 2.0.x versions.

Mitigation:

This issue was fixed in 2.0.24. All users are recommended to upgrade to Apache 
PDFBox 2.0.24

Credit:

Apache PDFBox would like to thank Chaoyuan Peng for reporting this issue

References:
https://lists.apache.org/thread.html/ra2ab0ce69ce8aaff0773b8c1036438387ce004c2afc6f066626e205e%40%3Cusers.pdfbox.apache.org%3E
