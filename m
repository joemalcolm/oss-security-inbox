X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["416" "Wednesday" "16" "September" "2020" "12:27:58" "+0100" "Kaxil Naik" "kaxilnaik@gmail.com" "<CAH5JyZrUWahjsjoU4pRRTSJwcCxcn_VqybXvhkpVdhwU_TmbKA@mail.gmail.com>" "17" "[oss-security] [CVE-2020-13944] Apache Airflow Reflected XSS via Origin Parameter <= 1.10.12" nil nil nil "9" "2020091611:27:58" "[oss-security] [CVE-2020-13944] Apache Airflow Reflected XSS via Origin Parameter <= 1.10.12" (number mark "U       kaxilnaik@gm Sep 16   17/416   " thread-indent "\"[oss-security] [CVE-2020-13944] Apache Airflow Reflected XSS via Origin Parameter <= 1.10.12\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2020-13944] Apache Airflow Reflected XSS via Origin Parameter <= 1.10.12" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11916 invoked by uid 550); 16 Sep 2020 12:07:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19567 invoked from network); 16 Sep 2020 11:28:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=lxkMzFqkvChuy5nWqJZwnzrYvfBtdj6CvnSvoz8tpZ8=;
        b=Rww5AtbJFJn5r08Azaz2SOzFNm+hKkE9Bz8qWi472wPLNU9krCUPZCGjdZbljiqPy8
         EyJAT2MbwKJV6Yrp52fQowks3ZKS+fE1BieNtedS5Z76o3hAr6Ye2qyr7glfXX3jI0/p
         utPlZ7HzAEjK7K2+Luay6bVc5W0qo0VpHXeN9fqWqwTlhUABZhVAL0b9QRylct+6Z7Be
         fFqDVK7axTkR+kG5qrFia7Iw+Cw1uj/kSMx1hhTef9cMDEJFs3smZ/z85Gcy90manIud
         W3lRNA19E24BsQeiAv9zkkYl3d48Usu+RLSicah9KgvEkPFj2nJhCoTDBmKbCbOlgPkS
         xUFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=lxkMzFqkvChuy5nWqJZwnzrYvfBtdj6CvnSvoz8tpZ8=;
        b=oZr2l/MmEkN63ZoEotDbBkPK3ghCn67chfJym9pVorPSI8HOcgBO+sFPGbP9DcPg+Z
         GJGwmhFSUkiHzpbjFTUd7ZqVcg0VrjH+gbTx9oCZvSADVJ2iM/Es+B74PpRv2QcBztr7
         7lUr/Kv0dQvHAtYO4rKLM1x9B/tMwL4yJb8F74VL8B4RsGVRNBCDshbjL9Mc0Kb9KQc2
         TIMdxQ7MFSTMfNwgruheViRcFL0G4L0FfotOezzL3wiinhgvK9j1MVjNcaFFdpfJEdy6
         nFTu45lzsItG5gk3RSMItQ+q7+WaEwU0NPEO0TSqcR5qe4WyBt7oYGFyhX6NqYXGabuk
         getg==
X-Gm-Message-State: AOAM532K0LxYAMTDqsUfINiQ8rx5U8QNegt2bSTR0mRiJlqcwHQK3edS
	381flGNv6hEx9bCUxLu5Ph5V5JEDID/61LoZ5MOQHOWq37+1nQ==
X-Google-Smtp-Source: ABdhPJwWhXyYMlrp19qBwYrV3IRab+MsUJa7slf+hyq4sjqEcMxgP67Oo5fOJXGsxewNNcYHWxrlxWE866qwakrEHvg=
X-Received: by 2002:a17:906:8508:: with SMTP id i8mr25996009ejx.390.1600255688895;
 Wed, 16 Sep 2020 04:28:08 -0700 (PDT)
MIME-Version: 1.0
From: Kaxil Naik <kaxilnaik@gmail.com>
Date: Wed, 16 Sep 2020 12:27:58 +0100
Message-ID: <CAH5JyZrUWahjsjoU4pRRTSJwcCxcn_VqybXvhkpVdhwU_TmbKA@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: dev@airflow.apache.org
Content-Type: multipart/alternative; boundary="000000000000e2f3b105af6c8f79"
Subject: [oss-security] [CVE-2020-13944] Apache Airflow Reflected XSS via Origin Parameter <= 1.10.12

--000000000000e2f3b105af6c8f79
Content-Type: text/plain; charset="UTF-8"

Versions Affected: <= 1.10.12
Description:
The "origin" parameter passed to some of the endpoints like '/trigger' was
vulnerable to XSS exploit.

Credit:
The issue was independently discovered and reported by Ali Al-Habsi of
Accellion & Everardo Padilla Saca.

Thanks,
Kaxil,
on behalf of Apache Airflow PMC

--000000000000e2f3b105af6c8f79--
