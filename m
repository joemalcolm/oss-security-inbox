X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1889" "Tuesday" "18" "September" "2018" "15:12:47" "+0200" "=?UTF-8?B?SmVhbi1CYXB0aXN0ZSBPbm9mcsOp?=" "jb@nanthrax.net" "<26337f62-619b-debf-3972-ed3c7082092e@nanthrax.net>" "47" "[oss-security] [SECURITY] New security advisory for CVE-2018-11787 released for Apache Karaf" nil nil nil "9" "2018091813:12:47" "[oss-security] [SECURITY] New security advisory for CVE-2018-11787 released for Apache Karaf" (number mark "U       jb@nanthrax. Sep 18   47/1889  " thread-indent "\"[oss-security] [SECURITY] New security advisory for CVE-2018-11787 released for Apache Karaf\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16134 invoked by uid 550); 18 Sep 2018 13:31:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23903 invoked from network); 18 Sep 2018 13:13:00 -0000
X-Originating-IP: 82.238.224.4
To: user@karaf.apache.org, Karaf Dev <dev@karaf.apache.org>,
 Apache Security Team <security@apache.org>, oss-security@lists.openwall.com,
 ktschmidt@gmail.com
From: =?UTF-8?Q?Jean-Baptiste_Onofr=c3=a9?= <jb@nanthrax.net>
Message-ID: <26337f62-619b-debf-3972-ed3c7082092e@nanthrax.net>
Date: Tue, 18 Sep 2018 15:12:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [oss-security] [SECURITY] New security advisory for CVE-2018-11787 released for
 Apache Karaf

A new security advisory has been released for Apache Karaf, that is
fixed in recent 3.0.9, 4.0.9 and 4.1.1 releases.

CVS-2018-11787: Apache Karaf unsecure access to Gogo shell in the webconsole

Severity: Moderate

Vendor: The Apache Software Foundation

Versions Affected: all versions of Apache Karaf prior to 3.0.9, 4.0.9,
4.1.1.

Description:

When the webconsole feature is installed in Karaf, it is available at
.../system/console and requires authentication to access it.  One part
of the console is a Gogo shell/console that gives access to the
command line console of Karaf via a Web browser, and when navigated to
it is available at .../system/console/gogo.  Trying to go directly to
that URL does require authentication.

And optional bundle that some applications use is the Pax Web Extender
Whiteboard, it is part of the pax-war feature and perhaps others.
When it is installed, the Gogo console becomes available at another
URL .../gogo/, and that URL is not secured giving access to the Karaf
console to unauthenticated users.

A mitigation for the issue is to manually stop/uninstall Gogo plugin
bundle that is installed with the webconsole feature, although of
course this removes the console from the .../system/console
application, not only from the unauthenticated endpoint.  One could
also stop/uninstall the Pax Web Extender Whiteboard, but other
components/applications may require it and so their functionality
would be reduced/compromised.

This has been fixed in revision:

https://gitbox.apache.org/repos/asf?p=karaf.git;h=cfa213a
https://gitbox.apache.org/repos/asf?p=karaf.git;h=434e525
https://gitbox.apache.org/repos/asf?p=karaf.git;h=1fc60d7

Mitigation: Apache Karaf users should upgrade to 3.0.9, 4.0.9, 4.1.1
or later as soon as possible.

JIRA Tickets: https://issues.apache.org/jira/browse/KARAF-4993

Credit: This issue was reported by Kevin Schmidt
