X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["749" "Monday" "26" "August" "2019" "09:25:18" "-0300" "Carlos Eduardo" "carlosecg@gmail.com" nil "25" nil nil nil nil "8" nil nil (number mark "U       carlosecg@gm Aug 26   25/749   " thread-indent "\"[oss-security] CVE-2019-15525: Missing TLS/SSL certificate validation in pw3270\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-15525: Missing TLS/SSL certificate validation in pw3270" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22140 invoked by uid 550); 26 Aug 2019 17:31:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21838 invoked from network); 26 Aug 2019 12:25:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=xfVDEoz5RkmkcFe8/Np7/2Otd99w/caHk9GyCz7B/lc=;
        b=usxuE1d2Z+wB2/qjOv1rEyfQ70FM6nuMD3qFu2vC5KAKlKNq2HJ6NMsy3/tx4jg1Us
         kGjlFrKhwb0+0MoiWrf5OGofnmMAH+/1Q3GdYMzlocR2VlhKq97A4dMI840tAxxlpYCD
         DPxse2F/N9oxdgfRoW4fGjpSTb98b2J/n8j/Wpe0VGPzU/7jZbc1/n351+llibOZeW5x
         VYKOmbG3yN5ow94XxxXigzsXxiFJYb82hXfblsE7iF6Z1dyLAf/ms84/He297cSSC/Cj
         poa7ged9DjTpK/glM4S0l25UNuatD6oWSQd6EpPBqKL355Awwbr/WgligZHv/ewsfzvu
         Pu5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=xfVDEoz5RkmkcFe8/Np7/2Otd99w/caHk9GyCz7B/lc=;
        b=IUoBEQK1rtyzlzhPN05FmbTau5CLiW2H8W29exVD3qhDl9F8vFaRtQnVLzCKdw61ul
         Zm8q6m02hl4JqLM685aFcALb+Iu8V0YMwlu0p1YsTqogYPof1lsSF9L303WpJQgivDg4
         cifGXRvXV2Q4eTTYXzAJRHJpy87mQkq8+ccUNmtNoU/xknDZpF0qVM2MT+r0RyZD4n8I
         zeOP1SSLshHrI8LijPlkT6gJK5B2+N1LOj6vq0N7wUBVUQzh/b9SKYyi4g3DA003qExr
         qT9PTj08B4cbeoWCUglkS2HYmjpKdOD+qWUbcXxeeuyWUUhox6I1E/G4TAISQvLyJThq
         DCdg==
X-Gm-Message-State: APjAAAWby186WGleimLo/Ztt0OBAw84Mg5VXmAJWZSRFUB0IWSGqAKxz
	+4uYOXY2XzAHB0L3swYFeTE9mCENvD9xpM/NwDsmC1dK
X-Google-Smtp-Source: APXvYqwpASJB1Tri1u/O+d7aRZVyOULOYXShe7gJ+RW8E7HvqJLenCjpPZcD269kln6c17BrUdSHM3ZjDKU0BCuYSjM=
X-Received: by 2002:a50:c908:: with SMTP id o8mr18495756edh.187.1566822329795;
 Mon, 26 Aug 2019 05:25:29 -0700 (PDT)
MIME-Version: 1.0
From: Carlos Eduardo <carlosecg@gmail.com>
Date: Mon, 26 Aug 2019 09:25:18 -0300
Message-ID: <CAGrd=aPxL96DK6YLr30=Lw7si00wW=RHBmn7b5uSpHt1dQSBEQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000064c947059104408e"
Subject: [oss-security] CVE-2019-15525: Missing TLS/SSL certificate validation in pw3270

--00000000000064c947059104408e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

CVE: Missing TLS/SSL certificate validation in pw3270

Affected versions: all versions before 5.1

Description:
pw3270 is a GTK based tn3270 terminal emulator. Versions up to 5.0 are
vulnerable to a TLS/SSL certificate validation flaw, leading to attackers
in a MitM position being able to affect confidentiality, integrity and
availability of traffic between the client and host, including credentials
used. This flaw was fixed in version 5.1.

Mitigation:
Upgrade to version 5.1 and up.

This vulnerability was discovered by Carlos Gon=C3=A7alves.

---
Carlos Gon=C3=A7alves
IT Security Analyst

--00000000000064c947059104408e--
