X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1245" "Thursday" "12" "November" "2015" "23:50:56" "-0500" "Jason Shepherd" "jshepher@redhat.com" "<1466254601.10395170.1447390256651.JavaMail.zimbra@redhat.com>" "22" "[oss-security] Re: Assign CVE for common-collections remote code execution on deserialisation flaw" "^Date:" nil nil "11" "2015111304:50:56" "[oss-security] Re: Assign CVE for common-collections remote code execution on deserialisation flaw" (number mark "U       jshepher@red Nov 12   22/1245  " thread-indent "\"[oss-security] Re: Assign CVE for common-collections remote code execution on deserialisation flaw\"\n") "<1904852023.6462846.1447029380024.JavaMail.zimbra@redhat.com>" ("<1904852023.6462846.1447029380024.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1986 invoked by uid 550); 13 Nov 2015 04:51:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1962 invoked from network); 13 Nov 2015 04:51:09 -0000
Message-ID: <1466254601.10395170.1447390256651.JavaMail.zimbra@redhat.com>
In-Reply-To: <1904852023.6462846.1447029380024.JavaMail.zimbra@redhat.com>
References: <1904852023.6462846.1447029380024.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.64.51.209]
X-Mailer: Zimbra 8.0.6_GA_5922 (ZimbraWebClient - FF40 (Linux)/8.0.6_GA_5922)
Thread-Topic: Assign CVE for common-collections remote code execution on deserialisation flaw
Thread-Index: GwiytGA/IDdJaAuw8DiW0sDj65Wqdixy58jN
Date: Thu, 12 Nov 2015 23:50:56 -0500 (EST)
From: Jason Shepherd <jshepher@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Assign CVE for common-collections remote code execution on
 deserialisation flaw
To: oss-security@lists.openwall.com

I think a precedent has been set with the Groovy issue [1] that we'd issue a CVE for the libraries that allow us to execute code during deserialization of their classes.

[1] CVE-2015-3253 

As Gsunde points out, it would make it a lot easier for everyone to refer to this issue if it had a CVE.

----- Original Message -----
From: "Jason Shepherd" <jshepher@redhat.com>
To: oss-security@lists.openwall.com
Sent: Monday, 9 November, 2015 10:36:20 AM
Subject: Assign CVE for common-collections remote code execution on deserialisation flaw

Hello oss-esc,

It was found that a flaw in Apache commons-collections Java library allowed remote code execution when Deserialised with Java Object Serialization. Full details of the vulnerability can be found in this recent blog post, [1]. A proposed patch for 3.2.x branch has been submitted upstream, but no release has been made with the fix at the current time. The issue affects version 3.x, and 4.x of Apache common-collections, [2].

   [1] http://foxglovesecurity.com/2015/11/06/what-do-weblogic-websphere-jboss-jenkins-opennms-and-your-application-have-in-common-this-vulnerability/
   [2] https://issues.apache.org/jira/browse/COLLECTIONS-580

Regards,
Jason Shepherd
Red Hat Product Security
