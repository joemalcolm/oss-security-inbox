X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["657" "Saturday" "6" "February" "2016" "18:46:13" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20160206174613.GA16774@eldamar.local>" "31" "[oss-security] CVE Request: Horde: Two cross-site scripting vulnerabilities" nil nil nil "2" "2016020617:46:13" "[oss-security] CVE Request: Horde: Two cross-site scripting vulnerabilities" (number mark "U       carnil@debia Feb  6   31/657   " thread-indent "\"[oss-security] CVE Request: Horde: Two cross-site scripting vulnerabilities\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24287 invoked by uid 550); 6 Feb 2016 17:46:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24266 invoked from network); 6 Feb 2016 17:46:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=jpmrMFSEBhEUUVF7G3/PfqJu/7ZF0W1dVHoo+VPqYh8=;
        b=ETbfXFFAogHfZom7dx2yDc5aFbMFSzxJiK7cPzyBYhFQwbC7E+Z9Ljgq6S97ireZud
         aCPch+JGkr3nAQV/V7jp+GJugpMC5T4PtU1J69H5PxHR8wTrG/NaiZJ9uXX4a7/sLK0C
         BN/CPBuRL4ycZhIeWOXUQohGfyLlAujUkLV2+QnY6zMNFR+08q1qKqA18LGwSDvO/Z57
         Jcd+9u5BwYh39b0zaFihoidxfQYBME3DvGMsyNOfOfMK5wYpmlRtRzF0CgLxGRhb95Jg
         vMxvBx9w9kt5WmQ504YbqMCORQ3j55pJ3a8o8P8GrNsZ/scPWlUKUjfqR+tvSAsDFdXa
         gA9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-type:content-disposition:user-agent;
        bh=jpmrMFSEBhEUUVF7G3/PfqJu/7ZF0W1dVHoo+VPqYh8=;
        b=jWZggnAJWt0kr2Uof/ZAv+VwwRIIg3XRSFBVU38jqy0vPMCxslY7dm32xI6tL5QOOs
         D/D2nMqDAQtWfmG/pLtPpIaBaNavTKYhEkRO/5WxC27iGa4VanVDLycHR0PgurQ27+sf
         I8VXgRf94NZcMPyUue9KY05cBhW+qitqs+FesgURc6WLnkFjo44aRQz9NYI0T1VCzUho
         TbICWFO3Q2cABPF6sqsMijnSJ/HeOXmoBFwwWZfofJ7nQ78RCpxP68ER6VTuP4O6pelb
         u60r7f16s6g8BFp4r6bWGfuTuQ6Rq2QPmD83rfAsOpHeACk+c2Qb1Ir2aQUeQ+zrncM1
         jaMw==
X-Gm-Message-State: AG10YOTSimRDwaYD/NiMLdGVW1v2+LL3PocN4FuC3Ukh1pWeZQdUeaP8HaemG6HbdmpeHA==
X-Received: by 10.194.71.135 with SMTP id v7mr19882982wju.106.1454780775397;
        Sat, 06 Feb 2016 09:46:15 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Sat, 6 Feb 2016 18:46:13 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20160206174613.GA16774@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: [oss-security] CVE Request: Horde: Two cross-site scripting vulnerabilities

Hi

Can you assing two CVEs for those two vulnerabilities in the Horde
groupware:

1/ Cross-site scripting in XSS in Horde_Core_VarRenderer_Html:
--------------------------------------------------------------

Upstream commit:
https://github.com/horde/horde/commit/11d74fa5a22fe626c5e5a010b703cd46a136f253

Debian Bug:
https://bugs.debian.org/813590

2/ Reflected cross-site scripting
---------------------------------

Upstream bug:
https://bugs.horde.org/ticket/14213

Upstream commit:
https://github.com/horde/horde/commit/f03301cf6edcca57121a15e80014c4d0f29d99a0

Debian Bug:
https://bugs.debian.org/813573


Many thanks in advance,

Regards,
Salvatore
