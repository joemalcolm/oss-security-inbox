X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3671" "Saturday" "7" "May" "2016" "23:40:38" "+0200" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdRgkmEjLHf4-QejK6x8LSNupa4XKj3N_izTUBjt=HFFbw@mail.gmail.com>" "74" "[oss-security] CVE requested: two stack exhaustation parsing xml files using mxml" "^Date:" nil nil "5" "2016050721:40:38" "[oss-security] CVE requested: two stack exhaustation parsing xml files using mxml" (number mark "        gustavo.grie May  7   74/3671  " thread-indent "\"[oss-security] CVE requested: two stack exhaustation parsing xml files using mxml\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15411 invoked by uid 550); 7 May 2016 21:40:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15393 invoked from network); 7 May 2016 21:40:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to;
        bh=ALhTgbLYxuHNRjLt8XcturQnjT9MeDXZRzXE54bUPXw=;
        b=OGG2CeRyb1A2PVCqKrCFwAr6C4M3oS3qWeWRttEVGxFfnGjq2per4fBxPzmAJBT1UO
         hbXCRcmJE8I9yR8OJYkZ4tjrPhqsyAzcgqZxJjtTV3EWCFzfQwJdGfcmEzWimFhDiPGH
         sT4FPx4og0ACT+cdOn/pT70bnScHaOUCxqBsPRvt2X9WUzTNGpyJ/TDlk3AL8yI5OA8H
         RrYA08kpDD8ZAW7k7sbhzYz8QRcASdHxZ8fVqfGoPVPVNDkqu6Yf2MCxKWqxiJsC7dTz
         VmdWtKLyxnAqeCiXuaJAVQTDzJql5O8wTPPhF2i1OhvW9pftv39JtJXCQp3S66o2x9s0
         t7SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=ALhTgbLYxuHNRjLt8XcturQnjT9MeDXZRzXE54bUPXw=;
        b=bhy2D2mizpsh0OSe1y1y7mkoUpMoTSLJgWUOEjAaL5o9MajTpYkpfWp9awu8TN+OuZ
         cQcAyWEMfttvKXeSGLyF0MFIsOa/Wg+1bkC5mbWj4YC6S+eb1+HjfVs+RpkQdLqG0iuu
         A8/lbaLLKcGfSrSIWnhuz2sZ62ZurJQiCruNd+2JssmKYgeKmJilOs11X1RPCDjnzchL
         fmF0ouEM+p/19o/EMaMGdF5/DBUOzGyTG71Q1QQMfW9Vy9DAUkekvKItPKwkt750EwDj
         rCPNg4pxCKs47fAhwU+ELTNWqlgOHoPPQP9bf3qgCokS98zBNScgbq3we7ELJFOFBBD3
         BYaw==
X-Gm-Message-State: AOPr4FXLihN8LmQWQVNpMZpdZCbej9sO7NRkU7d+7PNkN74fiFRpcD/FRox4uxx46vZw3aQiwDfmxt8WB3JqFw==
MIME-Version: 1.0
X-Received: by 10.112.161.41 with SMTP id xp9mr11814491lbb.133.1462657238357;
 Sat, 07 May 2016 14:40:38 -0700 (PDT)
Message-ID: <CACn5sdRgkmEjLHf4-QejK6x8LSNupa4XKj3N_izTUBjt=HFFbw@mail.gmail.com>
Content-Type: multipart/mixed; boundary=001a11c26b2a1f07190532476d26
Date: Sat, 7 May 2016 23:40:38 +0200
From: Gustavo Grieco <gustavo.grieco@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE requested: two stack exhaustation parsing xml files using mxml
To: oss-security@lists.openwall.com

--001a11c26b2a1f07190532476d26
Content-Type: text/plain; charset=UTF-8

Hi,

We found two stack exhustation conditions that can easily crash mxml
when parsing an xml. Both issues are affecting versions 2.7 and 2.9
(and probably others):

* Recursion using mxmlDelete at mxml-node.c:217 (stack-exhaustion-1.xml)
* Recursion using mxml_write_node at mxml-file.c:2739 (stack-exhaustion-2.xml)

Found using QuickFuzz + Radamsa. Reproducers are attached.

Regards,
Gustavo.

--001a11c26b2a1f07190532476d26
Content-Type: application/x-gzip; name="reproducers.tar.gz"
Content-Disposition: attachment; filename="reproducers.tar.gz"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_inxobqko0

H4sIAHtgLlcAA+3YT28UhwHGYc75FIMr4dPCLtimwn8QhVaqVKk5kEOFOMxs
LIICtoRJRb99Z/3axjGk9ED7Ns0zet7ssjM7v10ULnv2flz/uDj+8MP409n7
16cni9XdD2/f3Pqqx3K53NvbGebH1cPd5fXH+dnu3sO9neWwuv9w9WBn9/7O
3mpYrnbmM7eG5df9GJ8/5q89vps/yqsvXPel88vzY7h6/JUcB9MRAL8V7T5A
tPsA0e4DRLsPEO0+QLT7ANHuA0S7DxDtPkC0+wDR7gNEuw8Q7T5AtPsA0e4D
RLsPEO0+QLT7ANHuA0S7DxDtPkC0+wDR7gNEuw8Q7T5AtPsA0e4DRLsPEO0+
QLT7ANHuA0S7DxDtPkC0+wDR7gNEuw8Q7T5AtPsA0e4DRLsPEO0+QLT7ANHu
A0S7DxDtPkC0+wDR7gNEuw8Q7T5AtPsA0e4DRLsPEO0+QLT7ANHuA0S7DxDt
PkC0+wDR7gNEuw8Q7T5AtPsA0e4DRLsPEO0+QLT7ANHuA0S7DxDtPkC0+wDR
7gNEuw8Q7T5AtPsA0e4DRLsPEO0+QLT7ANHuA0S7DxDtPkC0+wDR7gNEuw8Q
7T5AtPsA0e4DRLsPEO0+QLT7ANHuA0S7DxDtPkC0+wDR7gNEuw8Q7T5AtPsA
0e4DRLsPEO0+QLT7ANHuA0S7DxDtPkC0+wDR7gNEuw8Q7T5AtPsA0e4DRLsP
EO0+QLT7ANHuA0S7DxDtPkC0+wDR7gNEuw8Q7T5AtPsA0e4DRLsPEO0+QLT7
ANHuA0S7DxDtPkC0+wDR7gNEuw8Q7T5AtPsA0e4DRLsPEO0+QLT7ANHuA0S7
DxDtPkC0+wDR7gNEuw8Q7T5AtPsA0e4DRLsPEO0+QLT7ANHuA0S7DxDtPkC0
+wDR7gNEuw8Q7T5AtPsA0e4DRLsPEO0+QLT7ANHuA0S7DxDtPkC0+wDR7gNE
uw8Q7T5AtPsA0e4DRLsPEO0+QLT7ANHuA0S7DxDtPkC0+wDR7gNEuw8Q7T5A
tPsA0e4DRLsPEO0+QLT7ANHuA0S7DxDtPkC0+wDR7gNEuw8Q7T5AtPsA0e4D
RLsPEO0+QLT7ANHuA0S7DxDtPkC0+wDR7gNEuw8Q7T5AtPsA0e4DRLsPEO0+
QLT7ANHuA0S7DxDtPkC0+wDR7gNEuw8Q7T5AtPsA0e4DRLsPEO0+QLT7ANHu
A0S7DxDtPkC0+wDR7gNEuw8Q7T5AtPsA0e4DRLsPEO0+QLT7ANHuA0S7DxDt
PkC0+wDR7gNEuw8Q7T5AtPsA0e4DRLsPEO0+QLT7ANHuA0S7DxDtPkC0+wDR
7gNEuw8Q7T5AtPsA0e4DRLsPEO0+QLT7ANHuA0S7DxDtPkC0+wDR7gNEuw8Q
7T5AtPsA0e4DRLsPEO0+QLT7ANHuA0S7DxDtPkC0+wDR7gNEuw8Q7T5AtPsA
0e4DRLsPEO0+QLT7ANHuA0S7DxDtPkC0+wDR7gNEuw8Q7T5AtPsA0e4DRLsP
EO0+QLT7ANHuA0S7DxDtPkC0+wDR7gNEuw8Q7T5AtPsA0e4DRLsPEO0+QLT7
ANHuA0S7DxDtPkC0+wDR7gNEuw8Q7T5AtPsA0e4DRLsPEO0+QLT7ANHuA0S7
DxDtPkC0+wDR7gNEuw8Q7T5AtPsA0e4DRLsPEO0+QLT7ANHuA0S7DxDtPkC0
+wDR7gNEuw8Q7T5AtPsA0e4DRLsPEO0+QLT7ANHuA0S7DxDtPkC0+wDR7gNE
uw8Q7T5AtPsA0e4DRLsPEO0+QLT7ANHuA0S7DxDtPkC0+wDR7gNEuw8Q7T5A
tPsA0e4DRLsPEO0+QLT7ANHuA0S7DxDtPkC0+wDR7gNEuw8Q7T5AtPsA0e4D
RLsPEO0+QLT7ANHuA0S7DxDtPkC0+wDR7gMA8Jvy+MPbN8Pfj9+dvT49Odxe
3V1uD8cn69PvX5+8Otz+7vmfFr/fHs7ejyffj29OT44Pt/9xfLY9PD765uD2
YjGMw2IxP328np/dfG289to6r117+ngapvPT83Xrm9fN95uuXps+vnf85OnV
lR+fXN7vM6ema7cdrz7H+mbq6utcPrn5yX9+9uZHu/kNf37nT2q/8Pfz6feZ
Pn6fqw+wvrzm3/z7mj/74dY4bg3rR/OTrc2f7vxuub81TIdb03T1dL5gerQ+
3FpfvLTe/GG8M+2vz9/y8T+b09Pm4mnzwrS56Z31/sV9Nm86v8H8xvPbzjfK
W+6M116Ypst3bs5cvPXifvPDejy/enx0cenmwnF/PH8yXdxlc9ll92i6/BvK
/Vb7B+Mmc/Et8o5788n7+wf35n8AZmZmZmZmZvZ/vWu/nHz2t6Frv8H8i5P5
seHWf/g4ez+uf1wcf/hh/Ons/evTk8X9ux/evvm6jeVyube3M8yPq4e7y+uP
8/Fgbz5Ww+r+w9WDnd37O/Pz5WpnPnFrWH7dj/H5Y/7a47v5o7z6wnVfOn/+
ZS6/1Pz4Kzk++aF2sdr9wk+1J6ef/FJ7+9lfnz7/27d/nP/f/fa7P/zlz0+H
zW9oW+PWzd8zL35FXB99xu0XT589ef7kxfTy5dHB+Gga7s3/mta/PAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAD+N91+8fTZk+dPXkwvXx4djI+m4d7Rwb21mZmZmZmZmZmZmZmZmZmZmZmZ
mZmZmZmZmZmZmZmZmZmZmZmZmZmZmZmZmZmZmZmZmZmZmZmZmZmZmZmZmZmZ
mZmZmZmZmZmZmZmZmZmZmZmZmZmZmZmZmZmZmZmZmZmZmZmZmZmZmZmZmZmZ
mZmZmZmZmZmZmZmZmZmZmZmZmZmZmZmZmZmZmZmZmf2X983B7cViGIfF4uiW
w+FwfJ3jn7QoZpkA5ggA

--001a11c26b2a1f07190532476d26--
