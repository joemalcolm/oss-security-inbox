X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["662" "Tuesday" "8" "December" "2015" "17:57:28" "+0100" "Dejan Bosanac" "dejan@nighttale.net" "<CAGeh-pF5rGAVCm8BjuqjBv_2zCryLHtTaHvYdDPxGGcfWCooUQ@mail.gmail.com>" "22" "[oss-security] [ANNOUNCE] CVE-2015-5254 - Unsafe deserialization in ActiveMQ" nil nil nil "12" "2015120816:57:28" "[oss-security] [ANNOUNCE] CVE-2015-5254 - Unsafe deserialization in ActiveMQ" (number mark "U       dejan@nightt Dec  8   22/662   " thread-indent "\"[oss-security] [ANNOUNCE] CVE-2015-5254 - Unsafe deserialization in ActiveMQ\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7634 invoked by uid 550); 8 Dec 2015 16:57:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7590 invoked from network); 8 Dec 2015 16:57:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:date:message-id:subject:from:to:content-type;
        bh=5s+Wl7c7QgTuIMLYe/az0U3rwtn4OUMjQQdqvwHv2MY=;
        b=LcIskrQwD0l9o+bi/TKt2v7W6fJwed6b1g2xsrep+58kVZC6wtCiDMdoTjSHcKbvbW
         XkRD5Qu4FCf5fHAv1PnWK2f8cO2Oc4+l2Lk3pezb5inPjAQaeQC45Voe/Dpos4eby4WE
         CDbftZcod4B3U6cHt8sECoLWYhIzfrFqa0fF2f40IjookWsdlr5hKD7jLDFBFl/mqfsa
         J4cR7EiOqDglG/0isVjfJRni+tC1sgY5Y6XWGbwb9biW+ghak5A4M/kLX0Z6bAS+KMfg
         QGuKR8tBzxeSsDHbRwR2cU57/KM2upM5EmFSp7/R/crDFCybNWT19uPSN6AxuqmEsAqm
         I32Q==
MIME-Version: 1.0
X-Received: by 10.202.97.11 with SMTP id v11mr509563oib.12.1449593848546; Tue,
 08 Dec 2015 08:57:28 -0800 (PST)
Sender: chubrilo@gmail.com
Date: Tue, 8 Dec 2015 17:57:28 +0100
X-Google-Sender-Auth: hMbrajzadaPr-O4Ynx7I7U_qSW0
Message-ID: <CAGeh-pF5rGAVCm8BjuqjBv_2zCryLHtTaHvYdDPxGGcfWCooUQ@mail.gmail.com>
From: Dejan Bosanac <dejan@nighttale.net>
To: "dev@activemq.apache.org" <dev@activemq.apache.org>, 
	"users@activemq.apache.org" <users@activemq.apache.org>, 
	Apache Security Response Team <security@apache.org>, oss-security@lists.openwall.com, 
	bugtraq@securityfocus.com
Content-Type: multipart/alternative; boundary=001a113d4724694d60052665de6b
Subject: [oss-security] [ANNOUNCE] CVE-2015-5254 - Unsafe deserialization in ActiveMQ

--001a113d4724694d60052665de6b
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

A security vulnerabilities is reported against Apache ActiveMQ 5.12.1 and
older versions

Please check the following document and see if you=E2=80=99re affected

http://activemq.apache.org/security-advisories.data/CVE-2015-5254-announcem=
ent.txt

Apache ActiveMQ 5.13.0 with appropriate fixes is released and available for
upgrade. Please take a look at http://activemq.apache.org/objectmessage.html
and https://issues.apache.org/jira/browse/AMQ-6013 for more details.

Regards
--
Dejan Bosanac
about.me/dejanb

--001a113d4724694d60052665de6b--
