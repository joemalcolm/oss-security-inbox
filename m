X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["727" "Tuesday" "9" "March" "2021" "22:48:11" "-0800" "Will Glass-Husain" "wglass@apache.org" nil "19" "[oss-security] CVE-2020-13936: Velocity Sandbox Bypass" nil nil nil "3" nil nil (number mark "U       wglass@apach Mar  9   19/727   " thread-indent "\"[oss-security] CVE-2020-13936: Velocity Sandbox Bypass\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-13936: Velocity Sandbox Bypass" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5521 invoked by uid 550); 10 Mar 2021 10:10:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28233 invoked from network); 10 Mar 2021 06:48:34 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=+vK/hM/yefVTBBtPueK1xztKURntkpPIOL0pK1Z6uM4=;
        b=sEWK/kVGYmymr3EBBK1YcdN+u8tLyUuuXXiqUvN5tyBQl61/imPd1toBbfLJz9//5a
         oIL4a7E0jCRW9xpvv/7afc8eRhnG+yAyrpmV6n9+ng/iacqE4TDAt5auBdugDgPc4xq+
         O/Sc5dubspQxturcQkGAlFoVA3UixZutEC9YmE6QE5s9EV92f7yaZLlLYDKBhMGJdnyg
         A3EW3Ct8Da9WKWtt/kP2ffp9rWmm50+8cCnYyHahw3Ls1Fn7N1OwNiJtYHNmMgUQHFb3
         Na+QOOOLJUO7L0GxXMNKj8WYZz7tBaewnE8zDjGYVWugoLhZYLMTvVGslQ9NdyM28uW/
         Vvhw==
X-Gm-Message-State: AOAM532uX3X1TNF2bqZ4Gk/1YCQEvAOE+7AoYSMxfM2MCenoVIEIGeqL
	8cS4DQ5TZBWt4cD42BIjw75PH9xabPqTpW2WN194VpGg
X-Google-Smtp-Source: ABdhPJwLT+dSXi3w59eNtm0QUtd/cY32hM9lEoflVfEHA43Vr1d2hQTsO33TbpssefYobh6vlPMjQ4iyypjW82e1xbE=
X-Received: by 2002:a9d:644a:: with SMTP id m10mr1556784otl.233.1615358902706;
 Tue, 09 Mar 2021 22:48:22 -0800 (PST)
MIME-Version: 1.0
From: Will Glass-Husain <wglass@apache.org>
Date: Tue, 9 Mar 2021 22:48:11 -0800
Message-ID: <CADDz7ZtCRimpVJMqO=gz6F+TWf-NbR8j8n7HvcpPNYH2Mz3maQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2020-13936: Velocity Sandbox Bypass

Description:

An attacker that is able to modify Velocity templates may execute
arbitrary Java code or run arbitrary system commands with the same
privileges as the account running the Servlet container.  This applies
to applications that allow untrusted users to upload/modify velocity
templates running Apache Velocity Engine versions up to 2.2.

Mitigation:

Applications using Apache Velocity that allow untrusted users to
upload templates should upgrade to version 2.3.  This version adds
additional default restrictions on what methods/properties can be
accessed in a template.

Credit:

This issue was discovered by Alvaro Munoz pwntester@github.com of
Github Security Labs and was originally reported as GHSL-2020-048.
