X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["539" "Tuesday" "10" "May" "2016" "09:31:27" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty0jMX=XhW5D71G4__tqtHwHY5iFX-YKZO71skbgin5U8w@mail.gmail.com>" "19" "[oss-security] BitKeeper /tmp vulns" nil nil nil "5" "2016051015:31:27" "[oss-security] BitKeeper /tmp vulns" (number mark "U       kseifried@re May 10   19/539   " thread-indent "\"[oss-security] BitKeeper /tmp vulns\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17438 invoked by uid 550); 10 May 2016 15:31:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17414 invoked from network); 10 May 2016 15:31:39 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=54aLLrfdxGdHWf4Dn5Jk1mUmaiq4UiPrKu1+usX/1NU=;
        b=IKBtwso6kHDsyqJrsq5VzZ36g+nJJ3DBR+ceA31gXlHUcDz4S3c5l4hozJATEYijFv
         6Yyu31tnc1A7ca45OGwZMszSOVNEJVWeK/fI+dUdJ1yQRE/PX71Ep4mf/7xPCl9HWo8h
         XVczSmaiGS9EKOveIAlUl6gpzPVbQ2tSqjLIbk5g6PpNGljrlsqBpdNjoYMBY4G4Ukf1
         3do835XvchP9oY/O2SO841OHk8wYxMTxws5rpc50kzzp2+t6IgxkQo8ATcUZHD6glYFO
         nFGSjADQPT3Up+aRrHJm/2pWy/uWoNMjRr0MPMQBszvSjZShc3sbGeuzEiHTqNesjQIT
         Wpeg==
X-Gm-Message-State: AOPr4FUCCwVj3x1QFTZEGaM6Mems9dxA7a8jv83spTXIEAlKZX467A0FIjuSq8cu0RE81p1oDvWRSOptCitrx7xg
MIME-Version: 1.0
X-Received: by 10.129.130.135 with SMTP id s129mr22258244ywf.139.1462894287650;
 Tue, 10 May 2016 08:31:27 -0700 (PDT)
Date: Tue, 10 May 2016 09:31:27 -0600
Message-ID: <CANO=Ty0jMX=XhW5D71G4__tqtHwHY5iFX-YKZO71skbgin5U8w@mail.gmail.com>
From: Kurt Seifried <kseifried@redhat.com>
To: oss-security <oss-security@lists.openwall.com>, security@bitkeeper.com
Content-Type: multipart/alternative; boundary=94eb2c07b82a5c38e905327e9e08
Subject: [oss-security] BitKeeper /tmp vulns

--94eb2c07b82a5c38e905327e9e08
Content-Type: text/plain; charset=UTF-8

Not found by me, mentioned on HackerNews:

https://github.com/bitkeeper-scm/bitkeeper/blob/master/src/bk.sh#L485

BitKeeper is under Apache license so here it is.

Also a quick look at the source shows a ton of other potential /tmp/ vulns,
CC'ing bitkeeper security


--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--94eb2c07b82a5c38e905327e9e08--
