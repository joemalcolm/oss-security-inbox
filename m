X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["507" "Monday" "27" "January" "2020" "12:07:56" "-0500" "Nathan Gough" "thenatog@apache.org" "<CAEhjM2AWN+kRYtkUrUoia56nZGrefj==pc5RFaqEQ_5U9o1bGQ@mail.gmail.com>" "18" "[oss-security] [CVE-2020-1933] Apache NiFi Information Disclosure" nil nil nil "1" "2020012717:07:56" "[oss-security] [CVE-2020-1933] Apache NiFi Information Disclosure" (number mark "U       thenatog@apa Jan 27   18/507   " thread-indent "\"[oss-security] [CVE-2020-1933] Apache NiFi Information Disclosure\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2020-1933] Apache NiFi Information Disclosure" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24398 invoked by uid 550); 27 Jan 2020 20:03:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7281 invoked from network); 27 Jan 2020 17:08:22 -0000
X-Gm-Message-State: APjAAAWEDEU4sCSx+9R+rLmuT/yiCk53+PXPabdL0Ia8JG/Ki/eVolYZ
	DC1WSXCEhqX06O8M5eamkSpRAFX6GX1wjjOnYhA=
X-Google-Smtp-Source: APXvYqzXiS3rsiGjJMP7c3qXWQtzDJDpjt/HKsBO7JadK77m7AgrfQoRt+CtY72g+1ac4o4zZj5lKDWc8+FCYtQG+uo=
X-Received: by 2002:a6b:6b0e:: with SMTP id g14mr1455108ioc.71.1580144887565;
 Mon, 27 Jan 2020 09:08:07 -0800 (PST)
MIME-Version: 1.0
From: Nathan Gough <thenatog@apache.org>
Date: Mon, 27 Jan 2020 12:07:56 -0500
X-Gmail-Original-Message-ID: <CAEhjM2AWN+kRYtkUrUoia56nZGrefj==pc5RFaqEQ_5U9o1bGQ@mail.gmail.com>
Message-ID: <CAEhjM2AWN+kRYtkUrUoia56nZGrefj==pc5RFaqEQ_5U9o1bGQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000b7936d059d2226f8"
Subject: [oss-security] [CVE-2020-1933] Apache NiFi Information Disclosure

--000000000000b7936d059d2226f8
Content-Type: text/plain; charset="UTF-8"

[CVEID]:CVE-2020-1928

[PRODUCT]:Apache NiFi

[VERSION]:Apache NiFi 1.10.0

[PROBLEMTYPE]:Information Disclosure

[REFERENCES]:https://nifi.apache.org/security.html#CVE-2020-1928

[DESCRIPTION]:As reported by Andy LoPresto, the sensitive parameter parser
would log parsed values for debugging purposes. This would expose literal
values entered in a sensitive property when no parameter was present.

--000000000000b7936d059d2226f8--
