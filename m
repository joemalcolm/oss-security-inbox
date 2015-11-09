X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["705" "Sunday" "8" "November" "2015" "19:36:20" "-0500" "Jason Shepherd" "jshepher@redhat.com" "<1904852023.6462846.1447029380024.JavaMail.zimbra@redhat.com>" "10" "[oss-security] Assign CVE for common-collections remote code execution on deserialisation flaw" "^Date:" nil nil "11" "2015110900:36:20" "[oss-security] Assign CVE for common-collections remote code execution on deserialisation flaw" (number mark "        jshepher@red Nov  8   10/705   " thread-indent "\"[oss-security] Assign CVE for common-collections remote code execution on deserialisation flaw\"\n") "<1278250696.6459242.1447028856240.JavaMail.zimbra@redhat.com>" ("<1278250696.6459242.1447028856240.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27763 invoked by uid 550); 9 Nov 2015 01:01:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19591 invoked from network); 9 Nov 2015 00:36:33 -0000
Message-ID: <1904852023.6462846.1447029380024.JavaMail.zimbra@redhat.com>
In-Reply-To: <1278250696.6459242.1447028856240.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.64.51.119]
X-Mailer: Zimbra 8.0.6_GA_5922 (ZimbraWebClient - SAF9 (Mac)/8.0.6_GA_5922)
Thread-Topic: Assign CVE for common-collections remote code execution on deserialisation flaw
Thread-Index: GwiytGA/IDdJaAuw8DiW0sDj65Wqdg==
Date: Sun, 8 Nov 2015 19:36:20 -0500 (EST)
From: Jason Shepherd <jshepher@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Assign CVE for common-collections remote code execution on
 deserialisation flaw
To: oss-security@lists.openwall.com

Hello oss-esc,

It was found that a flaw in Apache commons-collections Java library allowed remote code execution when Deserialised with Java Object Serialization. Full details of the vulnerability can be found in this recent blog post, [1]. A proposed patch for 3.2.x branch has been submitted upstream, but no release has been made with the fix at the current time. The issue affects version 3.x, and 4.x of Apache common-collections, [2].

   [1] http://foxglovesecurity.com/2015/11/06/what-do-weblogic-websphere-jboss-jenkins-opennms-and-your-application-have-in-common-this-vulnerability/
   [2] https://issues.apache.org/jira/browse/COLLECTIONS-580

Regards,
Jason Shepherd
Red Hat Product Security
