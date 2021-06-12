X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["554" "Saturday" "12" "June" "2021" "11:04:42" "+0200" "Andreas Lehmkuehler" "andreas@lehmi.de" nil "18" "[oss-security] CVE-2021-31811: Apache PDFBox: A carefully crafted PDF file can trigger an OutOfMemory-Exception while loading a tiny file" nil nil nil "6" nil nil (number mark "U       andreas@lehm Jun 12   18/554   " thread-indent "\"[oss-security] CVE-2021-31811: Apache PDFBox: A carefully crafted PDF file can trigger an OutOfMemory-Exception while loading a tiny file\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-31811: Apache PDFBox: A carefully crafted PDF file can trigger an OutOfMemory-Exception while loading a tiny file" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7804 invoked by uid 550); 12 Jun 2021 10:56:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7355 invoked from network); 12 Jun 2021 09:04:54 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1623488682; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=l+6aeJyiJN5t8I2FNggEy6bHHY/Mfc+jd2YqZWNZIUK8YWYWnODTT4poIbOrm7ZyOC
    4QHKDpkFK8x6KWmIm33pM3cfHWNuGQ3reEejrubgYekfSi/sR3nbcnJT3kKc9QfDU1U/
    Yx5B/6pv9drckV2Qyo/SFCVf6Z+WdMj4CDaQ+o0D0DaO288RPWD5BijuvR0zs83lzHpt
    FRBsWNHeWJ+XwuCfjOpb5Sg4vP/hVfZanXCRI9YmEjJ8qbnoGSvK3m6n+j1kIrkt+7+W
    YSBMhmO7yu74ljSP6tLYyTkAGEK/WdmgzhgyWRfLr8MCeYssqV4HhCherSR3v8vyRjHG
    Siww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1623488682;
    s=strato-dkim-0002; d=strato.com;
    h=Date:Message-ID:Subject:From:Reply-To:To:Cc:Date:From:Subject:
    Sender;
    bh=fyLme3k+s8G7/g9AVWIcJwJamhL+zBemf0xHWRDB1+M=;
    b=dSeY9dDfnWOyVJW2ikWzBOz4CKLmF+xMNKcB54ngujurqb65FJOoxGPFpVbPwXvi4J
    Pf0k28FDkT9xV6ZS8jOFJCTit6hKy7e7zc/wn+vpxZg/uQpMKGFLk2UcMsk7fNXeStKt
    aUUBPC2cif+xypZXNqfe6Z6sLBI8B5yG44S9sIxS9hKXqukJOg+yw+/Q4HdJR61YnvKR
    yOojuBig7fQitbaaJ0Z1n4o4AIBTheLSbjVQIgVjlO+RCAyHEZnwQ+WVXtglHc81bc7A
    T1Pctuy/Oazka9dn0Vlj2KzudLbx7vmRJEB4dzDII33PqLFgmTf8Pp3AVDs+TmY4X2Xs
    WX7Q==
ARC-Authentication-Results: i=1; strato.com;
    dkim=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1623488682;
    s=strato-dkim-0002; d=lehmi.de;
    h=Date:Message-ID:Subject:From:Reply-To:To:Cc:Date:From:Subject:
    Sender;
    bh=fyLme3k+s8G7/g9AVWIcJwJamhL+zBemf0xHWRDB1+M=;
    b=WAvuBwWzKb1++Jn5VoTSuNTZRgE8E/QS/HHjfjxyrdxXc2AwO4vWtQRiV6WAZwkGNv
    1y1gBgJp6sseaCszS8SkgNytlpDyCGBXR886j8NV9jbwoyBN5CYZHFRG6vecUpiwRvhN
    r0EFhdxVYOP6qOWGIAWWlfltPA6fnZIKJ2Mq7zFpcSBh0LkavqdJv69Rd2VNkU8U1YDX
    DPhdlMKLgCdpwu50Vd7lbGM/k+ohd1YgwbcxqJeUVCWFr77vngF0MV+RUpsRXriyfsfZ
    IJauMlZ1HRR+zF/ELTM/J/wePdCZ7xHT/KiY23LrU0QBp0Y+EebB/mwWC+nMJo3gol9r
    RSYg==
Authentication-Results: strato.com;
    dkim=none
X-RZG-AUTH: ":LWIAZ0WpaN8UY5o8XRz0jOyrHsdUGPvBRfQHLwW1oA/8m8QyX/Sant12icD8rTquXMu3"
X-RZG-CLASS-ID: mo00
To: oss-security@lists.openwall.com
From: Andreas Lehmkuehler <andreas@lehmi.de>
Message-ID: <8324dd87-9dce-280d-de27-4e3281419f93@lehmi.de>
Date: Sat, 12 Jun 2021 11:04:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2021-31811: Apache PDFBox: A carefully crafted PDF file can
 trigger an OutOfMemory-Exception while loading a tiny file

Description:

A carefully crafted PDF file can trigger an OutOfMemory-Exception while loading 
the file. This issue affects Apache PDFBox version 2.0.23 and prior 2.0.x versions.

This issue is being tracked as PDFBOX-5177

Mitigation:

This issue was fixed in 2.0.24. All users are recommended to upgrade to Apache 
PDFBox 2.0.24

Credit:

Apache PDFBox would like to thank Chaoyuan Peng for reporting this issue

References:
https://lists.apache.org/thread.html/re3bd16f0cc8f1fbda46b06a4b8241cd417f71402809baa81548fc20e%40%3Cusers.pdfbox.apache.org%3E
