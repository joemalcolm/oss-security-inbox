X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1048" "Monday" "21" "December" "2015" "13:41:16" "-0700" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty30N=AwTvdU6Hj2ySS=doE7Nt2ptkExN61KOfho5FR9RQ@mail.gmail.com>" "28" "[oss-security] mail-client/claws-mail-3.13.1: Stack Overflow - CVE needed?" "^Date:" nil nil "12" "2015122120:41:16" "[oss-security] mail-client/claws-mail-3.13.1: Stack Overflow - CVE needed?" (number mark "        kseifried@re Dec 21   28/1048  " thread-indent "\"[oss-security] mail-client/claws-mail-3.13.1: Stack Overflow - CVE needed?\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3544 invoked by uid 550); 21 Dec 2015 20:41:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3517 invoked from network); 21 Dec 2015 20:41:28 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=1bFBPigP65TDZdpKk2o/gywWuTSra5ZT5C4cOuvmYXg=;
        b=GZ6pWGJi0X0E/DY5W+u7AN5LlcODjQmgExaAEWi5fDxlcntvXjZ42VPudb4hSDWh2Z
         vGFg9JYhFYatqAD7oy9INyyup6D6QcUVkSIL5zRpLx0FA/0WmI/SoGclomfdqvSCOa+K
         t6KCbBVNboXMfxFqDj3AeQ48qX5P2NX0wQs5HBEun4yc91y21pJ2LSQWCF315B1Z5OUy
         6YZmK0ehaMJBsGhAJq6VQa8oGg3Pg+vXEuKE+WBLFLK7oHOxzXB/eLvUun078KyXZKeF
         xzYI1Z0dy4S8/0L7Lu+6QQ5hGH+ageLCH3t72cSrGoTuVR5Q4qSgdIPh0cSZWNFdUHkj
         b4Cw==
X-Gm-Message-State: ALoCoQnKP2BB1v8EWxuy2o2NjYfSWRqtfl7r3mFrmySwV5AgAVzdb+m/HBjLMl09GgSI5wmyn3+QXEKSF+4BX1u20KRP8FKEwy7s3uwVem8sHiW8PdoJnL4=
MIME-Version: 1.0
X-Received: by 10.13.223.21 with SMTP id i21mr16577871ywe.20.1450730476318;
 Mon, 21 Dec 2015 12:41:16 -0800 (PST)
Message-ID: <CANO=Ty30N=AwTvdU6Hj2ySS=doE7Nt2ptkExN61KOfho5FR9RQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a114e43bab4eb2105276e8217
Date: Mon, 21 Dec 2015 13:41:16 -0700
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] mail-client/claws-mail-3.13.1: Stack Overflow - CVE needed?
To: oss-security <oss-security@lists.openwall.com>

--001a114e43bab4eb2105276e8217
Content-Type: text/plain; charset=UTF-8

As per https://bugs.gentoo.org/show_bug.cgi?id=569010

Hanno Boeck [image: gentoo-dev] 2015-12-21 15:15:17 UTC

This upstream bug was fixed in
3.13.1:http://www.thewildbeast.co.uk/claws-mail/bugzilla/show_bug.cgi?id=3557

The title is "Remotely exploitable bug", but the information is a bit
unclear. It looks like this is a stack overflow. Anyway, probably
means 3.13.1 should receive fast stabilization and a GLSA.

This version also fixes two oob errors I reported, I don't think
they're security risks, but for completeness here they are (some
consider every oob issue to be worthy of treating as a potential
security issue):http://www.thewildbeast.co.uk/claws-mail/bugzilla/show_bug.cgi?id=3559http://www.thewildbeast.co.uk/claws-mail/bugzilla/show_bug.cgi?id=3563


-- 

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a114e43bab4eb2105276e8217--
