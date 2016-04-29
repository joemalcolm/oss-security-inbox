X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["585" "Friday" "29" "April" "2016" "09:38:28" "+0200" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdTKJd7hEo=YmpPmpuB76XDumiMORWJXGwiacq83_aUPmg@mail.gmail.com>" "19" "[oss-security] CVE request: Mplayer/Mencoder integer overflow parsing gif files" nil nil nil "4" "2016042907:38:28" "[oss-security] CVE request: Mplayer/Mencoder integer overflow parsing gif files" (number mark "U       gustavo.grie Apr 29   19/585   " thread-indent "\"[oss-security] CVE request: Mplayer/Mencoder integer overflow parsing gif files\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28615 invoked by uid 550); 29 Apr 2016 07:38:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28597 invoked from network); 29 Apr 2016 07:38:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to;
        bh=3PeBemG0aOU4zsh0iJf0TbXC/KbF4GhWeV7sk8gcyhs=;
        b=iiVcgvf/maisijrhVakiXEXkCm9m3ApLav8+dO+k0ptU2nFShAaRcJ2wRm/VsNonWL
         6GxpCGDYD0OuFpJwvESs17RCTgqi4h0VVIdKaFXxvSauQO2l/l3v6IbjjYsCyv9920sS
         PatQD1KjEzJG1xTtwRBG1xf0MXVCeXqWyXpeM7tTNA4pW8ES6QKuApZy54H/HNrT8nL5
         JLEv6Iy4D6FmB+iWVldhhZ2XBJmRKdpLZP7enPGM/uZDK0DBdl6wtj/qlbADBVP9Pzx1
         D2DeC85hjsGGV6xDfEojPgbeK0XLvapoIEVJzg6AvdjheuBb1A3QCrRWG7wmPNLJOlNr
         DIjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=3PeBemG0aOU4zsh0iJf0TbXC/KbF4GhWeV7sk8gcyhs=;
        b=Sk4F/uA3W0RETl5Ry2aA1hIYWoUsX+OT0+/SOdtzufx6kQnEEqM3RKMCrMIPk7U7rN
         QUrF40fxQTdIv62RtGfx90rx8DVW9p+lI7QYYhOygHHFXS0BY7PcdrK3JcQ0K/ahpY4J
         dDQFuhI0464ilLme7mxXoLBl8GhkfBGUAH5pKWkdeXmI+BouCjcuqrOP6jdEu6mEKI0h
         Pgfh7/J1Wp6y3ue3yWjPj8i4jyrCUumP7NJ2d7yXf8Pro8mzYxo3ATdlhXWddYmEsBJw
         KAaBhjv7s2QEz7EHeBQL5ZYQb+8HVR88vDkmRU8kdJzyieicp2lima7LyVBn7d5z2oxl
         kIew==
X-Gm-Message-State: AOPr4FWFPla/qskPYa12RrUl6yYa+NN2i4zsD9Qlpg/yVdAvvkPFvtzgAwckG2NzxUoR2+eQw1fd54l+h/+GQA==
MIME-Version: 1.0
X-Received: by 10.25.165.135 with SMTP id o129mr8374568lfe.162.1461915508573;
 Fri, 29 Apr 2016 00:38:28 -0700 (PDT)
Date: Fri, 29 Apr 2016 09:38:28 +0200
Message-ID: <CACn5sdTKJd7hEo=YmpPmpuB76XDumiMORWJXGwiacq83_aUPmg@mail.gmail.com>
From: Gustavo Grieco <gustavo.grieco@gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a113f1d68948b5005319abaad
Subject: [oss-security] CVE request: Mplayer/Mencoder integer overflow parsing gif files

--001a113f1d68948b5005319abaad
Content-Type: text/plain; charset=UTF-8

Hi,

A crash caused by an integer overflow parsing a gif was found in the last
revision of mplayer. It seems to affect older versions too. It was recently
fixed (r37857). Technical details and a reproducer are available here:

https://trac.mplayerhq.hu/ticket/2295
<https://github.com/stedolan/jq/issues/1136>

I verified that this issue affects mencoder, so you should check if you are
using it for conversion of gif files. This crash was found by QuickFuzz.

Regards,
Gustavo.

--001a113f1d68948b5005319abaad--
