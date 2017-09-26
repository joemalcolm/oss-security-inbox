X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["904" "Tuesday" "26" "September" "2017" "16:55:22" "+0200" "Alex R" "alexr@apache.org" "<CAPNiXbHGAzwC69b4pYbqyF2+kL+EH5HSRBeJaYa4fHtwQSBq2Q@mail.gmail.com>" "33" "[oss-security] CVE-2017-7687: Libprocess might crash when decoding a malformed request." nil nil nil "9" "2017092614:55:22" "[oss-security] CVE-2017-7687: Libprocess might crash when decoding a malformed request." (number mark "U       alexr@apache Sep 26   33/904   " thread-indent "\"[oss-security] CVE-2017-7687: Libprocess might crash when decoding a malformed request.\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25849 invoked by uid 550); 26 Sep 2017 15:08:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1752 invoked from network); 26 Sep 2017 14:55:37 -0000
X-Gm-Message-State: AHPjjUgZFl8e5/uc1FQ4kTF8r3NLN7wRbbDcyNrtsKr1lMh1WIGgsWAF
	zZWS4xXMx0naG/d2ndik4UwJw40sZQ8vnr7Rn+0=
X-Google-Smtp-Source: AOwi7QCr29gcq4JFs26/CaEiBqmQkBmx8xkgEXpquJc8t94osWXLKPU2QZUzcGw0lGG7IItfeRccuUwvSb2aI+bON7w=
X-Received: by 10.159.33.195 with SMTP id 61mr10183004uac.63.1506437722916;
 Tue, 26 Sep 2017 07:55:22 -0700 (PDT)
MIME-Version: 1.0
From: Alex R <alexr@apache.org>
Date: Tue, 26 Sep 2017 16:55:22 +0200
X-Gmail-Original-Message-ID: <CAPNiXbHGAzwC69b4pYbqyF2+kL+EH5HSRBeJaYa4fHtwQSBq2Q@mail.gmail.com>
Message-ID: <CAPNiXbHGAzwC69b4pYbqyF2+kL+EH5HSRBeJaYa4fHtwQSBq2Q@mail.gmail.com>
To: dev <dev@mesos.apache.org>, user <user@mesos.apache.org>, 
	Amon Flair <amon@nandynarwhals.org>, Lyon Yang <lyon.yang.s@gmail.com>, 
	security <security@apache.org>, oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="001a114505a059d00f055a18dd47"
Subject: [oss-security] CVE-2017-7687: Libprocess might crash when decoding a malformed request.

--001a114505a059d00f055a18dd47
Content-Type: text/plain; charset="UTF-8"

Severity: Important

Vendor:
The Apache Software Foundation

Versions Affected:
Apache Mesos 1.1.0 to 1.3.0
The unsupported Apache Mesos 1.0.x as well as 0.x versions may be also
affected.

Description:
When handling a decoding failure for a malformed URL path of an HTTP
request, libprocess might crash because the code accidentally calls
inappropriate function. A malicious actor can therefore cause a denial
of service of Mesos masters rendering the Mesos-controlled cluster
inoperable.

Mitigation:
pre-1.1.x users should upgrade to at least 1.1.3
1.1.x users should upgrade to 1.1.3
1.2.x users should upgrade to 1.2.2
1.3.0 users should upgrade to 1.3.1
1.4.0-dev users should obtain Mesos 1.4.0

Credit:
This issue was discovered by Lyon Yang and Jeremy Heng

Alex on behalf of Mesos PMC.

--001a114505a059d00f055a18dd47--
