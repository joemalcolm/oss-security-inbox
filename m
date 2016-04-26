X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["422" "Tuesday" "26" "April" "2016" "07:20:13" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20160426052013.GA4299@lorien.valinor.li>" "17" "[oss-security] CVE Request: vtun: denial-of-service: high CPU usage after SIGHUP" nil nil nil "4" "2016042605:20:13" "[oss-security] CVE Request: vtun: denial-of-service: high CPU usage after SIGHUP" (number mark "U       carnil@debia Apr 26   17/422   " thread-indent "\"[oss-security] CVE Request: vtun: denial-of-service: high CPU usage after SIGHUP\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28567 invoked by uid 550); 26 Apr 2016 05:20:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28549 invoked from network); 26 Apr 2016 05:20:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Aeo2VGeRDHCUJKYYocUIhzDuq0mfLfGIfo0t+vImGr4=;
        b=sAWqS7ryLRO1ZcSLSjnyNgViGiKe24fUKpJqzAGLV27bzVzBAKdOPdUI3M/it/4gM9
         q2ZIGf/hJmBp/DitoFEAbHJqXnw6BEMsMPZc1IVTNF7wTjZHcMzx0AP0W/X1eZgEVvSX
         HKY0SnAawKTjT00mX+l8pFK+NUjOhkaf7N3uZvLMJCpGvdZPz+PvfbaSri6/WbNGHHMs
         UuiIzHBx2E0Z3FMM7pnLv4fnrPK/iXgV1ztNv0Kh5mmesBpQ1rIyU/eTorsjNmH+Dsj/
         mBDr+20M2RuanT+UNlEu8VdFwP9PEmOedGKbr7FulSGCUt62WyVxLWz78U/KTcMjYyhp
         5V1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=Aeo2VGeRDHCUJKYYocUIhzDuq0mfLfGIfo0t+vImGr4=;
        b=P3XmiScvAK/lTIgGaHFGVu90g2tPP4gFQxgKRNLe9b8tTVTk/Yjv/ntbO+eHR9WjKL
         sHso68ynJ3WAbNgVjfK6JKCoeGs+DHLAwiCQ8no5+IUBtCvldQZprfY4nQrpZTQNgj8D
         XyEQBLyc1IwTmLaAITVpavHoEAwSCiEbcZgx5V7vzE8+pZB8nefEMGeHREs1AQ1Lox8n
         I7+cqUQX1zJvQIXJBwomD0A4kVze1GdLJTf2eKi2U2s20HBLW3tPnCsBon1JlZm7qWRL
         MBGHAT2d+WDIttOAb3WgtwuOAitnmZ/3sgRZ7q97Yx+wBA7WQE/ezgHNCB34RXWVgEMf
         p23Q==
X-Gm-Message-State: AOPr4FVFj/dx+Hr6WSGbyTGgLZxzJjhhMEkC+ruCM4rZRS4BAa5xjG6TDEWSGG1GP1E+MQ==
X-Received: by 10.28.0.87 with SMTP id 84mr14849283wma.68.1461648015149;
        Mon, 25 Apr 2016 22:20:15 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Tue, 26 Apr 2016 07:20:13 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20160426052013.GA4299@lorien.valinor.li>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [oss-security] CVE Request: vtun: denial-of-service: high CPU usage after SIGHUP

Hi

There exists a denial-of-service vulnerability in vtun, resulting in
high CPU usage after SIGHUP to a vtun client process.

Debian Bugreport: https://bugs.debian.org/818489 (contains proposed
patch)

Additional references:

https://bugzilla.redhat.com/show_bug.cgi?id=1319858
https://lists.fedoraproject.org/pipermail/package-announce/2016-April/181383.html

Could you assign a CVE for this issue?

Regards,
Salvatore
