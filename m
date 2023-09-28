Received: (qmail 20158 invoked by uid 550); 28 Sep 2023 21:08:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32374 invoked from network); 28 Sep 2023 20:45:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=christopherschultz-net.20230601.gappssmtp.com; s=20230601; t=1695933938; x=1696538738; darn=lists.openwall.com;
        h=content-transfer-encoding:subject:from:reply-to:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U5NeT6/O2+dlI3EqPQR1PXqb35Vq679C8JN8slhx+l8=;
        b=q7y88zQ4NVUPzFkac4CCQTXh3KgNCDJ0lxNcsvbeUSZamqN7Ku+nKTDHH/c+HGC9xu
         ZQ4Wc228VHID/usY2k+cUS0L2VXGuSyGdAURCqNdKfRQUcPW25lgl+Q3t6qf2JqOlPXm
         aVftGo01AO+E3cVm1ExRqktz/0XUxmVaJ75gxkgcEYEvDBOKA4Kl93A7PJ+OvYJamoXX
         4u8/xCHwUZFKfgmWHPRLEpAW3DHcyoalKCM+wqXqkkTrYy1bXkYKrDWmw90J3c62NW/i
         xvhGDzDTpCB4k+lLMrpSBoZ/G2CVGXj3pnjv+91mVxi58/E9ElZ62AfJJnZu8+f98DF5
         XG4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695933938; x=1696538738;
        h=content-transfer-encoding:subject:from:reply-to:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=U5NeT6/O2+dlI3EqPQR1PXqb35Vq679C8JN8slhx+l8=;
        b=Dd2LwpEcAHh5lfdMHcdYRjm1R4xM1kQ/kpeF0bM43ebJKwNwLjRknsNp/wRC9rGphI
         Ik7a7ByIe5kRyc+FQ0KSvzJ59p5+Kpdpvun2DiNk3XuUmmnsGU+RNHYhgGHhGKfcEiph
         p4mqjsAB+KUmwHltilAqvFudoN+tOG3Ddjr3Y3tS05QLh8iqVJD5pKVYGFJ6e+NhihY9
         2bl0Ms0ybUb6mfSwIHtupChZa2EcWpe+wkXW2l8/zYpZNndFze8Fw8OIKsaDn1azpfhM
         PaJzDpGv2glh1RgL4vmEZMZ8usSE17mdSgXryXf5rb6DzWdY+bcXZZQH/80LOMpyAyGT
         qHUg==
X-Gm-Message-State: AOJu0YyoGoOPICGtkcK13hvxlQFs+X7o/I0W5C7u9j01EPMG9pG3+uno
	rKLeQJq1Zh/UL2SMfNPwvizl0XD+DQaRy1nyEkg=
X-Google-Smtp-Source: AGHT+IG/VRq7plKsPXJgrD7Ud1ws7s9B5w9s0RTkazUdmYdE4Eume0Yg29DHtIpNTaTEsS2fS+V4Tw==
X-Received: by 2002:ac8:5709:0:b0:418:19c6:c22c with SMTP id 9-20020ac85709000000b0041819c6c22cmr2767115qtw.68.1695933938130;
        Thu, 28 Sep 2023 13:45:38 -0700 (PDT)
Message-ID: <e211acf3-b142-261d-21e1-ae4494ebc0c6@christopherschultz.net>
Date: Thu, 28 Sep 2023 16:45:36 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.15.1
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Christopher Schultz <chris@christopherschultz.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2023-41081: Apache Tomcat Connectors: Unexpected use of first
 declared worker in mod_jk for unmapped request [CORRECTION]

Severity: important

Affected versions:

- Apache Tomcat Connectors 1.2.0 through 1.2.48

Description:

Important: Authentication Bypass CVE-2023-41081

The mod_jk component of Apache Tomcat Connectors in some circumstances, 
such as when a configuration included "JkOptions +ForwardDirectories" 
but the configuration did not       provide explicit mounts for all 
possible proxied requests, mod_jk would       use an implicit mapping 
and map the request to the first defined worker. Such an implicit 
mapping could result in the unintended exposure of the status worker 
and/or bypass security constraints configured in httpd. As of JK 1.2.49, 
the implicit mapping functionality has been removed and all mappings 
must now be via explicit configuration. Only mod_jk is affected by this 
issue. The ISAPI redirector is not affected.

This issue affects Apache Tomcat Connectors (mod_jk only): from 1.2.0 
through 1.2.48.

Users are recommended to upgrade to version 1.2.49, which fixes the issue.

History
2023-09-13 Original advisory

2023-09-28 Updated summary

Credit:

Karl von Randow (finder)

References:

https://lists.apache.org/thread/rd1r26w7271jyqgzr4492tooyt583d8b
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2023-41081

