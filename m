X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["651" "Monday" "19" "September" "2016" "14:39:11" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty2A-uvus0c_cMh3WR3VKP9-7L4oHtQ2M-P1EJ=dJwFaiQ@mail.gmail.com>" "19" "[oss-security] Possible CVE for TLS protocol issue" nil nil nil "9" "2016091920:39:11" "[oss-security] Possible CVE for TLS protocol issue" (number mark "U       kseifried@re Sep 19   19/651   " thread-indent "\"[oss-security] Possible CVE for TLS protocol issue\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9234 invoked by uid 550); 19 Sep 2016 20:39:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9216 invoked from network); 19 Sep 2016 20:39:24 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=/Wiz7gPqfiIEjiB7tquj5o9LwErQrOInfSNpgQKoaHs=;
        b=JkMp1AA/x54CR76G2gJO1A3r0Vfm4PMTlMxg2wDz1KzWBofasw4xdqDwk1sL710iCh
         Jf5nhnGrPeDmxtVPINHhPYTtqpdpFjI9Ca7MWmnd2jixrJ/FRP9W8CWTt0APEaWuceKG
         33pkKzEn94JW05KkHq8tpfjFbZM7VZZEtzVrFwrujt37tpodadkvYftAS+5MMD6x2Hky
         /AUjG3bM3Ag3MLHc/7n5K7ctr8/QRgtiOqt/rA/yHIlqb3aod/llCRm1nhy9TOg93KdW
         iY26CfawfR5/TlA7WYAZxGfiS9DpUSAokqUm6sm+cF1NOMSHfbyLJ04INjF/sq6Q+zpv
         BKSQ==
X-Gm-Message-State: AE9vXwMAwQHCltJiCoy2nEwXx639YssaAQ1+RHPGEEI+bwsfwNcHfnzxR65qpa0vLuMUkJifNXKVPWXhWIjQoNnh
X-Received: by 10.202.3.66 with SMTP id 63mr33987951oid.26.1474317552379; Mon,
 19 Sep 2016 13:39:12 -0700 (PDT)
MIME-Version: 1.0
From: Kurt Seifried <kseifried@redhat.com>
Date: Mon, 19 Sep 2016 14:39:11 -0600
Message-ID: <CANO=Ty2A-uvus0c_cMh3WR3VKP9-7L4oHtQ2M-P1EJ=dJwFaiQ@mail.gmail.com>
To: oss-security <oss-security@lists.openwall.com>
Content-Type: multipart/alternative; boundary=001a113b9e06ff03d4053ce24d1c
Subject: [oss-security] Possible CVE for TLS protocol issue

--001a113b9e06ff03d4053ce24d1c
Content-Type: text/plain; charset=UTF-8

This was pointed out to me by mjc@:

https://kcitls.org/

TL;DR: if you can trick someone to install a client certificate you can
then spoof any future web site. Certainly not what we want from the people
issuing client certificates. It sounds like this is a protocol level
vulnerability affecting closed and Open Source vendors potentially, and it
is public so posting it here.

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a113b9e06ff03d4053ce24d1c--
