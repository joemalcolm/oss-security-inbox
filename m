X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1261" "Tuesday" "22" "October" "2019" "09:15:06" "-0400" "Mike Dalessio" "mike.dalessio@gmail.com" "<CAGJbjKasPtcqfRSrsyg=Ae_oM6xknf9V4qyUoFW6aTsL3rLkaw@mail.gmail.com>" "49" "[oss-security] [CVE-2019-15587] Loofah XSS Vulnerability" nil nil nil "10" "2019102213:15:06" "[oss-security] [CVE-2019-15587] Loofah XSS Vulnerability" (number mark "U       mike.dalessi Oct 22   49/1261  " thread-indent "\"[oss-security] [CVE-2019-15587] Loofah XSS Vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2019-15587] Loofah XSS Vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22295 invoked by uid 550); 22 Oct 2019 14:06:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25914 invoked from network); 22 Oct 2019 13:15:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=Q21nk4CHi2JRX0GQbMmqKaYYD5vmz9CDSkqdhVVPPBk=;
        b=K73Yj+UmShqaEjuQfhwlP/ozQB2Cy91RnY0VljCK3lw6zk+615z0AQZhIydVznjGn+
         +IcUazgvmusDaDj9cUJSDqz3C/MkDUSj/ZjTt0Cuj1TkbIo2Mu8Ojpwk8qPxLiXRFKIY
         vcVXfPVVCh8S0BqotGEY8ITDGKs79BwsYcKWHclcQWea7QBKXclmQ2kKrXCiNTVvjGnC
         gkLZ2qZsxB15WxkfSTi1aK1PpUT7FZG7E7vm/uLhuO2x7Qals7ZxXep9FiAX42jDbfyU
         Zx+BcEb2qt+Mw47LqG7+6DM/HrOC7yiy6Uh6k/9Uuy8v2i83EE2tXjMw45cIdKbRTxp1
         XxzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Q21nk4CHi2JRX0GQbMmqKaYYD5vmz9CDSkqdhVVPPBk=;
        b=rWAFOrqrGuaj9I7ovE1KcXmMGGHMj55EAV1517kqvuZzlK5sD+Hb6U9kNbQGee1/E2
         v7GSQPQLPZy7MvKztZv5mM3jyU2lgvlKl+Rt9MHcZUpG1pY5GyLw4MWWGD3LFate2RNd
         gL1LjbSHURTDWq6YPdQCbX2guSfIVhfHc/0+YRHndwWYwiXoyMMfJcwg5Q+ZGw4K0q1x
         T3DyXW2FfTClY5urnPLJQkXVYTJmQIpC/5qAg5ZbCsyN4ffTKV/N/XebY5+dMYkmzv99
         zNUr+U1+0/k7S844XwRnR553QyPXeOnA/jcaYVl+jHSqjgG4mmtcoIL9OQlN/VD39H7v
         6zRg==
X-Gm-Message-State: APjAAAWrSwQM8vBtFwK8slPEQ90N+cZuhjg9G6u9bgEM0GEH2zf7aAXc
	SX9RCYNt9io5LupnI7xLOJYBJYmdxViXxMGn4v8=
X-Google-Smtp-Source: APXvYqynYx6T2c2seZ40LMMKSSMOs04MmaYc9Fhg2JOX2JGTQJKQvMrWFc4jkx8spEkgsS/EMJGZGTMQ5wBw4Vx1z+U=
X-Received: by 2002:aca:1814:: with SMTP id h20mr2960484oih.85.1571750117150;
 Tue, 22 Oct 2019 06:15:17 -0700 (PDT)
MIME-Version: 1.0
From: Mike Dalessio <mike.dalessio@gmail.com>
Date: Tue, 22 Oct 2019 09:15:06 -0400
Message-ID: <CAGJbjKasPtcqfRSrsyg=Ae_oM6xknf9V4qyUoFW6aTsL3rLkaw@mail.gmail.com>
To: ruby-security-ann@googlegroups.com, rubyonrails-security@googlegroups.com, 
	oss-security@lists.openwall.com, loofah-talk@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000006896a305957f97ae"
Subject: [oss-security] [CVE-2019-15587] Loofah XSS Vulnerability

--0000000000006896a305957f97ae
Content-Type: text/plain; charset="UTF-8"

Hello all,

A *medium* severity vulnerability has been identified and patched in Loofah
v2.3.1, which is a dependency of `rails-html-sanitizer`. This issue has
been assigned CVE-2019-15587.

The public notice can be found here:

  https://github.com/flavorjones/loofah/issues/171

To save you a click, I've reproduced the contents of the announcement here.

---


*# CVE-2019-15587 - Loofah XSS Vulnerability*
This issue has been created for public disclosure of an XSS vulnerability
that was responsibly reported by https://hackerone.com/vxhex

I'd like to thank [HackerOne](https://hackerone.com/loofah) for providing a
secure, responsible mechanism for reporting, and for providing their
fantastic service to the Loofah maintainers.


*## Severity*
Loofah maintainers have evaluated this as [Medium (CVSS3 6.4)](
https://www.first.org/cvss/calculator/3.0#CVSS:3.0/AV:N/AC:L/PR:L/UI:N/S:C/C:N/I:L/A:L
).



*## Description*
In the Loofah gem, through v2.3.0, unsanitized JavaScript may occur in
sanitized output when a crafted SVG element is republished.



*## Affected Versions*
Loofah < v2.3.0



*## Mitigation*
Upgrade to Loofah v2.3.1 or later.

--0000000000006896a305957f97ae--
