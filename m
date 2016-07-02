X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1296" "Saturday" "2" "July" "2016" "02:15:24" "+0100" "Robbie Gemmell" "robbie@apache.org" "<CAFitrpQuqhcLM2ZV9PKfqieHRD+uz+h4Ljd5DSbhiq-Dhvf8LA@mail.gmail.com>" "30" "[oss-security] [SECURITY] CVE-2016-4974: Apache Qpid: deserialization of untrusted input while using JMS ObjectMessage" nil nil nil "7" "2016070201:15:24" "[oss-security] [SECURITY] CVE-2016-4974: Apache Qpid: deserialization of untrusted input while using JMS ObjectMessage" (number mark "U       robbie@apach Jul  2   30/1296  " thread-indent "\"[oss-security] [SECURITY] CVE-2016-4974: Apache Qpid: deserialization of untrusted input while using JMS ObjectMessage\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3706 invoked by uid 550); 2 Jul 2016 08:32:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9861 invoked from network); 2 Jul 2016 01:15:39 -0000
X-Gm-Message-State: ALyK8tL963nEsAA63Hf8ZgphPUWgQlhdmg5mfTSqJqyyCdtLNlj0yU8FN94LthzN3S19N9OfVgfLYxfU5sFkqQ==
X-Received: by 10.36.43.88 with SMTP id h85mr890600ita.89.1467422125181; Fri,
 01 Jul 2016 18:15:25 -0700 (PDT)
MIME-Version: 1.0
From: Robbie Gemmell <robbie@apache.org>
Date: Sat, 2 Jul 2016 02:15:24 +0100
X-Gmail-Original-Message-ID: <CAFitrpQuqhcLM2ZV9PKfqieHRD+uz+h4Ljd5DSbhiq-Dhvf8LA@mail.gmail.com>
Message-ID: <CAFitrpQuqhcLM2ZV9PKfqieHRD+uz+h4Ljd5DSbhiq-Dhvf8LA@mail.gmail.com>
To: "dev@qpid.apache.org" <dev@qpid.apache.org>, "users@qpid.apache.org" <users@qpid.apache.org>, announce@apache.org, 
	"security@apache.org" <security@apache.org>, oss-security@lists.openwall.com, 
	bugtraq@securityfocus.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] [SECURITY] CVE-2016-4974: Apache Qpid: deserialization of untrusted
 input while using JMS ObjectMessage

[CVE-2016-4974] Apache Qpid: deserialization of untrusted input while
using JMS ObjectMessage

Severity: Moderate

Vendor: The Apache Software Foundation

Versions Affected:
Qpid AMQP 0-x JMS client 6.0.3 and earlier
Qpid JMS (AMQP 1.0) client 0.9.0 and earlier

Description:
When applications call getObject() on a consumed JMS ObjectMessage they are
subject to the behaviour of any object deserialization during the process
of constructing the body to return. Unless the application has taken outside
steps to limit the deserialization process, they can't protect against
input that might try to make undesired use of classes available on the
application classpath that might be vulnerable to exploitation.

Mitigation:
Users using ObjectMessage can upgrade to Qpid AMQP 0-x JMS client
6.0.4 or Qpid JMS (AMQP 1.0) client 0.10.0 or later, and use the new
configuration options to whitelist trusted content permitted for
deserialization. When so configured, attempts to deserialize input
containing other content will be prevented. Alternatively, users of older
client releases may utilise other means such as agent-based approach to help
govern content permitted for deserialization in their application.

Credit:
This issue was discovered by Matthias Kaiser of Code White (www.code-white.com)
