X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["366" "Wednesday" "25" "May" "2016" "15:52:28" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20160525135228.GA13576@eldamar.local>" "18" "[oss-security] CVE Request: roundcube: XSS vulnerability in mail content page" nil nil nil "5" "2016052513:52:28" "[oss-security] CVE Request: roundcube: XSS vulnerability in mail content page" (number mark "U       carnil@debia May 25   18/366   " thread-indent "\"[oss-security] CVE Request: roundcube: XSS vulnerability in mail content page\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15452 invoked by uid 550); 25 May 2016 13:52:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15428 invoked from network); 25 May 2016 13:52:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=QTC2WDf/XsQlvEfH+KH2l2sKmR0JjOR9es8PZctjQ80=;
        b=tZtnpj3p9mvlqh0VltpdsZm4uZ71qxtNqKC+1tpeB8a7pjI4fkEmySuWEfKUhlcb7R
         yqOkXbSlXAxDEEZ1kPEBXZexXr3hETgvCSmgyxBDPmNluAIY6pJ5jjzGF9eUWuK0BbAd
         7vkMi+aoYSMMeo2AAqciu1Va5MqPAslLWOMuUPw1VEoPvBCzyLUkZ7d0v9lVBc8TmrGW
         dgQSAUX4MKdPugcGzpw3/ZvAe/vGacPJvskQw0UpMb26uvnXYKyenenMy2HRLgxatQI5
         owV4h9k2ie3gV+sMddaYUcmD3Rgk0M0GsxC8779K17GHiDWbhR2gh98lGpv2AAxxHaXy
         N2RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=QTC2WDf/XsQlvEfH+KH2l2sKmR0JjOR9es8PZctjQ80=;
        b=Ac2GF741rlb4X5pqYhEwMf2q0uRrY0XRx8jJFfMBVFVLX1eGdOD1bueWtHnLkuyojC
         /WDw3EvEj2ZKyRKgA3uUzh+jARiKJ6X8oxAFvZFKmQzk9k5KICXnDAQSRSn/hGoKalQ9
         HVIIJvrE5THdOHdaYdXpNHbaO3xSIJHQSmXm+p04KUg9+QNUBi+cc3eUEKvAoSjB4Q3I
         KGzd7ZOZ9oDbzcOkwYQsKy4wu4q99/Iek8NWXfk8q8KrSniuyYihHEpRTpsZ+nqv9fTa
         fUyCe17JT87k5nNxa+fHnZdYnrRO6+7hcyeq8OsOeeppPsG7Xkoou8yr5CeNWnuG1Auc
         9Kaw==
X-Gm-Message-State: ALyK8tJRKgfiavyPJ1KbBDR+VMM/RDLYFScWCJ/Jtyv2Mzry27wE709e31LN+5PuGyfmRg==
X-Received: by 10.28.35.194 with SMTP id j185mr3557144wmj.17.1464184351204;
        Wed, 25 May 2016 06:52:31 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Wed, 25 May 2016 15:52:28 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20160525135228.GA13576@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.6.0 (2016-04-01)
Subject: [oss-security] CVE Request: roundcube: XSS vulnerability in mail content page

Hi

Can you please assign a CVE for the following XSS vulnerability in
roundcube fixed with the recent 1.2 release:

RELEASE 1.2.0
-------------
[...]
- Fix XSS issue in href attribute on area tag (#5240)

References:
https://github.com/roundcube/roundcubemail/issues/5240
https://github.com/roundcube/roundcubemail/pull/5241

Thanks in advance,

Regards,
Salvatore
