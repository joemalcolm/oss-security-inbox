X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1276" "Monday" "30" "March" "2015" "16:11:33" "-0400" "Dave" "snoopdave@gmail.com" "<CAF1aazCpJPNS42M5+8gAmyBQbcMBFcRe4g_e7O6U+rG8SjM6LA@mail.gmail.com>" "48" "[oss-security] Fwd: CVE-2015-0249: Apache Roller allows admin users to execute arbitrary Java code" nil nil nil "3" "2015033020:11:33" "[oss-security] Fwd: CVE-2015-0249: Apache Roller allows admin users to execute arbitrary Java code" (number mark "        snoopdave@gm Mar 30   48/1276  " thread-indent "\"[oss-security] Fwd: CVE-2015-0249: Apache Roller allows admin users to execute arbitrary Java code\"\n") "<CAF1aazAPWTduVhrPr7WiFaspFdsh21yf0YiSB3UmLjtDVGnfXw@mail.gmail.com>" ("<CAF1aazAPWTduVhrPr7WiFaspFdsh21yf0YiSB3UmLjtDVGnfXw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16221 invoked by uid 550); 30 Mar 2015 20:15:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14109 invoked from network); 30 Mar 2015 20:11:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=YWxzbDn/JoqqzUgJqX+/G5gOCS0oOGnEU2K3BwrtpZE=;
        b=buuHOcSPceknaKYHbVULvRkm7clAmCZhowK6K/MwakjT7VROdpStBDIJF/qloGZRJk
         MP8W3L4K8x4FZygkUVHfg5YcYbNEZsExK7Ne5XhWp7YQ0HFJXqcO6W9xeOG+vC3I4rwp
         y9DLJAW8CpxoblhnoxAkHwO4TGWDzbODlrEm3J80/3fH5OmNX+QBs4+aG6vPEo4fieIN
         IclXCDXjnT7YPzj6dXerHg8oxn1sdFR9iuDYlzldI69uAZEia+crBW8DgwNIpXnnk0NE
         LxguXZltH0dY6LjW/wjM0gvom/mrEcVFuWdhJEBnpvGEI0q9fq/K5yvvKr4uAGWhbDPE
         MdrQ==
MIME-Version: 1.0
X-Received: by 10.182.16.233 with SMTP id j9mr29206329obd.24.1427746293222;
 Mon, 30 Mar 2015 13:11:33 -0700 (PDT)
In-Reply-To: <CAF1aazAPWTduVhrPr7WiFaspFdsh21yf0YiSB3UmLjtDVGnfXw@mail.gmail.com>
References: <CAF1aazAPWTduVhrPr7WiFaspFdsh21yf0YiSB3UmLjtDVGnfXw@mail.gmail.com>
Message-ID: <CAF1aazCpJPNS42M5+8gAmyBQbcMBFcRe4g_e7O6U+rG8SjM6LA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11c30aa2a316b40512871606
Date: Mon, 30 Mar 2015 16:11:33 -0400
From: Dave <snoopdave@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Fwd: CVE-2015-0249: Apache Roller allows admin users to execute
 arbitrary Java code
To: security@apache.org, oss-security@lists.openwall.com, 
	bugtraq@securityfocus.com

--001a11c30aa2a316b40512871606
Content-Type: text/plain; charset=UTF-8

---------- Forwarded message ----------
From: Dave <snoopdave@gmail.com>
Date: Tue, Mar 24, 2015 at 7:22 PM
Subject: CVE-2015-0249: Apache Roller allows admin users to execute
arbitrary Java code
To: "dev@roller.apache.org" <dev@roller.apache.org>, user@roller.apache.org


Severity: Important

Vendor:
   The Apache Software Foundation

Versions Affected:
   Roller 5.1.1
   Roller 5.1
   The unsupported pre-Roller 5.1 versions may also be affected

Description:

   A Roller user with Admin-level access to a weblog can edit a weblog
   page template and use special Velocity syntax to execute Java code on
   the server.

Mitigation:

   There are several ways you can fix this vulnerability:

   1) Upgrade to the latest version of Roller, which is now 5.1.2.

   2) Or, add the following line to Roller's velocity.properties file:


runtime.introspector.uberspect=org.apache.velocity.util.introspection.SecureUberspector

   3) Or, disable template editing on your Roller system by un-checking
      the Allow Custom Themes setting in the Server Admin -> Configuration
page,
      Theme Settings section.

Credit:

   This issue was discovered by Gregory Draperi.

--001a11c30aa2a316b40512871606--
