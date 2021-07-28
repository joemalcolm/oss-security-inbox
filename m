X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1605" "Wednesday" "28" "July" "2021" "18:35:17" "-0400" "Alex O'Ree" "alexoree@apache.org" nil "48" "[oss-security] [SECURITY] CVE-2021-37578 Apache jUDDI Remote code execution" nil nil nil "7" nil nil (number mark "U       alexoree@apa Jul 28   48/1605  " thread-indent "\"[oss-security] [SECURITY] CVE-2021-37578 Apache jUDDI Remote code execution\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [SECURITY] CVE-2021-37578 Apache jUDDI Remote code execution" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1163 invoked by uid 550); 29 Jul 2021 11:40:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1173 invoked from network); 28 Jul 2021 22:36:16 -0000
X-Gm-Message-State: AOAM5335UsXoQ9uTojVH/dF03zn/hds0ZLOPMsu9R5MV7IAXG1OCRmGu
	PgfjtMFnTOXQ7p2JB4lsNtQKNGv/+JgyaXXbZLk=
X-Google-Smtp-Source: ABdhPJweh9jumWSvkkM21Alrfs3ObKRa1dFQM4DUeacc49eXMH/Lg5STmRbMDP/RkJIQwNMPloyyQl49k41/XLRHWl8=
X-Received: by 2002:a67:db0a:: with SMTP id z10mr2369005vsj.32.1627511729054;
 Wed, 28 Jul 2021 15:35:29 -0700 (PDT)
MIME-Version: 1.0
From: "Alex O'Ree" <alexoree@apache.org>
Date: Wed, 28 Jul 2021 18:35:17 -0400
X-Gmail-Original-Message-ID: <CALLT8kikyVve2ZhJi-tK8RzrYQQOxpbgKciMA6DwxAZmSJP=sg@mail.gmail.com>
Message-ID: <CALLT8kikyVve2ZhJi-tK8RzrYQQOxpbgKciMA6DwxAZmSJP=sg@mail.gmail.com>
To: "user@juddi.apache.org" <user@juddi.apache.org>, dev@juddi.apache.org, 
	security <security@apache.org>, oss-security@lists.openwall.com, 
	Artem Smotrakov <artem.smotrakov@gmail.com>
Content-Type: multipart/alternative; boundary="0000000000007a6c5205c8369a3d"
Subject: [oss-security] [SECURITY] CVE-2021-37578 Apache jUDDI Remote code execution

--0000000000007a6c5205c8369a3d
Content-Type: text/plain; charset="UTF-8"

CVE-2021-37578 Apache jUDDI Remote code execution

Severity: Low

VERSION:  older than 3.3.10

PROBLEMTYPE: Remote Code Execution

REFERENCES: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-37578
https://juddi.apache.org/security.html

DESCRIPTION:
Apache jUDDI uses several classes related to Java's Remote Method
Invocation (RMI) which (as an extension to UDDI) provides an alternate
transport for accessing UDDI services.

RMI uses the default Java serialization mechanism to pass parameters in RMI
invocations. A remote attacker can send a malicious serialized object to
the above RMI entries. The objects get deserialized without any check on
the incoming data. In the worst case, it may let the attacker run arbitrary
code remotely.

For both jUDDI web service applications and jUDDI clients, the usage of RMI
is disabled by default. Since this is an optional feature and an extension
to the UDDI protocol, the likelihood of impact is low. Starting with
3.3.10, all RMI related code was removed.

Mitigation:

jUDDI Clients, disable RMITransports (found in uddi.xml) and use alternate
transports such as HTTPS.
jUDDI Server (juddiv3.war/WEB-INF/classes/juddiv3.xml), disable JNDI and
RMI settings in juddiv3.xml.
The appropriate settings are located below in xpath style notation.

    juddi/jndi/registration=false
    juddi/rmi/registration=false

If the settings are not present, then JNDI and RMI are already disabled.
This is the default setting.


Reported by Artem Smotrakov

--0000000000007a6c5205c8369a3d--
