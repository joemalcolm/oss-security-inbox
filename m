X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1233" "Thursday" "18" "May" "2017" "19:27:58" "-0400" "Alex O'Ree" "alexoree@apache.org" "<CALLT8khyoJnN0vcmNna9Ah6mODNdfeYiMFuNNfNHs7t_=Zuuwg@mail.gmail.com>" "36" "[oss-security] jUDDI Security Bulletin" nil nil nil "5" "2017051823:27:58" "[oss-security] jUDDI Security Bulletin" (number mark "U       alexoree@apa May 18   36/1233  " thread-indent "\"[oss-security] jUDDI Security Bulletin\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9216 invoked by uid 550); 18 May 2017 23:38:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1573 invoked from network); 18 May 2017 23:28:13 -0000
X-Gm-Message-State: AODbwcBsg4gwdNtq9DFN6ybCs6SAvklP0KrbkclBOvMRISOwfaA6Ar2k
	51Rmzn6pfyJezJLq/jhRrfQ70YBRkQ==
X-Received: by 10.202.57.65 with SMTP id g62mr3449280oia.220.1495150078800;
 Thu, 18 May 2017 16:27:58 -0700 (PDT)
MIME-Version: 1.0
From: "Alex O'Ree" <alexoree@apache.org>
Date: Thu, 18 May 2017 19:27:58 -0400
X-Gmail-Original-Message-ID: <CALLT8khyoJnN0vcmNna9Ah6mODNdfeYiMFuNNfNHs7t_=Zuuwg@mail.gmail.com>
Message-ID: <CALLT8khyoJnN0vcmNna9Ah6mODNdfeYiMFuNNfNHs7t_=Zuuwg@mail.gmail.com>
To: oss-security@lists.openwall.com, 
	"user@juddi.apache.org" <user@juddi.apache.org>, dev@juddi.apache.org, bugtraq@securityfocus.com, 
	awillard@foregroundsecurity.com, pavelp@redhat.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] jUDDI Security Bulletin

[CVEID]:CVE-2015-5241
[PRODUCT]:Apache jUDDI
[VERSION]: 3.1.2, 3.1.3, 3.1.4, and 3.1.5 utilize the portlets based
user interface also known as 'Pluto', 'jUDDI Portal', 'UDDI Portal' or
'uddi-console'

[PROBLEMTYPE]:Open Redirect
[REFERENCES]:http://juddi.apache.org/security.html

[DESCRIPTION]: After logging into the portal, the logout jsp page
redirects the browser back to the login page after. It is feasible for
malicious user to redirect the browser to an unintended web page. User
session data, credentials, and auth tokens are cleared before the
redirect.


Mitigation:

1) Remove or disable the portlet's based user interface.

2) Upgrade to newer versions of jUDDI (v3.2 and newer) which is not
affected by this issue

3) If upgrading or disabling the portlet based user interface is not
an option, the following can be used to resolve the issue. Modify the
file located at "uddi-portlets/logout.jsp", replacing the following
text

> "String redirectURL = (String) request.getParameter("urlredirect");
> if (redirectURL==null) redirectURL = "/pluto/Logout";

with this text
> String redirectURL = "/pluto/Logout";

No patches or releases are planned for the affected versions since
jUDDI v3.2 replaced the user interface.
