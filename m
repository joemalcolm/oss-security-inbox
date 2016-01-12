X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["940" "Tuesday" "12" "January" "2016" "21:02:42" "+0530" "Rahul Pratap Singh" "techno.rps@gmail.com" "<CADLX=aGFnZANOuiTC=hp1F7_Kw26NLk0TD6QnRqgEcPPd30vLQ@mail.gmail.com>" "39" "[oss-security] CVE Request: WP Symposium Pro Social Network Plugin 16.1 XSS Vulnerability" nil nil nil "1" "2016011215:32:42" "[oss-security] CVE Request: WP Symposium Pro Social Network Plugin 16.1 XSS Vulnerability" (number mark "U       techno.rps@g Jan 12   39/940   " thread-indent "\"[oss-security] CVE Request: WP Symposium Pro Social Network Plugin 16.1 XSS Vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31900 invoked by uid 550); 12 Jan 2016 15:41:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28060 invoked from network); 12 Jan 2016 15:32:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=tmvy+B3MnBT8BtvFqBKXugJvv68X7974W36Xq3e9QV4=;
        b=TQK2MlvCmiYR55FncuBingEuZZVqZhJ8HqxD/ueNnr253in2Uli51db9+v17mzzEVh
         B+ClAicx+eC/xTMofqeQuzAdeK4iuuyFGsgdGmaJbe1iXL/edN3w/PXdGoC6mbNLZa0e
         oDlkB3uV5wABo5Y/Gsm7LV7KSzM3NFTWAgAa+ual16v+XHzORmJXsunNgbWG6n0xZQP5
         xiJbl0ChpC43WDZHSE/eHP84mHd/UaWrmxQsBKeMFYm0WAYOxWFnGqX9sXXjd39Q0jIC
         65vPDLSQy2BN3dXwTLJGrfe2bLjiuTVF14niMFyJhehzvs4Oye63NhhLZiA8/uUbSMJz
         dXiQ==
MIME-Version: 1.0
X-Received: by 10.107.35.16 with SMTP id j16mr70613592ioj.10.1452612762654;
 Tue, 12 Jan 2016 07:32:42 -0800 (PST)
Date: Tue, 12 Jan 2016 21:02:42 +0530
Message-ID: <CADLX=aGFnZANOuiTC=hp1F7_Kw26NLk0TD6QnRqgEcPPd30vLQ@mail.gmail.com>
From: Rahul Pratap Singh <techno.rps@gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a11405fc0b6f9bf052924c399
Subject: [oss-security] CVE Request: WP Symposium Pro Social Network Plugin 16.1 XSS Vulnerability

--001a11405fc0b6f9bf052924c399
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

##FULL DISCLOSURE

#Product : WP Symposium Pro Social Network plugin
#Home page Link : https://wordpress.org/plugins/wp-symposium-pro
#Version : 16.1
#Date : 12/Jan/2016

XSS Vulnerability:

Description:

=E2=80=9Cuser_id=E2=80=9D parameter is not sanitized, that leads to reflect=
ed xss.

POC:

https://0x62626262.files.wordpress.com/2016/01/wpsymposiumpro16_1xsspoc.png

Fix:
Update to version 16.01.01

Disclosure Timeline:

reported to vendor : 12/1/2016
vendor response : 12/1/2016
vendor acknowledged : 12/1/2016
vendor deployed a patch: 12/1/2016

Pub Ref:
http://www.wpsymposiumpro.com/wp-symposium-pro-16-01-01-security-release/
https://wordpress.org/plugins/wp-symposium-pro/
https://0x62626262.wordpress.com/2016/01/12/wp-symposium-pro-social-network=
-plugin-xss-vulnerability

--001a11405fc0b6f9bf052924c399--
