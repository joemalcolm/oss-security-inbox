X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["524" "Thursday" "10" "March" "2016" "07:46:01" "-0500" "Christopher Shannon" "christopher.l.shannon@gmail.com" "<CACHnxzxreiNXbWu0P-sv0A=PTwAGss-cwqsYbd3hpw2LpRZv9Q@mail.gmail.com>" "17" "[oss-security] [ANNOUNCE] CVE-2016-0734: ActiveMQ Web Console - Clickjacking" nil nil nil "3" "2016031012:46:01" "[oss-security] [ANNOUNCE] CVE-2016-0734: ActiveMQ Web Console - Clickjacking" (number mark "U       christopher. Mar 10   17/524   " thread-indent "\"[oss-security] [ANNOUNCE] CVE-2016-0734: ActiveMQ Web Console - Clickjacking\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17672 invoked by uid 550); 10 Mar 2016 12:52:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11850 invoked from network); 10 Mar 2016 12:46:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=L69Qn+jPUCiwMO/9Ef7EPe6WqvZ9oApzz3csyfl5eLc=;
        b=jFwAXX9vWj39gCduc5S/JrFWGHSjM25gc4q86iGlNZ/jiQP3Vv1Kd90Xy6EPs88lx1
         n4IhXNDXjnUnhthWCHSnzh7mMCPloxNWmq4NJIIuI7vDR9PZ8Zn9lPhCNEZ2Z85yX5BJ
         8M5U0wvbnAlPv5rZwQlH8TlSfRDL9Mz0fxA/net82lTBk5ZfoyPVenPBsdkNqiQzpvPa
         XgCW/2AOSGje1HdGT1U3bZyhdmc43XBTShY4yVk+8yuG+1CyUIzuw59sAUH1casRb0J0
         I+e6T/qWmlpbl8Ufi02nZRQxjaFLEc+Rmbpgv5hM2kYdZ0qlN+UX7YYSNZMJH0MiLByL
         wIfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=L69Qn+jPUCiwMO/9Ef7EPe6WqvZ9oApzz3csyfl5eLc=;
        b=O5JHqDTJb6NVHd6kjVWRdwgMxWePIh6V5eeH/q73+enqs2JV8+2qJuwBbXYJtIJETa
         NcDyAMsCcZ3QsA+u+ETV0d0wWmN25gHT/sKRX0vc0oaq2C5la/QiKG2COli0p1ohUOXy
         ClF2HEzOzrDloj5Ux3dMxVfWHfWKlIhrIfjDaF20foTUp3cMlUdkoWFCFegh3piepkSD
         pKeJx1pxt/TH5PMX9Z6TuhY8U4EgbqUsyUwZPgsJkPfSI33mEmnK8RX8LTYT/Ll3OLvB
         TFdil8KKFVPn7nxDm8HEcdZxfVr6OJF598IfIOY+P9PHHYWwh3YHkCOUu48UB2Hl6XTd
         GeXg==
X-Gm-Message-State: AD7BkJKio2nsqn9vRSEmSTBrIy2LygxHD7xtpLMgf/cF8fR+IZ6CmgWcParbTCQFIUDMklPVM4g8usJ2DgVJVQ==
X-Received: by 10.129.109.19 with SMTP id i19mr1633702ywc.50.1457613991142;
 Thu, 10 Mar 2016 04:46:31 -0800 (PST)
MIME-Version: 1.0
From: Christopher Shannon <christopher.l.shannon@gmail.com>
Date: Thu, 10 Mar 2016 07:46:01 -0500
Message-ID: <CACHnxzxreiNXbWu0P-sv0A=PTwAGss-cwqsYbd3hpw2LpRZv9Q@mail.gmail.com>
To: dev@activemq.apache.org, users@activemq.apache.org, security@apache.org, 
	oss-security@lists.openwall.com, bugtraq@securityfocus.com
Content-Type: multipart/alternative; boundary=001a114db7182969f2052db134ef
Subject: [oss-security] [ANNOUNCE] CVE-2016-0734: ActiveMQ Web Console - Clickjacking

--001a114db7182969f2052db134ef
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

There following security vulnerability was reported against Apache
ActiveMQ 5.13.1 and older versions.

Please check the following document and see if you=E2=80=99re affected by t=
he issue.

http://activemq.apache.org/security-advisories.data/CVE-2016-0734-announcem=
ent.txt

Apache ActiveMQ 5.13.2 and newer with appropriate fixes was released and
available for upgrade.

--001a114db7182969f2052db134ef--
