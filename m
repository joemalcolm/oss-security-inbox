X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2236" "Monday" "30" "May" "2016" "13:11:38" "+0200" "Daniele Bianco" "danbia@ocert.org" "<20160530111138.GZ2472@core.inversepath.com>" "78" "[oss-security] [oCERT 2016-001] Jetty path sanitization issues" nil nil nil "5" "2016053011:11:38" "[oss-security] [oCERT 2016-001] Jetty path sanitization issues" (number mark "U       danbia@ocert May 30   78/2236  " thread-indent "\"[oss-security] [oCERT 2016-001] Jetty path sanitization issues\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13869 invoked by uid 550); 30 May 2016 11:11:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13826 invoked from network); 30 May 2016 11:11:51 -0000
Date: Mon, 30 May 2016 13:11:38 +0200
From: Daniele Bianco <danbia@ocert.org>
To: oss-security@lists.openwall.com, ocert-announce@lists.ocert.org,
        bugtraq@securityfocus.com
Message-ID: <20160530111138.GZ2472@core.inversepath.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-GPG-Key: 0x9544A497
X-GPG-Fingerprint: 88A7 43F4 F28F 1B9D 6F2D  4AC5 AE75 822E 9544 A497
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: [oss-security] [oCERT 2016-001] Jetty path sanitization issues


Description:

Jetty is a Java HTTP (Web) server and Servlet container.

The Jetty path normalization mechanism suffers of an implementation issue
when parsing the request URLs. 

The path normalization logic implemented in the PathResource class and
introduced in Jetty versions 9.3.x can be defeated by requesting malicious
URLs containing specific escaped characters.

Leveraging on this weakness, a malicious user can gain access to protected
resources (e.g. WEB-INF and META-INF folders and their contents) and defeat
application filters or other security constraints implemented in the
servlet configuration.

A workaround to mitigate the issue, using the 'rewrite' module, can
alternatively be implemented as follows:

  $ java -jar ../start.jar --module=rewrite etc/backslashalias.xml

or 

  $ java -jar ../start.jar --add-to-startd=rewrite
  $ java -jar ../start.jar  etc/backslashalias.xml 

Workaround file backslashalias.xml contents:

  <?xml version="1.0"?>
  <!DOCTYPE Configure PUBLIC "-//Jetty//Configure//EN" "http://www.eclipse.org/jetty/configure_9_3.dtd">
  <Configure id="Rewrite" class="org.eclipse.jetty.rewrite.handler.RuleContainer">
    <Call name="addRule">
      <Arg>
        <New class="org.eclipse.jetty.rewrite.handler.RedirectRegexRule">
          <Arg>.*\\.*</Arg>
          <Arg>/</Arg>
          <Set name="statusCode">404</Set>
        </New>
      </Arg>
    </Call>
  </Configure>


Affected version:

Jetty >= 9.3.0, <= 9.3.8

Fixed version:

Jetty >= 9.3.9

Credit: vulnerability reported by Simon Zuckerbraun of Trend Micro Zero Day Initiative

CVE: CVE-2016-4800

Timeline:

2016-05-03: vulnerability report received
2016-05-06: contacted maintainer
2016-05-11: patch provided by maintainer
2016-05-13: assigned CVE
2016-05-18: reporter confirms patch
2016-05-20: contacted affected vendors
2016-05-30: advisory release

References:
http://www.eclipse.org/jetty/download.html

Permalink:
http://www.ocert.org/advisories/ocert-2016-001.html

--
  Daniele Bianco      Open Source Computer Security Incident Response Team
  <danbia@ocert.org>                                  http://www.ocert.org

  GPG Key 0x9544A497
  GPG Key fingerprint = 88A7 43F4 F28F 1B9D 6F2D  4AC5 AE75 822E 9544 A497
