X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["905" "Wednesday" "10" "February" "2016" "13:35:17" "-0800" "Matthew McPherrin" "mmc@squareup.com" "<CAGKXR4sFSLHEf0Eb2tRxLUMsZQbB6b77WJrEuJ_HKqnF4HmA6g@mail.gmail.com>" "19" "[oss-security] CVE request - OkHttp Certificate Pining Bypass" nil nil nil "2" "2016021021:35:17" "[oss-security] CVE request - OkHttp Certificate Pining Bypass" (number mark "U       mmc@squareup Feb 10   19/905   " thread-indent "\"[oss-security] CVE request - OkHttp Certificate Pining Bypass\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1976 invoked by uid 550); 10 Feb 2016 21:59:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18420 invoked from network); 10 Feb 2016 21:35:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=squareup.com; s=google;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=jN1c9SVdP/xrvA1//jfofZsdtZWzsr7hdPL/7X7IgPM=;
        b=aLm/ua+7RLVVCBXamcvJstyzUcHDriC6Vk3H0+jDEEMI5v6E7DfOdpQOGAVhPkekdK
         iO8jCkxkISxa6JeJQsBnV6hBiSyHvLSbO3qrLF8emRw9EnrDw7ezheYDmFFThuNCAaHT
         lommE99vjyKKEiLoLiIfNj5CV0epqdYmmktic=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=jN1c9SVdP/xrvA1//jfofZsdtZWzsr7hdPL/7X7IgPM=;
        b=EuWv2SimtXTGowU8Wkrn5EWVKJ9719LKUuRnS4xYZFjw/bsTO6F7QDPLjrhyZBdMxv
         NalrFxw1etlwSBRIE5+7nvcsi+eDCW98Wc255AT1L3FJzaT6wymzxdoFQXOrZS4KAm25
         EvO69ViUXFXBe6PhKZxW8b4YU5+ZFIrpB2fS6pPZAjaaGp2fDN1jGMkxklT84MAFDTeU
         +XszC4jWxNx4IclZdt7quU9vG9/V4CdsQeXHDxbwVrQf+Uqyz6DUIG64HRSHxjv1elqv
         qbAKrzfSOjL6HOWFIRYcKaqByYa3PncHMUt9MW2yUYs+AZrVEnUIY7qGrUnyoPH4B8mz
         686Q==
X-Gm-Message-State: AG10YOTWNZ69Eh80pNLWDVisaqM2v7ksT+hS6Md4mfKy/hJO5kwvnAj9PdNdlunPiq5AwvwLN2XPcIFisaFlHyWF
MIME-Version: 1.0
X-Received: by 10.60.140.129 with SMTP id rg1mr40902115oeb.25.1455140117398;
 Wed, 10 Feb 2016 13:35:17 -0800 (PST)
Message-ID: <CAGKXR4sFSLHEf0Eb2tRxLUMsZQbB6b77WJrEuJ_HKqnF4HmA6g@mail.gmail.com>
Content-Type: multipart/alternative; boundary=047d7b41cb7acbdbfa052b7135f9
Date: Wed, 10 Feb 2016 13:35:17 -0800
From: Matthew McPherrin <mmc@squareup.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request - OkHttp Certificate Pining Bypass
To: oss-security@lists.openwall.com

--047d7b41cb7acbdbfa052b7135f9
Content-Type: text/plain; charset=UTF-8

A vulnerability was discovered in OkHttp that allows an attacker to bypass
certificate pinning. OkHttp did not validate that the pinned certificate
was in the chain to a trusted certificate authority.

This resulted in an attacker being able to present a certificate chain with
a certificate issued by one trusted certificate authority, and additionally
including the pinned certificate authority. Because the pinned certificate
was present, and the certificate was issued by a trusted certificate
authority, the server's certificate was accepted. However, it should not
have been accepted as the pinned certificate was not in the trust chain.

This allows an attacker to obtain a certificate from a non-pinned but
trusted CA, then have OkHttp connect to that server, bypassing certificate
pinning.

--047d7b41cb7acbdbfa052b7135f9--
