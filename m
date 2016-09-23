X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2526" "Friday" "23" "September" "2016" "12:14:14" "+0100" "Martyn Taylor" "mtaylor@redhat.com" "<CAH6wpnqzeNtpykT7emtDU1-GV7AvjFP5-YroWcCC4UZyQEFvtA@mail.gmail.com>" "64" "[oss-security] [CVE-2016-4978] Apache ActiveMQ Artemis: Deserialization of untrusted input vunerability" nil nil nil "9" "2016092311:14:14" "[oss-security] [CVE-2016-4978] Apache ActiveMQ Artemis: Deserialization of untrusted input vunerability" (number mark "U       mtaylor@redh Sep 23   64/2526  " thread-indent "\"[oss-security] [CVE-2016-4978] Apache ActiveMQ Artemis: Deserialization of untrusted input vunerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1688 invoked by uid 550); 23 Sep 2016 12:15:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7529 invoked from network); 23 Sep 2016 11:14:27 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=EjcuPRyLKtyfesIkqpnNeFBF9/c8agBhsJj5D74M/X8=;
        b=EyPyt5O/mjuMYTBsdGvlyCdZn5uo5NrBOFVcAQJ5ZzxhSWYMJyMa+7xVdJnBlLWbLD
         eEA735nM8e1PrUGnAprHuplgQUb6nrq32WmdPG26sRneHwyyS0+ASJHWQs/lJEhQWwhb
         u0Zm6e9JZY0eiGHWmE14qN+mg27/aiIwLxKhfOI9NWlyBZpGFWg/gpZlqHBQCXkGaqxs
         jXoHT05ytoiinYjx+qMYRbK/F4Qby8i5M2MU72QA4U0F1cuol92G0CnnWW1x8T/3iVPO
         4gOlmKjDQgA5GdWK0uMu005GJN3vFwQEUTY+h2aLQzDJTzyPN1NB/8AsBlrEvxCHoQxn
         vzWQ==
X-Gm-Message-State: AE9vXwPwjv9S7LdyTX8jMgsaxhJPqGUNAJ7ZTKarKR6FqtIR5B9syVxicANStEJ/4qJtkrevjXhyev0denrNae1f
X-Received: by 10.107.57.139 with SMTP id g133mr9220520ioa.176.1474629255046;
 Fri, 23 Sep 2016 04:14:15 -0700 (PDT)
MIME-Version: 1.0
From: Martyn Taylor <mtaylor@redhat.com>
Date: Fri, 23 Sep 2016 12:14:14 +0100
Message-ID: <CAH6wpnqzeNtpykT7emtDU1-GV7AvjFP5-YroWcCC4UZyQEFvtA@mail.gmail.com>
To: security@apache.org, Matthias Kaiser <matthias.kaiser@code-white.com>, 
	oss-security@lists.openwall.com, bugtraq@securityfocus.com, 
	dev@activemq.apache.org, users@activemq.apache.org
Content-Type: multipart/alternative; boundary=001a114ac88aec4276053d2ae00b
Subject: [oss-security] [CVE-2016-4978] Apache ActiveMQ Artemis: Deserialization of untrusted
 input vunerability

--001a114ac88aec4276053d2ae00b
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected: Apache Artemis 1.0.0, 1.1.0, 1.2.0, 1.3.0

A class implementing the Serializable interface is free to implement
the =E2=80=9CreadObject(java.io.ObjectInputStream
in)=E2=80=9D method however it chooses. This readObject method is used duri=
ng the
deserialization process, when constructing a java object from a serialized
byte stream. It is possible to implement the method in such a way that can
result in java code being executed during the deserialization of an object
of this class (gadget class).

The JMS specification outlines a getObject() method on the
javax.jms.ObjectMessage
class. The Apache Artemis implementation of this method allows
deserialization of objects, from untrusted input. There are several places
where Apache Artemis uses this getObject() method. In the JMS Core client,
the Artemis broker and the Artemis REST component. These Artemis components
may therefore be vulnerable to a remote code execution attack. Successful
exploitations of this vulnerability rely on these "gadget classes"  being
present on the Artemis classpath and the sender of the untrusted input
being authenticated and authorized to send messages to the Artemis broker.

The code execution exploit may happen under the following circumstances:

=C2=B7 In the JMS client when consuming an object message.

=C2=B7 In the REST module when a REST client requests to consume a message =
that
was originally sent as an object message (cross protocol).

=C2=B7 In the Artemis management layer, when a client sends an object messa=
ge to
a management address.

=C2=B7 On the broker when an AMQP client consumes a message that was origin=
ally
sent as an object message (cross protocol).

For this exploit to occur the sender of the compromised message needs to be
authenticated and authorized in order to send the message to the Artemis
broker and affected classes (gadget classes) present on the Artemis class
path.

Mitigation:
To secure the Apache Artemis broker and management layer:
** Upgrade to 1.4.0.

For the Apache Artemis REST module and Apache Artemis JMS client.
** Upgrade to Apache Artemis 1.4.0
** Configure the appropriate deserialization white/black lists as outlined
in the Artemis documentation.

Credit: This issue was discovered by Matthias Kaiser of Code White (
www.code-white.com)

--001a114ac88aec4276053d2ae00b--
