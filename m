X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["965" "Friday" "2" "April" "2021" "10:47:26" "+0100" "Colm O hEigeartaigh" "coheigea@apache.org" nil "25" "[oss-security] CVE-2021-22696: Apache CXF: OAuth 2 authorization service vulnerable to DDos attacks" nil nil nil "4" nil nil (number mark "U       coheigea@apa Apr  2   25/965   " thread-indent "\"[oss-security] CVE-2021-22696: Apache CXF: OAuth 2 authorization service vulnerable to DDos attacks\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-22696: Apache CXF: OAuth 2 authorization service vulnerable to DDos attacks" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15876 invoked by uid 550); 2 Apr 2021 10:21:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17735 invoked from network); 2 Apr 2021 09:47:49 -0000
X-Gm-Message-State: AOAM533d418xznDMFe1K0ss1W1gFvR/FeUAe5Z0d2JT5pc95SHX4jybZ
	qyQh5PxG6oCcaCp8dqshLb3EbCZ9XSP2+32bg9E=
X-Google-Smtp-Source: ABdhPJzOnCQFJ7yQ/WjIUHIEsCZRYu80dkeX93/Rkz4hi5X/fKFsUxJtetVJt0mtLdupbLtmXC4q0ughmbJePScti6s=
X-Received: by 2002:a05:6602:3314:: with SMTP id b20mr10487250ioz.78.1617356857222;
 Fri, 02 Apr 2021 02:47:37 -0700 (PDT)
MIME-Version: 1.0
From: Colm O hEigeartaigh <coheigea@apache.org>
Date: Fri, 2 Apr 2021 10:47:26 +0100
X-Gmail-Original-Message-ID: <CAB8XdGDCDzOUGVH75fagN1yyXb07dDHXnE20AVzmU59=1WOkvw@mail.gmail.com>
Message-ID: <CAB8XdGDCDzOUGVH75fagN1yyXb07dDHXnE20AVzmU59=1WOkvw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000f32c7905befa3c15"
Subject: [oss-security] CVE-2021-22696: Apache CXF: OAuth 2 authorization service vulnerable to DDos attacks

--000000000000f32c7905befa3c15
Content-Type: text/plain; charset="UTF-8"

Description:

CXF supports (via JwtRequestCodeFilter) passing OAuth 2 parameters via a
JWT token as opposed to query parameters (see: The OAuth 2.0 Authorization
Framework: JWT Secured Authorization Request (JAR)). Instead of sending a
JWT token as a "request" parameter, the spec also supports specifying a URI
from which to retrieve a JWT token from via the "request_uri" parameter.

CXF was not validating the "request_uri" parameter (apart from ensuring it
uses "https) and was making a REST request to the parameter in the request
to retrieve a token.

This means that CXF was vulnerable to DDos attacks on the authorization
server, as specified in section 10.4.1 of the spec.

This issue affects Apache CXF versions prior to 3.4.3; Apache CXF versions
prior to 3.3.10.

Reference:
http://cxf.apache.org/security-advisories.data/CVE-2021-22696.txt.asc

--000000000000f32c7905befa3c15--
