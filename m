X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["813" "Thursday" "4" "March" "2021" "15:08:16" "+0000" "daniel gaspar" "danielvazgaspar@gmail.com" nil "22" "[oss-security] CVE-2021-27907: Apache Superset stored XSS on Dashboard markdown" nil nil nil "3" nil nil (number mark "U       danielvazgas Mar  4   22/813   " thread-indent "\"[oss-security] CVE-2021-27907: Apache Superset stored XSS on Dashboard markdown\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-27907: Apache Superset stored XSS on Dashboard markdown" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7597 invoked by uid 550); 4 Mar 2021 15:26:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29863 invoked from network); 4 Mar 2021 15:08:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=djYOvFht1ZVN1zZMIhwme8jVIqEVP8Y+P8rVhuSn5+U=;
        b=J0Jf2VE+pbg6xUS80eHNksue1kLjAL4INRXXH//rGNTI9fVGI8OqXPTKa+Sw6eHEWw
         b0DdGY+JyB9Iych7YwtLiTKfGn+fTLE9+eATbj6nTWEcR3PWoHX1XO3kGmWyzfjHItfZ
         A58GDdD4hlSHO8xRbLZEtRujXo9/QakfpPRhsQTBbSoywGaIEajl7Lh/+e/FU452Ujns
         LsC+TquRFQLNIo+9gZTCYB75o05ZuSFN39HskWgkiN7VTlH538Zvt0uG34Y8TIsbGQg2
         4rIzZw1P9m7R09nc0f4wUQBYGMj0eZyD7kYeZDpZhxxZV+gIapkEms5FD8OkRI9QnAe9
         Y8ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=djYOvFht1ZVN1zZMIhwme8jVIqEVP8Y+P8rVhuSn5+U=;
        b=mzbKvrV+GI4k02vDKtGShHpcbBhB9ozPVbahkxF6mYKpC4GFOZNBrOhTfh5h3GAy6l
         G7/1vLRm9/z4PXkkPlrtHZseZFXmJyXA0jZENzCMF4MJDFeqQKzQetp6Gnpw7EHjqCsi
         00puDSTNjzUbjNJ7whMA6mnGcjKP76BpmAthXl8ju4wuTug2RSfEm/dg43ODlsnYBK4L
         A3B42KtUa0p4v0pQe2+Nj0QwzjZQQW8piEea2om8jvqgWN1ZuyBiyuUjDOCnKwDyZhaD
         W5NJs8kAjeUws+XAjbSQAc07ptopJ+tUXNa+mbSkclxnkWw+PENKcLAJDqGi3J5yrbgZ
         fGgw==
X-Gm-Message-State: AOAM530MkysuwIzV3+PDkFI/pZSSjBKOpPnT8OAMw5T3jEkmBDRsOyMc
	sQpiZJDjjujtPfGIeSG9gU6eLWu+jZjt79zi//sBEHfpBw9FPQ==
X-Google-Smtp-Source: ABdhPJzZkrGAxUZHfR0ulnMu64petA5czf3H7I4c8gXgUKtdgWTIeUgBpzwYp0W+iQZM7zTRZcO+ePiRkLLy9Frd/dQ=
X-Received: by 2002:a17:90b:4c4d:: with SMTP id np13mr5182507pjb.81.1614870507442;
 Thu, 04 Mar 2021 07:08:27 -0800 (PST)
MIME-Version: 1.0
From: daniel gaspar <danielvazgaspar@gmail.com>
Date: Thu, 4 Mar 2021 15:08:16 +0000
Message-ID: <CALSkbjrEnXHaaq-QqvZN-JZ_8BWP3CLzZs10yZG8hWza4NMZpg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000f4578805bcb7567e"
Subject: [oss-security] CVE-2021-27907: Apache Superset stored XSS on Dashboard markdown

--000000000000f4578805bcb7567e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Description:

Apache Superset  up to and including 0.38.0 allowed the creation of a
Markdown component on a Dashboard page for describing chart's related
information. Abusing this functionality, a malicious user could inject
javascript code executing unwanted action in the context of the user's
browser. The javascript code will be automatically executed (Stored
XSS) when a legitimate user surfs on the dashboard page. The
vulnerability is exploitable creating a =E2=80=9Cdiv=E2=80=9D section and e=
mbedding in
it a =E2=80=9Csvg=E2=80=9D element with javascript code.

Credit:

This issue was reported by Gianluca Veltri and Dario Castrogiovanni of Cueb=
iq

--000000000000f4578805bcb7567e--
