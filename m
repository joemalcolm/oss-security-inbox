X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["448" "Tuesday" "9" "May" "2017" "23:55:10" "-0400" "Insu Yun" "wuninsu@gmail.com" "<CAGoFzNekm3g7bFwOAktu0i+BAif6ej=StbHh5M9ZOwswNQNqZw@mail.gmail.com>" "17" "[oss-security] CVE Request: Denial of Service in Dropbox lepton" nil nil nil "5" "2017051003:55:10" "[oss-security] CVE Request: Denial of Service in Dropbox lepton" (number mark "U       wuninsu@gmai May  9   17/448   " thread-indent "\"[oss-security] CVE Request: Denial of Service in Dropbox lepton\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5840 invoked by uid 550); 10 May 2017 03:55:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5815 invoked from network); 10 May 2017 03:55:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=HDkZzUs02OImLx8gjJoNs4CM0XEjPc4lnbE3QHXtwog=;
        b=Iz2mNFPT27fPpAvxCZ120K12YvhKjVQcee7Yo+6bZXOaDD4nUV3CDQaIJEhu0jG5jj
         wuEzSOKWJUqaSKP7Y0e9dl7oMwdLWNk3LufGPd4I3h/7nZH5B2pcNtFuAGwft4ckvZb4
         imFqCYxlpw94mi7MTzDy3G4Dwikuj9IFmzMDJhXDB/CPJGJ7+WAYcVBzr7x/Icx73G+1
         sEIgCjZLO5QgOvdGLanbTdkyZtHwPgMGzb1zQy27UVJaeK38xiBbYaG0U7NRTCseRK99
         P+UBWDzsARUpr54SJvsKOS4oVzgZLhm4ZLv53118Q3c6iAxIKZfSNgsIBMgPoVvTyweJ
         Wj3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=HDkZzUs02OImLx8gjJoNs4CM0XEjPc4lnbE3QHXtwog=;
        b=HESHMyAE3M5MtDIupCeipSF3DvAEC0O2fWYF4aa7hn0bERX1W8PdEgKWy1E7zYl1yL
         UekcShy70VO1H7xGNkDi+BDn8o/cTt0etvVPCS9FlC2WguLAl5wBsAp0XS1aodKfFrv+
         RVEHUh54/HC3zOejhzUUnpklR6fWtablmjIjAUtaVWIOrh81ohhK6PLpLtitDJwWIuSz
         nzhgbR1s8vTG2eKEQfYTS5Bel6TGEXADb8H8vt+A3+SV2Oim1O4zKF6VnuyJuLg9ZlKa
         jSjHMndVO3dtnxOBk8NmnL6+C3VgvM1xw2dGtEY+p2Hwe8WlrwzPcez+cZ8Ux/HRpDoI
         a6aA==
X-Gm-Message-State: AODbwcBAgVSO/sKvDLYvg2ofPupgYXfUZOrlbKqqKgFfLAgWtek42MtC
	2WBmggwlGXLs/jX8lSExDBXvcXo85g==
X-Received: by 10.31.146.20 with SMTP id u20mr1576253vkd.38.1494388511338;
 Tue, 09 May 2017 20:55:11 -0700 (PDT)
MIME-Version: 1.0
From: Insu Yun <wuninsu@gmail.com>
Date: Tue, 9 May 2017 23:55:10 -0400
Message-ID: <CAGoFzNekm3g7bFwOAktu0i+BAif6ej=StbHh5M9ZOwswNQNqZw@mail.gmail.com>
To: oss-security@lists.openwall.com, Yeongjin Jang <Yeongjin.jang@gatech.edu>
Content-Type: multipart/alternative; boundary=001a1142faf65ffbb8054f237043
Subject: [oss-security] CVE Request: Denial of Service in Dropbox lepton

--001a1142faf65ffbb8054f237043
Content-Type: text/plain; charset=UTF-8

Hi.
In Dropbox lepton, I found memory corruption bug that can cause DoS.
I reported it with a reproducible input. (
https://github.com/dropbox/lepton/issues/87)
Here is fix info:
https://github.com/dropbox/lepton/commit/82167c144a322cc956da45407f6dce8d4303d346
Please help assign a CVE to this vulnerability.
Thank you.

-- 
Regards
Insu Yun

--001a1142faf65ffbb8054f237043--
