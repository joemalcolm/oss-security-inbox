X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["416" "Friday" "19" "February" "2016" "21:06:49" "+0530" "Shravan Kumar" "shravan.kumar@securelayer7.net" "<CAGkEBR4yVoadxHjbBO4WniwY+hWoV3jkOeWqDeCNon5aXk78dQ@mail.gmail.com>" "16" "[oss-security] CSRF Vulnerability in Refinery CMS" nil nil nil "2" "2016021915:36:49" "[oss-security] CSRF Vulnerability in Refinery CMS" (number mark "U       shravan.kuma Feb 19   16/416   " thread-indent "\"[oss-security] CSRF Vulnerability in Refinery CMS\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26020 invoked by uid 550); 20 Feb 2016 22:00:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26288 invoked from network); 19 Feb 2016 15:37:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=securelayer7-net.20150623.gappssmtp.com; s=20150623;
        h=mime-version:date:message-id:subject:from:to;
        bh=m/1PyD+JoosaxM9dNsVmVrBIVMv/gdRt+Y7Qn9RLkIk=;
        b=K82iDxQakCnS1kOflR7D7XH0DRgK8mhOp9rIeguxLJYWGbHcsXS+rHNZy4WPQqd31R
         DSbBhiPnaUaVrPuPAhf6xC3T7cw9J8md4HokcguNSAf/8x7iBFn5YKfnXK6eeqYpvWrV
         AaahehmPI7k7ElKwQv3MlhyKN+oNPlgfj8lNMTcT/jesduCwyZXvsGp4eqB9qiFfuBF2
         2sClZMrgrncqi25RcFAZ7x/JgUKOsp+aEYx7oUx7j3oEKdD1XK4gjGiAMGIyAsv3eRcP
         6LsGwTBW+5xkv6160dq6Sijv0hQWkU5d5D6K8VX8PU8HaqIPB+gjy76PV93ZbNEphnOE
         RPrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=m/1PyD+JoosaxM9dNsVmVrBIVMv/gdRt+Y7Qn9RLkIk=;
        b=GVuUemjS9tJDMl3J6attNN9aULmjZ7cu3su/RM0cOG7KIyD1R9LQ1pv8XNiOCNjZWw
         hHIRRQZ+UGDbT59DN8bcUlEICgfT8acP1Gx3rZ2CT1WaIMblutg/Abf917tGx3WfEkiL
         CqVbD+DHToit0HYYwpIC+5LDW09Sr9NK8fSvuqoq2Y0vgCX/uU6tFi7GKEkS6J2FZiLh
         Xxd/hVqLhodvmJfyRL2oG8dQyeIn2Cn8siSviJ6eT5VreuFArF5vtbO9bo+k+L3d1Tur
         DgJquemD2RwTYhpNzBc6CnbsXwldTp4IHvbDwN2qgj9PxLEeojz95vk4Pujc9FjFyJYm
         MSWw==
X-Gm-Message-State: AG10YOToFEuGDFSLrSxgOD5YDga4qEduxU4l7vHrAZeLvLeKoxFr52MothvOtwpZk47fI1eoVDiRZ4TZH9Rh7A==
MIME-Version: 1.0
X-Received: by 10.50.66.238 with SMTP id i14mr2352558igt.74.1455896209551;
 Fri, 19 Feb 2016 07:36:49 -0800 (PST)
Date: Fri, 19 Feb 2016 21:06:49 +0530
Message-ID: <CAGkEBR4yVoadxHjbBO4WniwY+hWoV3jkOeWqDeCNon5aXk78dQ@mail.gmail.com>
From: Shravan Kumar <shravan.kumar@securelayer7.net>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=047d7bdc109c66806e052c21405e
Subject: [oss-security] CSRF Vulnerability in Refinery CMS

--047d7bdc109c66806e052c21405e
Content-Type: text/plain; charset=UTF-8

Hello,

I would like to publically disclose  CSRF Vulnerabilities Found in Refinery
CMS.

The Technical details and the POC can be found in this report

https://securelayer7.net/penetration-testing-reports/Penetration-testing-report--open-source-Ruby-on-rails-Refinery-CMS.pdf

Thanks & Regards,
Shravan Kumar

--047d7bdc109c66806e052c21405e--
