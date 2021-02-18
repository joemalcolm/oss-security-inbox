X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1058" "Thursday" "18" "February" "2021" "12:53:39" "-0500" "Bill Lucy" "wtlucy@apache.org" nil "29" "[oss-security] CVE-2021-26296: Cross-Site Request Forgery (CSRF) vulnerability in Apache MyFaces" nil nil nil "2" nil nil (number mark "U       wtlucy@apach Feb 18   29/1058  " thread-indent "\"[oss-security] CVE-2021-26296: Cross-Site Request Forgery (CSRF) vulnerability in Apache MyFaces\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-26296: Cross-Site Request Forgery (CSRF) vulnerability in Apache MyFaces" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15746 invoked by uid 550); 18 Feb 2021 18:58:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23656 invoked from network); 18 Feb 2021 17:54:21 -0000
X-Gm-Message-State: AOAM531JvPtAAoRVcfcNS2a9kiZj9bYkIKTbnvvQGxggvrqU36+3Kl03
	mBBIQp6mjNY1pE5rB8SjY+5UkZ6zL1ZCNNp2lQ4=
X-Google-Smtp-Source: ABdhPJxlijSY3NcHHVgGyZxnJ63Z4FVuzIvMZISQCXKXKR/tnP8r42m+4oqKPdDjJdLvBNldkmRbXQLGI4QOhqjmsGk=
X-Received: by 2002:a9d:67cb:: with SMTP id c11mr3786804otn.290.1613670844742;
 Thu, 18 Feb 2021 09:54:04 -0800 (PST)
MIME-Version: 1.0
From: Bill Lucy <wtlucy@apache.org>
Date: Thu, 18 Feb 2021 12:53:39 -0500
X-Gmail-Original-Message-ID: <CALwS-OMachBCyzOmdveGjsz+Ebknrc_Nh6Tq71uH-e4y9DTv5A@mail.gmail.com>
Message-ID: <CALwS-OMachBCyzOmdveGjsz+Ebknrc_Nh6Tq71uH-e4y9DTv5A@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000007c448f05bba005f6"
Subject: [oss-security] CVE-2021-26296: Cross-Site Request Forgery (CSRF) vulnerability in
 Apache MyFaces

--0000000000007c448f05bba005f6
Content-Type: text/plain; charset="UTF-8"

Description:
In the default configuration, Apache MyFaces Core versions 2.2.0 to 2.2.13,
2.3.0 to 2.3.7, 2.3-next-M1 to 2.3-next-M4, and 3.0.0-RC1 use
cryptographically weak implicit and explicit cross-site request forgery
(CSRF) tokens. Due to that limitation, it is possible (although difficult)
for an attacker to calculate a future CSRF token value and to use that
value to trick a user into executing unwanted actions on an application.

This issue is being tracked as MYFACES-4373

Mitigation:
Existing web.xml configuration parameters can be used to direct MyFaces to
use SecureRandom for CSRF token generation:

org.apache.myfaces.RANDOM_KEY_IN_VIEW_STATE_SESSION_TOKEN=secureRandom
org.apache.myfaces.RANDOM_KEY_IN_CSRF_SESSION_TOKEN=secureRandom
org.apache.myfaces.RANDOM_KEY_IN_WEBSOCKET_SESSION_TOKEN=secureRandom

Credit:
Apache MyFaces would like to thank Wolfgang Ettlinger (Certitude Consulting
GmbH)

Regards,
Bill Lucy, MyFaces PMC

--0000000000007c448f05bba005f6--
