X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["557" "Wednesday" "11" "October" "2017" "11:40:33" "+0800" "Leon Zhao" "leon.zhao.7@gmail.com" "<CAPwMjngHAWa4F-_hRffJRkNk1JmhKqEFojJyd0VUF+2q5sGN7A@mail.gmail.com>" "26" "[oss-security] CVE request: Two DoS vulneribilities in libextractor" "^Date:" nil nil "10" "2017101103:40:33" "[oss-security] CVE request: Two DoS vulneribilities in libextractor" (number mark "        leon.zhao.7@ Oct 11   26/557   " thread-indent "\"[oss-security] CVE request: Two DoS vulneribilities in libextractor\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32511 invoked by uid 550); 11 Oct 2017 03:51:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26106 invoked from network); 11 Oct 2017 03:40:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=H2wPUui6LAcRz4SDdgsJwrGqn9Lhm+VEmjlJgn0Twwk=;
        b=Albupzy0GxjnNGmqpij/cwHRncICrEUuOmX+R99Ra9zBeEQUWNBdqILO0A1CX7um07
         G0C1rta8ju5OOm4/5QJaGFxcscHgmkfxPsYaeKnG17PEn6M7zKWeT7I+stkDLm5ieJVG
         mQIVDfKW2szoh3R1JRUn3vWtksxCm6s60yI+MWT0DrmV0+rNRcF9n2UyjmEosdB4ij4x
         7/RlEnnl/Wcnc71/UQXPJ3yvOe0CGnn75d4ZmaMc8XV2QGGOb5/m0/QevqKXzcQM4ZJ2
         fwh8XFEbWF1wVWghBzvESMY7Au0M+HyTfXqracIvCG/AniYex2i8VzYvmvoTABxV4+oN
         mVKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=H2wPUui6LAcRz4SDdgsJwrGqn9Lhm+VEmjlJgn0Twwk=;
        b=jGuvKzktLKbovvoh99BsR8NEkkSzmqVGWjE2Z4QMV9UtmiRu+IlR7FP9xOcbU3KNdV
         817Tg/D7oMdJ7VgpMO31EwvoeliDU1j4Hy3MzmEIo8tEYD9jdOuAbN6JkBCOd7DoCQ7/
         M5ANWTCINsmrlOujuVJMToydKRXR/2L4uDkCpkvSvJWEt4QJKq1/UpweQ55rDdBYs/Bk
         JIhJBUSk1XIPCNww2N509n1/cE96F6BdqPTPinOVRENhrEfLZ8Fnk0VIRtL1fy1zHlxm
         iAJ5sYCvnUX2cT0MCnMVYPbhnau3CChfVpdy3NEVFTpJxoG0NTRtN5UZLZsqFLKBrKrN
         geRQ==
X-Gm-Message-State: AMCzsaUnsdwcdPiQqz9pLFLV6OOgHKiZUPxBpt5LriEcde1t17AKvKaV
	fSupRE3a8LUVfhA4YGWw2ZHq2Qun+LQO6dcoAZRifw==
X-Google-Smtp-Source: AOwi7QDWButi9aMlxjWpr7lfVh8JigW3PivIxGsRHxxf3MMjc4YYzLOiqNGz41avKyCa/Xo0glUvq3joXKo07K8m0HE=
X-Received: by 10.176.91.15 with SMTP id u15mr5891862uae.77.1507693233389;
 Tue, 10 Oct 2017 20:40:33 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAPwMjngHAWa4F-_hRffJRkNk1JmhKqEFojJyd0VUF+2q5sGN7A@mail.gmail.com>
Content-Type: multipart/alternative; boundary="f403045f8bc29b45b7055b3d2fee"
Date: Wed, 11 Oct 2017 11:40:33 +0800
From: Leon Zhao <leon.zhao.7@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: Two DoS vulneribilities in libextractor
To: oss-security@lists.openwall.com

--f403045f8bc29b45b7055b3d2fee
Content-Type: text/plain; charset="UTF-8"

Hello oss security,

I found two DoS vulneribilities in libextractor,

Affected version
1.4

1. Divide-By-Zero
https://bugzilla.redhat.com/show_bug.cgi?id=1499599
http://lists.gnu.org/archive/html/bug-libextractor/2017-10/msg00002.html
Fixed

2. Null Pointer Dereference
https://bugzilla.redhat.com/show_bug.cgi?id=1499600
http://lists.gnu.org/archive/html/bug-libextractor/2017-10/msg00003.html
Fixed


Best regards

Zhao Liang, Huawei Weiran Labs

--f403045f8bc29b45b7055b3d2fee--
