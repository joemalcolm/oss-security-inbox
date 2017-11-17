X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["571" "Friday" "17" "November" "2017" "13:15:51" "-0700" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty13_HbxhMT8BnqYVfU6=g4GP+oJnyCv11ucUG_q8Kbqqg@mail.gmail.com>" "18" "[oss-security] phusion passenger CVE-2017-1000384" nil nil nil "11" "2017111720:15:51" "[oss-security] phusion passenger CVE-2017-1000384" (number mark "U       kseifried@re Nov 17   18/571   " thread-indent "\"[oss-security] phusion passenger CVE-2017-1000384\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24022 invoked by uid 550); 17 Nov 2017 20:16:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23998 invoked from network); 17 Nov 2017 20:16:03 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=h/RKXO/SErIltdKrP3mbwX8D7WS/5MiT99Fdwle3eiY=;
        b=GU5Vq6b17perbZ9etIA097p/AYt0QRjJG+VNQjVbRLmx+DPMK8saAao/T6dJSuXiLc
         SmhxAazrMpmTKx+mtBntAtsiX+gxdP44EI0tNbApTXTHk08fqPNEiaJDEciIzhqKAIey
         FhJGevV0FB1q81aR5Ck/5/bF6hvzqAZppuClQdW0UILAjDy9f3pMCTs0xc/okAJkws5W
         TveeIGLTp3ICODds0emZmm6knmRRhmVtsZJIBdou++J0n5JHHP0RWPcmhecqXRkcW9rY
         fGUqcVh+32DcK+XNfo4l6zm15VX26kRxcmD7aXdJKF6dmBWsX1IdE5C2fn16TtnXD+y1
         j4Gg==
X-Gm-Message-State: AJaThX5vpmYtcr5OfP/zkGyRQPcLPBnSddlL6sMP+rFP4NuwgDRDYjEb
	HjOq5b7zjMON9CF05Th3/J6tIjMMPqEuZsWw5ol3mwYzn24=
X-Google-Smtp-Source: AGs4zMZbYvFk4IyJLc6Jj9rb9PMvzRk+aLc8hjWZrdxW6yO6SdXWhQNW2+eu8n2OMT2xAy94SLygmgcFQUTxNIie3eE=
X-Received: by 10.202.252.212 with SMTP id a203mr2201358oii.114.1510949751687;
 Fri, 17 Nov 2017 12:15:51 -0800 (PST)
MIME-Version: 1.0
From: Kurt Seifried <kseifried@redhat.com>
Date: Fri, 17 Nov 2017 13:15:51 -0700
Message-ID: <CANO=Ty13_HbxhMT8BnqYVfU6=g4GP+oJnyCv11ucUG_q8Kbqqg@mail.gmail.com>
To: oss-security <oss-security@lists.openwall.com>
Content-Type: multipart/alternative; boundary="001a113d319a39333a055e3367b7"
Subject: [oss-security] phusion passenger CVE-2017-1000384

--001a113d319a39333a055e3367b7
Content-Type: text/plain; charset="UTF-8"

Assigned CVE-2017-1000384 to
https://github.com/phusion/passenger/commit/a63f1e9cd8148dfaac08b00d74ef2b59bc2c9dd4

https://bugs.gentoo.org/634452

Please note: you have to have Phusion Passenger in a dir not owned by root,
and then run it as root (hint: that's never a good idea with anything).

-- 

Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a113d319a39333a055e3367b7--
