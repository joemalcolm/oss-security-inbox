X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["470" "Sunday" "20" "May" "2018" "14:46:05" "+0300" "nullbyte" "seclist45@gmail.com" "<CAPbtD9m-rSCBh5S4EmW-VT5tLHPnp9UqUW4F6CicS4P-bbt3BQ@mail.gmail.com>" "19" "[oss-security] Reptile: a LKM rootkit written for evil purposes" nil nil nil "5" "2018052011:46:05" "[oss-security] Reptile: a LKM rootkit written for evil purposes" (number mark "U       seclist45@gm May 20   19/470   " thread-indent "\"[oss-security] Reptile: a LKM rootkit written for evil purposes\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31797 invoked by uid 550); 20 May 2018 12:35:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7423 invoked from network); 20 May 2018 11:46:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=8o+pZ2xkY/ZnLdO0vBVI8ZYgkZRpXOc808y3rjeWbHg=;
        b=n0833+2AO46ykct5hGeSAb2H39O4WvMEv/vDtnizkQp9YOaAe2ZdiRUdviuqOBUyDi
         j0gUjASQPRBdlxp8FdOwJRrqTOZ1dchujYaeAvh6hiiYE3WrL4LY8DKfGtbN8h6e3tvD
         vGNp04qFww8zuHBla1CucS/wyfmIR+P12rzYRbcrM73y1e/fkxSNEmYfB07JuzwtGoKT
         XKh5xsvL43xvCyIWxPYC4JduQ7vMNcL7QTkoScrKGOkUI0tm7295ViWDBLdzf7dxhZaL
         0SJ79fixRq7IujyY/zkkOGnv1HDbB7CuLIZ0L9YBunFmE1vOh8YC5XD58cLSNolQWyz+
         1sow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=8o+pZ2xkY/ZnLdO0vBVI8ZYgkZRpXOc808y3rjeWbHg=;
        b=QU4kGSLquoukvVnzWlutiNxlGOVpnw70AmrHi+bwNe9JDucIvmsYIB5UrYQKgLRLw8
         ZIQ17ExTkAV/iran93LZe6eui2Fr5Dl5K1SRqi72wo6HRG3XME83sWqBLcLTnKd2bWZJ
         AaB3Fwzz0oBYeng1Bv5WFpNIREk5gLYvvAP7/mB3kuzPP6OVRVZDDPy4FXT28mVx3xQ4
         m/hVKYYZ4EgwA1oE4vHhBOWjwNmIz0dXa4OO4D3czS3fUuUayUS0Yhkpmf2oRDYOIE9R
         thU/9WPA9wLDW1MryFUiym8EQ9C/mJDazfC1DXrgkvwnLwlE9mNZYnjFHQ06973zPlEV
         +Gbw==
X-Gm-Message-State: ALKqPwcd4EP4fliBun5P5Dn055zphX6B6NEnRNNnfkK/cryIqVqtLtmX
	wj5vRWUCNfwvZPWfItmEKVQULsdNtP/AS2Haq1lk3hoJ
X-Google-Smtp-Source: AB8JxZrdoCI7L87+TAiqdEyCPWjGyvv9iZVKIUCxSPX4aoEdfYcaC/ECbNPMR8h8YwLQF51wqA3HfTE5xAbA/rkN008=
X-Received: by 2002:a2e:6c10:: with SMTP id h16-v6mr9571919ljc.81.1526816766134;
 Sun, 20 May 2018 04:46:06 -0700 (PDT)
MIME-Version: 1.0
From: nullbyte <seclist45@gmail.com>
Date: Sun, 20 May 2018 14:46:05 +0300
Message-ID: <CAPbtD9m-rSCBh5S4EmW-VT5tLHPnp9UqUW4F6CicS4P-bbt3BQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000fb8f91056ca1ba3d"
Subject: [oss-security] Reptile: a LKM rootkit written for evil purposes

--000000000000fb8f91056ca1ba3d
Content-Type: text/plain; charset="UTF-8"

Features:

- Supported Linux kernel versions: 2.6.x/3.x/4.x
- Give root to unprivileged users
- Hide files and directories
- Hide files contents
- Hide processes
- Hide himself
- Hidden boot persistence
- ICMP/UDP/TCP port-knocking backdoor
- Full TTY/PTY shell with file transfer
- Client to handle Reptile Shell

Download: https://github.com/f0rb1dd3n/Reptile

--000000000000fb8f91056ca1ba3d--
