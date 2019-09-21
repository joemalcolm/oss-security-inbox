X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["561" "Saturday" "21" "September" "2019" "08:59:28" "-0400" "Rich Persaud" "persaur@gmail.com" nil "17" nil "^Date:" nil nil "9" nil nil (number mark "        persaur@gmai Sep 21   17/561   " thread-indent "\"[oss-security] OSS platform security \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] OSS platform security " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28478 invoked by uid 550); 21 Sep 2019 13:03:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27917 invoked from network); 21 Sep 2019 12:59:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:content-transfer-encoding:mime-version:date:subject:message-id
         :to;
        bh=KAuG7h2jsitxM2DMAboPVmLc82FckVVIK5yhMVGM6wM=;
        b=LfyV/ZYGn5qVLYn3zRwCbFdGvQFwMeMsftnuwqG5fWRCbinv+gIqjaaLF/PLoKE4sx
         OJas2oi4N11ty96eORy4/yvzaAE8Mi4fwRpP8R5dPVswxtfXvchQ+XfSyvvHrL7KknSW
         G3IacUj/ssKZjK8BXN769rNq25ExIz1MzYKz/HyOF2VJXpVOSA7JGV9poOSH/8Rruj7t
         0dFY1R4sE6WOtfeMtDK0Toc8zDNA0vWA16/ZkETxdJz/3b8cLcy2rYMOBnnhWj0UCxLi
         Q1tD+ornGne3WIYrvUvSYYCKwV8d7JX0ghJuOZVF/SJxsDDhasu89j2o8iRxu6GMRMuh
         0Dqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version:date
         :subject:message-id:to;
        bh=KAuG7h2jsitxM2DMAboPVmLc82FckVVIK5yhMVGM6wM=;
        b=KUGeYCC/QYxf9Uf58gg29ezzEamAOrLANzU6Rq9oO0CP/yaJJu7vrY1TCyLkwe+zpf
         7TCiURPc3EyxaHzewR0hy2/uizcVlKo9XBW22rOiHRIcD0z01vNlRQAAr+/idmuAMbKW
         Q2Qjh04Y+GWL3jXyOIpehvE8MbNGPiVPYu8KiT3Yqwz7pR9nITYfu32ZUNYGX906WAnS
         RG5nDnH5RymW3YYM/nxiBTGTWcH/c2bTdVH5HayQReMlUoXxJWK3Nuuzvi2RUoThWP5Y
         pd8aGPmGbfpgKz6MCtUbyUQ3ylN77oDcwGfaWsVoefwSGNWO0XbInUAvWU+ytdJJuchg
         +P8A==
X-Gm-Message-State: APjAAAWR+EPTXobbiS0dy3jE0aVfIETB5CnS/m4GBFHxh7j3Iwe+wMrC
	3lwvUXUN/8IqNIpAniMNP/JOgG1q
X-Google-Smtp-Source: APXvYqwIqZOYi9mvjdn0iimub7v9B60I6d7KKXeZquWe1Pr/eslT0Xu7GS9+OfBsnYoh9G9/uWt2wg==
X-Received: by 2002:ac8:5143:: with SMTP id h3mr8209056qtn.26.1569070769940;
        Sat, 21 Sep 2019 05:59:29 -0700 (PDT)
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (1.0)
Message-Id: <B2F781BF-7762-4FCF-99FA-4B46A349C49B@gmail.com>
X-Mailer: iPhone Mail (16G102)
Date: Sat, 21 Sep 2019 08:59:28 -0400
From: Rich Persaud <persaur@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] OSS platform security 
To: oss-security@lists.openwall.com

If you are working on open firmware, boot loaders or virtualization, there =
is useful content and references at the conference links below.

Rich


Open-Source Firmware Conference, Sep 3-6, 2019
2019 slides: https://osfc.io/schedule
2018 videos: https://osfc.io/archive

Linux Plumbers 2019 Secure Boot microconference, Sep 11, 2019
Notes: https://etherpad.net/p/LPC2019_System_Boot_and_Security/export/html

Platform Security Summit, Oct 1-3, 2019
2019 speakers: https://platformsecuritysummit.com
2018 videos: https://platformsecuritysummit.com/2018/videos

