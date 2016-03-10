X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["524" "Thursday" "10" "March" "2016" "07:45:33" "-0500" "Christopher Shannon" "christopher.l.shannon@gmail.com" "<CACHnxzxB4hfLVfGMgjDMQ3VLfOvmQyK=rX3fskxfy2RF=u2yVw@mail.gmail.com>" "17" "[oss-security] [ANNOUNCE] CVE-2016-0782: ActiveMQ Web Console - Cross-Site Scripting" nil nil nil "3" "2016031012:45:33" "[oss-security] [ANNOUNCE] CVE-2016-0782: ActiveMQ Web Console - Cross-Site Scripting" (number mark "U       christopher. Mar 10   17/524   " thread-indent "\"[oss-security] [ANNOUNCE] CVE-2016-0782: ActiveMQ Web Console - Cross-Site Scripting\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14174 invoked by uid 550); 10 Mar 2016 12:52:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11756 invoked from network); 10 Mar 2016 12:46:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=WUkek9KqJ0b3fvRKwywDenC1cmMF1S5bD6LPa/XrKIU=;
        b=dr7d1/RTbuKrRr7BAmpU1QX8sgFDgtU4I5bWeBLHbhlYH96jMSW/atHQZ+A5gRwi3F
         ayZYp+Oeyj5Y97VdmWSQh1vQIEPOZ6FQoY3Qiej5Ns5Mw6CM49lagHLJFGleijKgyzja
         62cWexamqyxWFvsPXUUFrcjM/OE7NfFU+ci0jctzdK7Xot8Uof8SqSPmjIsWvQIANaVp
         8wsGcZzgeUBThEPRfT+m3Gxd42q2vc8EqGO//QxWygsPKKTagyg4NsaBMqDWq4t1Qazi
         S0eeqhdHHj6FXvqWxywHeihGTbipnSRYNNABCXYfamzbr9TD8C1PH25hmmvUx6pGBNLk
         /X9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=WUkek9KqJ0b3fvRKwywDenC1cmMF1S5bD6LPa/XrKIU=;
        b=cVIK+NGqm5q5Ai9o1Vtu/3BmJhDpr3Yu8aXY8MhD+QNo1wDPtPLQHawvRnhu5/4YQ1
         sDU8gg4fuU2u326uBhq2+BPbQ7ijg9n0tOTBmgSbEX5NmTRxV/y5MLey+5DDYaR+TyG5
         xX+lZTKv78ve3F6A5+QfbJ3EaNBxgiZkwCJTNqYqfc5n5PDHgMzAYcAHeZDlfpeomD86
         ziEPMeEoMqUX5f3Mo2tmR8jePX/JJvLY3bwHhx+2r2NgKV/S8TvQSHRytfczC39gh3fK
         F7oADzw5dCm7JC521m9/FNjOJ0FLSWs1qrMerPhSM76PhxHGzrQjXQnZa9cHVLnKTdsc
         fxGg==
X-Gm-Message-State: AD7BkJKVhVwJCjKClTwUvBu4CTRFgq0yFrn4XZ/6jyzmYHX7yRAVtGbJqvXHHO0lrrN8qAOqBvG2b8gxA8vMdg==
X-Received: by 10.129.33.133 with SMTP id h127mr1791912ywh.169.1457613963264;
 Thu, 10 Mar 2016 04:46:03 -0800 (PST)
MIME-Version: 1.0
From: Christopher Shannon <christopher.l.shannon@gmail.com>
Date: Thu, 10 Mar 2016 07:45:33 -0500
Message-ID: <CACHnxzxB4hfLVfGMgjDMQ3VLfOvmQyK=rX3fskxfy2RF=u2yVw@mail.gmail.com>
To: dev@activemq.apache.org, users@activemq.apache.org, security@apache.org, 
	oss-security@lists.openwall.com, bugtraq@securityfocus.com
Content-Type: multipart/alternative; boundary=001a11429262800bc7052db1325c
Subject: [oss-security] [ANNOUNCE] CVE-2016-0782: ActiveMQ Web Console - Cross-Site Scripting

--001a11429262800bc7052db1325c
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

There following security vulnerability was reported against Apache
ActiveMQ 5.13.0 and older versions.

Please check the following document and see if you=E2=80=99re affected by t=
he issue.

http://activemq.apache.org/security-advisories.data/CVE-2016-0782-announcem=
ent.txt

Apache ActiveMQ 5.13.1 and newer with appropriate fixes was released and
available for upgrade.

--001a11429262800bc7052db1325c--
